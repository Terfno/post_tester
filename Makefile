INAME:=post-tester
CNAME:=poster

build:
	@docker build -t ${INAME} .

run:
	@docker run --rm -p 3000:3000 --name="${CNAME}" -d ${INAME}

post:
	@curl -X POST http://localhost:3000/ -H "Accept:application/json" -H "Content-type:application/json" --data '{"github":"https://github.com/terfno","Twitter":"https://twitter.com/terfno_mai"}'

logs:
	@docker logs ${CNAME}

stop:
	@docker stop ${CNAME}
