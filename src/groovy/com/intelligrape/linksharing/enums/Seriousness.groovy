package com.intelligrape.linksharing.enums

/**
 * Created by rubinder on 23/7/15.
 */
enum Seriousness {

    SERIOUS("Serious"),
    CASUAL("Casual"),
    VERY_SERIOUS("Very Serious")

    private final String name

    Seriousness(String name) {
        this.name = name
    }

    String toString() {
        return name
    }

    String getKey() { return name() }

    String getValue() { return name }

    static List<Seriousness> list() {
        return Seriousness.values()
    }

    static Seriousness find(String type) {
        list().find { it.key.equalsIgnoreCase(type) || it.value.equalsIgnoreCase(type) }
    }


}