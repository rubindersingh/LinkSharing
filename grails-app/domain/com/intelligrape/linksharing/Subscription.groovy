package com.intelligrape.linksharing

import com.intelligrape.linksharing.enums.Seriousness


class Subscription {
    User user
    Topic topic
    Seriousness seriousness
    Date dateCreated
    Date lastUpdated
    static belongsTo = [user : User, topic : Topic]

    static constraints = {
        user blank: false, nullable: false, unique: 'topic'
        topic blank: false, nullable: false
        seriousness blank: false, nullable: false
    }
}
