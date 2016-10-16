package sgl_beta



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoPlanoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoPlano.list(params), model:[tipoPlanoInstanceCount: TipoPlano.count()]
    }

    def show(TipoPlano tipoPlanoInstance) {
        respond tipoPlanoInstance
    }

    def create() {
        respond new TipoPlano(params)
    }

    @Transactional
    def save(TipoPlano tipoPlanoInstance) {
        if (tipoPlanoInstance == null) {
            notFound()
            return
        }

        if (tipoPlanoInstance.hasErrors()) {
            respond tipoPlanoInstance.errors, view:'create'
            return
        }

        tipoPlanoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoPlano.label', default: 'TipoPlano'), tipoPlanoInstance.id])
                redirect tipoPlanoInstance
            }
            '*' { respond tipoPlanoInstance, [status: CREATED] }
        }
    }

    def edit(TipoPlano tipoPlanoInstance) {
        respond tipoPlanoInstance
    }

    @Transactional
    def update(TipoPlano tipoPlanoInstance) {
        if (tipoPlanoInstance == null) {
            notFound()
            return
        }

        if (tipoPlanoInstance.hasErrors()) {
            respond tipoPlanoInstance.errors, view:'edit'
            return
        }

        tipoPlanoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TipoPlano.label', default: 'TipoPlano'), tipoPlanoInstance.id])
                redirect tipoPlanoInstance
            }
            '*'{ respond tipoPlanoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoPlano tipoPlanoInstance) {

        if (tipoPlanoInstance == null) {
            notFound()
            return
        }

        tipoPlanoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TipoPlano.label', default: 'TipoPlano'), tipoPlanoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoPlano.label', default: 'TipoPlano'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
