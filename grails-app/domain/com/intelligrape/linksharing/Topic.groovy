package com.intelligrape.linksharing

import com.intelligrape.linksharing.enums.Visibility

class Topic {

    String topicName
    String topicDescription
    Visibility visibility
    Date dateCreated
    Date lastUpdated
    static belongsTo = [user:User]
    static hasMany = [subscriptions : Subscription,resources : Resource]

    static constraints = {
        topicName blank: false, nullable: false, unique: 'user'
        topicDescription blank: true, nullable: true
        visibility blank: false, nullable: false
    }

    static mapping = {
        topicDescription sqlType: "text"
    }
}
