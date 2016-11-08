package sgl_beta

import org.grails.databinding.BindingFormat

class Pagamento {

    Double valorPago
    Pessoa pessoa
    @BindingFormat('dd/MM/yyyy')
    Date dataPagamento
    @BindingFormat('dd/MM/yyyy')
    Date dataVencimento


    static constraints = {
        dataPagamento nullable: false, blank: false
        dataVencimento nullable: false, blank: false
        valorPago min: new Double(1.0), scale: 2
    }

    static mapping = {
        version false
    }

    String toString()
    {
        "${this.valorPago}"
    }


}
