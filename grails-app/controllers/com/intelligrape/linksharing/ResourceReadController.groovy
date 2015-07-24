package com.intelligrape.linksharing


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ResourceReadController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ResourceRead.list(params), model: [resourceReadInstanceCount: ResourceRead.count()]
    }

    def show(ResourceRead resourceReadInstance) {
        respond resourceReadInstance
    }

    def create() {
        respond new ResourceRead(params)
    }

    @Transactional
    def save(ResourceRead resourceReadInstance) {
        if (resourceReadInstance == null) {
            notFound()
            return
        }

        if (resourceReadInstance.hasErrors()) {
            respond resourceReadInstance.errors, view: 'create'
            return
        }

        resourceReadInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'resourceRead.label', default: 'ResourceRead'), resourceReadInstance.id])
                redirect resourceReadInstance
            }
            '*' { respond resourceReadInstance, [status: CREATED] }
        }
    }

    def edit(ResourceRead resourceReadInstance) {
        respond resourceReadInstance
    }

    @Transactional
    def update(ResourceRead resourceReadInstance) {
        if (resourceReadInstance == null) {
            notFound()
            return
        }

        if (resourceReadInstance.hasErrors()) {
            respond resourceReadInstance.errors, view: 'edit'
            return
        }

        resourceReadInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ResourceRead.label', default: 'ResourceRead'), resourceReadInstance.id])
                redirect resourceReadInstance
            }
            '*' { respond resourceReadInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ResourceRead resourceReadInstance) {

        if (resourceReadInstance == null) {
            notFound()
            return
        }

        resourceReadInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ResourceRead.label', default: 'ResourceRead'), resourceReadInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'resourceRead.label', default: 'ResourceRead'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
