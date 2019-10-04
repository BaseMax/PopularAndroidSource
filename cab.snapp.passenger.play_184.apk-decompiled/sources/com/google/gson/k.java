package com.google.gson;

public final class k extends JsonElement {
    public static final k INSTANCE = new k();

    public final k deepCopy() {
        return INSTANCE;
    }

    public final int hashCode() {
        return k.class.hashCode();
    }

    public final boolean equals(Object obj) {
        return this == obj || (obj instanceof k);
    }
}
