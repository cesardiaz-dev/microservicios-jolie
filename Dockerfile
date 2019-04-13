FROM jolielang/jolie
COPY HelloWorldService.ol .
CMD [ "jolie", "HelloWorldService.ol"]
