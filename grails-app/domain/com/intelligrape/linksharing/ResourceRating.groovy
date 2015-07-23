package com.intelligrape.linksharing

class ResourceRating {

    User user
    Resource resource
    Integer score
    static belongsTo = [user : User, resource : Resource]
    static constraints = {
        user blank: false, nullable: false, unique: 'resource'
        resource blank: false, nullable: false
        score blank: false, nullable: false, range: 1..5
    }
}
