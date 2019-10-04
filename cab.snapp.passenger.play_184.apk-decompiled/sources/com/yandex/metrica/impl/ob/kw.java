package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.bv;

public final class kw {

    /* renamed from: a  reason: collision with root package name */
    public final String f6342a;

    /* renamed from: b  reason: collision with root package name */
    public final long f6343b;
    public final long c;

    public static kw a(byte[] bArr) throws d {
        if (bv.a(bArr)) {
            return null;
        }
        return new kw(bArr);
    }

    private kw(byte[] bArr) throws d {
        kc kcVar = (kc) e.a(new kc(), bArr);
        this.f6342a = kcVar.f6207b;
        this.f6343b = kcVar.d;
        this.c = kcVar.c;
    }

    public kw(String str, long j, long j2) {
        this.f6342a = str;
        this.f6343b = j;
        this.c = j2;
    }

    public final byte[] a() {
        kc kcVar = new kc();
        kcVar.f6207b = this.f6342a;
        kcVar.d = this.f6343b;
        kcVar.c = this.c;
        return e.a((e) kcVar);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        kw kwVar = (kw) obj;
        if (this.f6343b == kwVar.f6343b && this.c == kwVar.c) {
            return this.f6342a.equals(kwVar.f6342a);
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f6343b;
        long j2 = this.c;
        return (((this.f6342a.hashCode() * 31) + ((int) (j ^ (j >>> 32)))) * 31) + ((int) (j2 ^ (j2 >>> 32)));
    }

    public final String toString() {
        return "ReferrerInfo{installReferrer='" + this.f6342a + '\'' + ", referrerClickTimestampSeconds=" + this.f6343b + ", installBeginTimestampSeconds=" + this.c + '}';
    }
}
