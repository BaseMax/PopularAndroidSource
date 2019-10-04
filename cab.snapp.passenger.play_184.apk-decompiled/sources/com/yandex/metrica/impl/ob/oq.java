package com.yandex.metrica.impl.ob;

public class oq extends oi<String> {
    public /* bridge */ /* synthetic */ int a() {
        return super.a();
    }

    public /* bridge */ /* synthetic */ String b() {
        return super.b();
    }

    public oq(int i, String str) {
        super(i, str);
    }

    public String a(String str) {
        if (str == null || str.length() <= a()) {
            return str;
        }
        String substring = str.substring(0, a());
        if (nk.f().b()) {
            nk.f().b("\"%s\" %s size exceeded limit of %d characters", b(), str, Integer.valueOf(a()));
        }
        return substring;
    }
}
