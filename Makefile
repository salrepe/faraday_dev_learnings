build:
	docker build --tag demo .

server: build
	docker run -p 80:4567 demo

client: build
	docker run --network="host" -it demo ruby faraday.rb
