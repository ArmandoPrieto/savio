package saviowebpage



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MinistryController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Ministry.list(params), model:[ministryInstanceCount: Ministry.count()]
    }

    def show(Ministry ministryInstance) {
        respond ministryInstance
    }

    def create() {
        respond new Ministry(params)
    }

    @Transactional
    def save(Ministry ministryInstance) {
        if (ministryInstance == null) {
            notFound()
            return
        }

        if (ministryInstance.hasErrors()) {
            respond ministryInstance.errors, view:'create'
            return
        }

        ministryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'ministry.label', default: 'Ministry'), ministryInstance.id])
                redirect ministryInstance
            }
            '*' { respond ministryInstance, [status: CREATED] }
        }
    }

    def edit(Ministry ministryInstance) {
        respond ministryInstance
    }

    @Transactional
    def update(Ministry ministryInstance) {
        if (ministryInstance == null) {
            notFound()
            return
        }

        if (ministryInstance.hasErrors()) {
            respond ministryInstance.errors, view:'edit'
            return
        }

        ministryInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Ministry.label', default: 'Ministry'), ministryInstance.id])
                redirect ministryInstance
            }
            '*'{ respond ministryInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Ministry ministryInstance) {

        if (ministryInstance == null) {
            notFound()
            return
        }

        ministryInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Ministry.label', default: 'Ministry'), ministryInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'ministry.label', default: 'Ministry'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
