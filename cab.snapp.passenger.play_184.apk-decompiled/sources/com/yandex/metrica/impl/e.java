package com.yandex.metrica.impl;

import com.yandex.metrica.impl.ob.oj;
import com.yandex.metrica.impl.ob.om;
import com.yandex.metrica.impl.ob.op;
import com.yandex.metrica.impl.ob.oq;
import com.yandex.metrica.impl.ob.os;
import com.yandex.metrica.impl.s;
import java.util.HashMap;

public class e extends i {
    private final HashMap<a, Integer> f;
    private final os<String> g;
    private final os<String> h;
    private final os<byte[]> i;
    private final os<String> j;
    private final os<String> k;

    enum a {
        NAME,
        VALUE,
        USER_INFO
    }

    public e() {
        this.f = new HashMap<>();
        this.g = new oq(1000, "event name");
        this.h = new op(245760, "event value");
        this.i = new oj(245760, "event value bytes");
        this.j = new oq(200, "user profile id");
        this.k = new oq(io.fabric.sdk.android.services.common.a.DEFAULT_TIMEOUT, "UserInfo");
    }

    public e(String str, int i2) {
        this("", str, i2);
    }

    public e(String str, String str2, int i2) {
        this(str, str2, i2, 0);
    }

    public e(String str, String str2, int i2, int i3) {
        this.f = new HashMap<>();
        this.g = new oq(1000, "event name");
        this.h = new op(245760, "event value");
        this.i = new oj(245760, "event value bytes");
        this.j = new oq(200, "user profile id");
        this.k = new oq(io.fabric.sdk.android.services.common.a.DEFAULT_TIMEOUT, "UserInfo");
        this.f5828b = j(str);
        this.f5827a = i(str2);
        this.c = i2;
        this.d = i3;
    }

    private void a(String str, String str2, a aVar) {
        if (om.a(str, str2)) {
            this.f.put(aVar, Integer.valueOf(bt.c(str).length - bt.c(str2).length));
        } else {
            this.f.remove(aVar);
        }
        x();
    }

    private void x() {
        this.e = 0;
        for (Integer intValue : this.f.values()) {
            this.e += intValue.intValue();
        }
    }

    private String i(String str) {
        String a2 = this.g.a(str);
        a(str, a2, a.NAME);
        return a2;
    }

    private String j(String str) {
        String a2 = this.h.a(str);
        a(str, a2, a.VALUE);
        return a2;
    }

    public i a(String str) {
        String a2 = this.k.a(str);
        a(str, a2, a.USER_INFO);
        return super.a(a2);
    }

    public i b(String str) {
        return super.b(i(str));
    }

    public i c(String str) {
        return super.c(j(str));
    }

    public i d(String str) {
        return super.d(this.j.a(str));
    }

    public static i a() {
        return new i().a(s.a.EVENT_TYPE_SEND_USER_PROFILE.a());
    }

    public i a(byte[] bArr) {
        byte[] a2 = this.i.a(bArr);
        a aVar = a.VALUE;
        if (bArr.length != a2.length) {
            this.f.put(aVar, Integer.valueOf(bArr.length - a2.length));
        } else {
            this.f.remove(aVar);
        }
        x();
        return super.a(a2);
    }
}
