package com.yandex.metrica.impl.ob;

public class jo implements pa<String> {
    public oy a(String str) {
        if (str == null) {
            return oy.a(this, "key is null");
        }
        if (str.startsWith("appmetrica")) {
            return oy.a(this, "key starts with appmetrica");
        }
        if (str.length() > 200) {
            return oy.a(this, "key length more then 200 characters");
        }
        return oy.a(this);
    }
}
