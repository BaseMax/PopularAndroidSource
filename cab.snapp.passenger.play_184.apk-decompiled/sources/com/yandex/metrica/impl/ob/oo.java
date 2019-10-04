package com.yandex.metrica.impl.ob;

import java.util.Map;

public class oo {

    /* renamed from: a  reason: collision with root package name */
    private final on f6485a;

    public oo(on onVar) {
        this.f6485a = onVar;
    }

    public void a(Map<String, String> map, String str, String str2) {
        if (map != null) {
            String a2 = this.f6485a.a().a(str);
            if (map.size() < this.f6485a.c().a() || map.containsKey(a2)) {
                map.put(a2, this.f6485a.b().a(str2));
            } else {
                this.f6485a.a(a2);
            }
        }
    }
}
