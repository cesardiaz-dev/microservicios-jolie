include "console.iol"

execution { concurrent }

type SaludoRequest: void {
    .nombre:string
}

interface SaludoInterface {
    RequestResponse: saludo(SaludoRequest)(string)
}

inputPort MyInput {
    Location: "socket://localhost:8081/"
    Protocol: http {
        .method = "get";
        .format = "raw"
    }
    Interfaces: SaludoInterface
}

main {
    [saludo( request )( response ) {
        response = "Hola " + request.nombre + "!"
    }] {
        println@Console( response )()
    }
}