package com.yandex.metrica.impl.ob;

import org.a.b;
import org.a.c;

public final class hk {

    /* renamed from: a  reason: collision with root package name */
    private final String f6109a;

    /* renamed from: b  reason: collision with root package name */
    private final int f6110b;
    private final boolean c;

    public hk(c cVar) throws b {
        this.f6109a = cVar.getString("name");
        this.c = cVar.getBoolean("required");
        this.f6110b = cVar.optInt("version", -1);
    }

    public hk(String str, int i, boolean z) {
        this.f6109a = str;
        this.f6110b = i;
        this.c = z;
    }

    public hk(String str, boolean z) {
        this(str, -1, z);
    }

    public final c a() throws b {
        c put = new c().put("name", (Object) this.f6109a).put("required", this.c);
        int i = this.f6110b;
        if (i != -1) {
            put.put("version", i);
        }
        return put;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            hk hkVar = (hk) obj;
            if (this.f6110b != hkVar.f6110b || this.c != hkVar.c) {
                return false;
            }
            String str = this.f6109a;
            String str2 = hkVar.f6109a;
            if (str != null) {
                return str.equals(str2);
            }
            if (str2 == null) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f6109a;
        return ((((str != null ? str.hashCode() : 0) * 31) + this.f6110b) * 31) + (this.c ? 1 : 0);
    }
}
