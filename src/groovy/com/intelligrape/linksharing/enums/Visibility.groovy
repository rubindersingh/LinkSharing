package com.intelligrape.linksharing.enums

/**
 * Created by rubinder on 23/7/15.
 */
enum Visibility {

    PUBLIC("Public"),
    PRIVATE("Private")

    private final String name

    Visibility(String name) {
        this.name = name
    }

    String toString() {
        return name
    }

    String getKey() { return name() }

    String getValue() { return name }

    static List<Visibility> list() {
        return Visibility.values()
    }

    static Visibility find(String type) {
        list().find { it.key.equalsIgnoreCase(type) || it.value.equalsIgnoreCase(type) }
    }


}