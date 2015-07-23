package com.intelligrape.linksharing.enums

/**
 * Created by rubinder on 23/7/15.
 */
enum ResourceType {

    DOCUMENT("Document"),
    LINK("Link")

    private final String name

    ResourceType(String name) {
        this.name = name
    }

    String toString() {
        return name
    }

    String getKey() { return name() }

    String getValue() { return name }

    static List<ResourceType> list() {
        return ResourceType.values()
    }

    static ResourceType find(String type) {
        list().find { it.key.equalsIgnoreCase(type) || it.value.equalsIgnoreCase(type) }
    }

}