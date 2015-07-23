package com.intelligrape.linksharing

import org.apache.commons.lang.StringUtils

class User {

    String email
    String username
    String password
    String confirmPassword
    String firstName
    String lastName
    Boolean active
    Boolean admin
    Date dateCreated
    Date lastUpdated
    static hasMany = [topics : Topic, subscriptions : Subscription,reads : ResourceRead, resourceRatings : ResourceRating]
    static transients = ['confirmPassword']

    static constraints = {
        email blank: false, nullable: false, email: true, unique: true
        username blank: false, nullable: false, size: 8..16, unique: true
        password blank: false, nullable: false, size: 8..16, validator: { password, obj ->
            if(password)
            {
                if(!StringUtils.isAlphanumeric(password)) {
                    return false
                }
                if(!password.equals(confirmPassword)){
                    return false
                }
            }
        }
        firstName blank: false, nullable: false
        lastName blank: false, nullable: false
    }
}
