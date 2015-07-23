package com.intelligrape.linksharing

class LinkResource extends Resource {

    String url

    static constraints = {
        url blank: false, nullable: false
    }
}
