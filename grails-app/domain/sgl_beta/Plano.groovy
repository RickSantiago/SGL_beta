package sgl_beta

class Plano {

    Date dataInicio
    String codigoPlano
    Float valorPlanoMensal
    Float valorPlanoAnual
    TipoPlano tpPlano

    static hasMany = [pessoa:Pessoa]

    static belongsTo = [TipoPlano]

    static constraints = {
        valorPlanoMensal min: new Float(1.0f)
        valorPlanoAnual min: new Float(1.0f)
        codigoPlano nullable: false, blank: false
    }

    static mapping = {
        version false
    }

    String toString()
    {
        "${this.codigoPlano}"
    }
}
