package com.intelligrape.linksharing

import com.intelligrape.linksharing.co.RegisterCO
import org.springframework.web.servlet.ModelAndView

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional


class UserController {

    def userService

    def index() {
        Map model=getChainModel()?:[registerCO: new RegisterCO()]
        render view: "index", model: model
    }

    def login() {

    }

    def register(RegisterCO registerCO) {
        if(!registerCO.validate())
        {
            chain(action: "index",model: [registerCO:registerCO])
        }
        try {
            User user = userService.register(registerCO)
            String successMessage = "You are successfully registered. Please Login"
            chain(action: "index",model: [registerCO:new RegisterCO(),successMessage : successMessage ])
        }
        catch (Exception e)
        {
            String failMessage = "Something went wrong"
            chain(action: "index",model: [registerCO:registerCO, failMessage : failMessage])
        }


    }

    def profile(User user)
    {
        return new ModelAndView("profile", [ user : user ])
    }


    def show(User userInstance) {
        respond userInstance
    }

    def create() {
        respond new User(params)
    }

    @Transactional
    def save(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'create'
            return
        }

        userInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: CREATED] }
        }
    }

    def edit(User userInstance) {
        respond userInstance
    }

    @Transactional
    def update(User userInstance) {
        if (userInstance == null) {
            notFound()
            return
        }

        if (userInstance.hasErrors()) {
            respond userInstance.errors, view: 'edit'
            return
        }

        userInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect userInstance
            }
            '*' { respond userInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(User userInstance) {

        if (userInstance == null) {
            notFound()
            return
        }

        userInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'User.label', default: 'User'), userInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
