package com.intelligrape.linksharing

import com.intelligrape.linksharing.enums.ResourceType

class Resource {

    String summary
    ResourceType resourceType
    Date dateCreated
    Date lastUpdated
    static belongsTo = [topic : Topic]
    static hasMany = [reads : ResourceRead, resourceRatings : ResourceRating]

    static constraints = {
        summary blank: false, nullable: false
        resourceType blank: false, nullable: false
    }

    static mapping = {
        summary sqlType: "text"
    }
}
