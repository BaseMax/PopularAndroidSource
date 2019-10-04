package com.yandex.metrica.impl.ob;

public enum en {
    FOREGROUND(0),
    BACKGROUND(1);
    
    private final int c;

    private en(int i) {
        this.c = i;
    }

    public final int a() {
        return this.c;
    }

    public static en a(Integer num) {
        en enVar = FOREGROUND;
        if (num == null) {
            return enVar;
        }
        int intValue = num.intValue();
        if (intValue == 0) {
            return FOREGROUND;
        }
        if (intValue != 1) {
            return enVar;
        }
        return BACKGROUND;
    }
}
