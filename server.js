/**
 * Simple Static Server for FINDY
 * ====================================
 * Usage: node server.js
 * Access: http://localhost:3000
 */

const http = require('http');
const fs = require('fs');
const path = require('path');

const PORT = process.env.PORT || 3000;
const MIME_TYPES = {
    '.html': 'text/html',
    '.css': 'text/css',
    '.js': 'application/javascript',
    '.json': 'application/json',
    '.ttf': 'font/ttf',
    '.svg': 'image/svg+xml',
    '.png': 'image/png',
    '.jpg': 'image/jpeg',
    '.gif': 'image/gif',
    '.ico': 'image/x-icon'
};

const server = http.createServer((req, res) => {
    let filePath = path.join(__dirname, req.url);

    // Default to index.html for root
    if (filePath.endsWith('/')) {
        filePath = path.join(filePath, 'index.html');
    }

    const ext = path.extname(filePath);
    const contentType = MIME_TYPES[ext] || 'application/octet-stream';

    fs.readFile(filePath, (err, content) => {
        if (err) {
            // File not found
            res.writeHead(404, { 'Content-Type': 'text/html' });
            res.end('<h1>404 - Page Not Found</h1><p>The requested resource was not found.</p>', 'utf-8');
        } else {
            // File found
            res.writeHead(200, {
                'Content-Type': contentType,
                'Cache-Control': 'public, max-age=3600',
                'X-UA-Compatible': 'IE=edge',
                'X-Frame-Options': 'SAMEORIGIN',
                'X-Content-Type-Options': 'nosniff',
                'X-XSS-Protection': '1; mode=block'
            });
            res.end(content, 'utf-8');
        }
    });
});

server.listen(PORT, () => {
    console.log(`
    ╔════════════════════════════════════════╗
    ║    FINDY - Development Server          ║
    ║    Server running at:                  ║
    ║    http://localhost:${PORT}                  ║
    ║                                        ║
    ║    Press Ctrl+C to stop               ║
    ╚════════════════════════════════════════╝
    `);
});
