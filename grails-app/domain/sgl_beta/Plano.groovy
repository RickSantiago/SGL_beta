package sgl_beta

import org.grails.databinding.BindingFormat

class Plano {

    String codigoPlano
    Double valorPlanoMensal
    Double valorPlanoAnual
    TipoPlano tpPlano
    @BindingFormat('dd/MM/yyyy')
    Date dataInicio

    static hasMany = [pessoa:Pessoa]

    static belongsTo = [TipoPlano]

    static constraints = {
        codigoPlano nullable: false, blank: false
        valorPlanoAnual scale: 2, min: new Double(1.0)
        valorPlanoMensal scale: 2, min: new Double(1.0)
    }

    static mapping = {
        version false
    }

    String toString()
    {
        "${this.codigoPlano}"
    }
}
