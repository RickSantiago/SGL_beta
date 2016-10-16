package sgl_beta

class Cidade {

    String nome
    Estado estado

    static hasMany = [pessoa:Pessoa]

    static constraints = {
    }

    String toString()
    {
       "${this.nome}"
    }

    static mapping = {
        version false
    }
}
