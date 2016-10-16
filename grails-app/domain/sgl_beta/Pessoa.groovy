package sgl_beta

class Pessoa {

    String nome
    String cpf
    String rg
    String email
    String telefone
    Date dataNascimento
    String logradouro
    String bairro
    String complemento
    Integer numero

    Plano plano

    static hasMany = [pagamento:Pagamento]

    static constraints = {
        email email: true
        cpf nullable: false, blank: false
        rg nullable: false, blank: false
        dataNascimento nullable: true, blank: true
        logradouro nullable: false, blank: false
        bairro nullable: true, blank: false
        complemento nullable: true, blank: true
        numero nullable: true, blank: true

    }
    static mapping = {
//        plano column: "plano_id"
//        pagamento column: "pagamento_id"
        version false
    }

    String toString()
    {
        "${this.nome}"
    }
}
