package com.karumi.dexter.listener;

public final class PermissionRequest {
    private final String name;

    public PermissionRequest(String str) {
        this.name = str;
    }

    public final String getName() {
        return this.name;
    }

    public final String toString() {
        return "Permission name: " + this.name;
    }
}
