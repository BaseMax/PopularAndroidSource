package com.a.a.c;

public final class am {
    public static final am EMPTY = new am();
    public final String email;
    public final String id;
    public final String name;

    public am() {
        this(null, null, null);
    }

    public am(String str, String str2, String str3) {
        this.id = str;
        this.name = str2;
        this.email = str3;
    }

    public final boolean isEmpty() {
        return this.id == null && this.name == null && this.email == null;
    }
}
