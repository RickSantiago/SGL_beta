package sgl_beta

class Endereco {

    String logradouro
    String bairro
    String complemento
    String cep
//    Cidade cidade
//    Pessoa pessoa

    static constraints = {
        logradouro nullable: false, blank: false
        bairro nullable: true, blank: false
        complemento nullable: true, blank: true
        cep nullable: true, blank: true
    }

    String toString()
    {
        "${this.logradouro}"
    }
}
