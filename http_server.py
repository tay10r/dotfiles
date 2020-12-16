#!/usr/bin/python3

from http.server import HTTPServer, BaseHTTPRequestHandler

class MyHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        self.wfile.write('<html><body><p>OK</p></body></html>')
    def log_message(self, format, *args):
        return

httpd = HTTPServer(('', 8000), MyHandler)

httpd.serve_forever()
