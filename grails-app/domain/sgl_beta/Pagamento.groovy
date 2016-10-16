package sgl_beta

class Pagamento {

    Date dataPagamento
    Date dataVencimento
    Float valorPago
    Pessoa pessoa

    static constraints = {
        dataPagamento nullable: false, blank: false
        dataVencimento nullable: false, blank: false
        valorPago min: new Float(1.0f)
    }

    static mapping = {
        version false
    }


}
