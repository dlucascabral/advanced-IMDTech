const http = require('http');
const fs = require('fs');

const server = http.createServer((req, res) => {
    if (req.url == '/' && req.method == 'GET') {
        var arquivoHtml = './index.html';
        lerHtml(res, arquivoHtml, 200);
    }
    else {
        var arquivoHtml = './404.html';
        lerHtml(res, arquivoHtml, 404)
    }
});

server.listen(8080, () => {
    console.log("Servidor pronto na porta 8080");
});

function lerHtml(res, arquivo, responseCode) {
    fs.readFile(arquivo, { encoding: 'utf-8', flag: 'r' }, function (err, data) {
        if (!err) {
            res.writeHead(responseCode, {
                'Content-Type': "text/html"
            });
            res.write(data);
            res.end();
        }
    });
}

