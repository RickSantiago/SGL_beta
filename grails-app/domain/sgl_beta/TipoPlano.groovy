package sgl_beta

class TipoPlano {

    String nome
    Integer qtdDependentes

    static hasMany = [plano:Plano]

    static constraints = {
        nome inList: ["Plano A","Plano B","Plano Pula-Pula","Plano Evangelico"]
        qtdDependentes nullable: true, blank: true, max: 10
    }
    static mapping = {
        version false
    }

    String toString()
    {
        "${this.nome}"
    }
}
