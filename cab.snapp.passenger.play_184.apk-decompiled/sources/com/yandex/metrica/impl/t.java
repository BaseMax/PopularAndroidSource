package com.yandex.metrica.impl;

public enum t {
    UNKNOWN(0),
    FIRST_OCCURRENCE(1),
    NON_FIRST_OCCURENCE(2);
    
    public final int d;

    private t(int i) {
        this.d = i;
    }

    public static t a(Integer num) {
        if (num != null) {
            for (t tVar : values()) {
                if (tVar.d == num.intValue()) {
                    return tVar;
                }
            }
        }
        return UNKNOWN;
    }
}
