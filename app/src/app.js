import http from "http"

const server = http.createServer((request, response) => {
    console.log('somebody make a request')
    response.end('response for you! hello word')
})

const connectedServer = server.listen(8080, () => {
    console.log('Server up')
})