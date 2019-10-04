package com.yandex.metrica.impl;

import java.util.List;
import java.util.Map;
import org.a.c;

public class p implements ap {

    /* renamed from: a  reason: collision with root package name */
    private final a f6513a;

    static class a {

        /* renamed from: com.yandex.metrica.impl.p$a$a  reason: collision with other inner class name */
        static class C0122a {

            /* renamed from: a  reason: collision with root package name */
            final String f6514a;

            public C0122a(String str) {
                this.f6514a = str;
            }
        }

        a() {
        }

        public C0122a a(byte[] bArr) {
            try {
                if (!bv.a(bArr)) {
                    return new C0122a(new c(new String(bArr, "UTF-8")).optString("status"));
                }
                return null;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    public p() {
        this(new a());
    }

    p(a aVar) {
        this.f6513a = aVar;
    }

    public boolean a(int i, byte[] bArr, Map<String, List<String>> map) {
        if (200 == i) {
            a.C0122a a2 = this.f6513a.a(bArr);
            if (a2 != null) {
                return "accepted".equals(a2.f6514a);
            }
        }
        return false;
    }
}
