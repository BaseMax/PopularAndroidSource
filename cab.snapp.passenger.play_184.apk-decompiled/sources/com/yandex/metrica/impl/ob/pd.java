package com.yandex.metrica.impl.ob;

class pd implements pa<Integer> {
    pd() {
    }

    public oy a(Integer num) {
        if (num == null || num.intValue() > 0) {
            return oy.a(this);
        }
        return oy.a(this, "Invalid quantity value ".concat(String.valueOf(num)));
    }
}
