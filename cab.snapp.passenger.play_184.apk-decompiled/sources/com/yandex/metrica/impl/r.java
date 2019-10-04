package com.yandex.metrica.impl;

import com.yandex.metrica.impl.ob.oo;
import java.util.HashMap;
import java.util.Map;
import org.a.c;

public class r {

    /* renamed from: a  reason: collision with root package name */
    private Map<String, String> f6515a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private oo f6516b;

    r(oo ooVar) {
        this.f6516b = ooVar;
    }

    /* access modifiers changed from: package-private */
    public void a(String str, String str2) {
        if (str2 == null) {
            this.f6515a.remove(str);
        } else {
            this.f6516b.a(this.f6515a, str, str2);
        }
    }

    /* access modifiers changed from: package-private */
    public String a() {
        if (this.f6515a.isEmpty()) {
            return null;
        }
        return new c((Map<?, ?>) this.f6515a).toString();
    }
}
