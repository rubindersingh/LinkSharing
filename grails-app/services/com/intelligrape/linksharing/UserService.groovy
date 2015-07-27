package com.intelligrape.linksharing

import com.intelligrape.linksharing.co.RegisterCO
import grails.transaction.Transactional
import grails.validation.ValidationException


class UserService {

    static Transactional = false

    @Transactional
    def register(RegisterCO registerCO) {
        try
        {
            def user = new User()
            user.firstName = registerCO.firstName
            user.lastName = registerCO.lastName
            user.email = registerCO.email
            user.username = registerCO.username
            user.password = registerCO.password
            user.confirmPassword = registerCO.confirmPassword
            user.active = true
            user.admin = false
            user.save(failOnError: true)
            return;
        }
        catch (Exception e)
        {
            throw e;
        }
    }
}
