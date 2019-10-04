package com.yandex.metrica.impl.ob;

public enum oe {
    NONE(0),
    EXTERNALLY_ENCRYPTED_EVENT_CRYPTER(1),
    AES_VALUE_ENCRYPTION(2);
    
    private final int d;

    private oe(int i) {
        this.d = i;
    }

    public final int a() {
        return this.d;
    }

    public static oe a(int i) {
        for (oe oeVar : values()) {
            if (oeVar.a() == i) {
                return oeVar;
            }
        }
        return null;
    }
}
