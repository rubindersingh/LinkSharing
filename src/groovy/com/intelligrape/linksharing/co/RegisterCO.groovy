package com.intelligrape.linksharing.co

import grails.validation.Validateable
import org.apache.commons.lang.StringUtils
import org.springframework.web.multipart.MultipartFile

/**
 * Created by rubinder on 24/7/15.
 */
@Validateable
class RegisterCO {

    String firstName
    String lastName
    String email
    String username
    String password
    String confirmPassword
    MultipartFile photo

    static constraints = {
        email blank: false, nullable: false, email: true, unique: true
        username blank: false, nullable: false, size: 8..16, unique: true
        password blank: false, nullable: false, size: 8..16, validator: { password, obj ->
            if(password)
            {
                if(!StringUtils.isAlphanumeric(password)) {
                    return false
                }
                if(!password.equals(obj.confirmPassword)){
                    return false
                }
            }
        }
        firstName blank: false, nullable: false
        lastName blank: false, nullable: false
    }
}
