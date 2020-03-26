const http = require('http');

const randomNumber = () => {
	return `Your random number is ${Math.floor(Math.random() * 10)}`;
}

const handleRequest = (request, response) => {
	console.log(`Request for: ${request.url}`);
	response.writeHead(200);
	response.end(randomNumber());
};

const server = http.createServer(handleRequest);
server.listen(8080);

