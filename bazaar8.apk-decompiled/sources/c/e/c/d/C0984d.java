package c.e.c.d;

import android.util.Base64;
import c.e.a.b.d.d.C0794q;
import java.security.KeyPair;

/* renamed from: c.e.c.d.d  reason: case insensitive filesystem */
public final class C0984d {

    /* renamed from: a  reason: collision with root package name */
    public final KeyPair f11640a;

    /* renamed from: b  reason: collision with root package name */
    public final long f11641b;

    public C0984d(KeyPair keyPair, long j2) {
        this.f11640a = keyPair;
        this.f11641b = j2;
    }

    public final KeyPair a() {
        return this.f11640a;
    }

    public final String b() {
        return Base64.encodeToString(this.f11640a.getPublic().getEncoded(), 11);
    }

    public final String c() {
        return Base64.encodeToString(this.f11640a.getPrivate().getEncoded(), 11);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0984d)) {
            return false;
        }
        C0984d dVar = (C0984d) obj;
        if (this.f11641b != dVar.f11641b || !this.f11640a.getPublic().equals(dVar.f11640a.getPublic()) || !this.f11640a.getPrivate().equals(dVar.f11640a.getPrivate())) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return C0794q.a(this.f11640a.getPublic(), this.f11640a.getPrivate(), Long.valueOf(this.f11641b));
    }
}
