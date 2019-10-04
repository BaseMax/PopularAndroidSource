package com.yandex.metrica.impl.ob;

import io.fabric.sdk.android.services.b.b;

public class z {

    /* renamed from: a  reason: collision with root package name */
    private final String f6511a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6512b;
    private ml c;

    public z(String str, String str2) {
        this(str, str2, new mk());
    }

    protected z(String str, String str2, ml mlVar) {
        this.f6511a = str;
        this.f6512b = str2;
        this.c = mlVar;
    }

    public String a() {
        return this.f6512b;
    }

    public String b() {
        return this.f6511a;
    }

    public ml c() {
        return this.c;
    }

    public String toString() {
        return this.f6511a + b.ROLL_OVER_FILE_NAME_SEPARATOR + this.f6512b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            z zVar = (z) obj;
            String str = this.f6511a;
            if (str == null ? zVar.f6511a != null : !str.equals(zVar.f6511a)) {
                return false;
            }
            String str2 = this.f6512b;
            String str3 = zVar.f6512b;
            if (str2 != null) {
                return str2.equals(str3);
            }
            if (str3 == null) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.f6511a;
        int i = 0;
        int hashCode = (str != null ? str.hashCode() : 0) * 31;
        String str2 = this.f6512b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return hashCode + i;
    }
}
