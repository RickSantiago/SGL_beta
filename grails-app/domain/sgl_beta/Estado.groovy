package sgl_beta

class Estado {

    String nome
    String uf

    static hasMany = [cidade:Cidade]

    static constraints = {
    }

    static mapping = {
        version false
    }

    String toString()
    {
        "${this.nome}"
    }
}
