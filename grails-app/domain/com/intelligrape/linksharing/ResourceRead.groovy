package com.intelligrape.linksharing

class ResourceRead {

    User user
    Resource resource
    Boolean isRead
    static belongsTo = [user : User, resource : Resource]

    static constraints = {
        user blank: false, nullable: false, unique: 'resource'
        resource blank: false, nullable: false
        isRead blank: false, nullable: false
    }
}
