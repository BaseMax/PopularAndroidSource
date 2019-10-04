package c.b.a.c.b;

import c.b.a.c.c;
import java.security.MessageDigest;

/* renamed from: c.b.a.c.b.e  reason: case insensitive filesystem */
/* compiled from: DataCacheKey */
public final class C0362e implements c {

    /* renamed from: a  reason: collision with root package name */
    public final c f3962a;

    /* renamed from: b  reason: collision with root package name */
    public final c f3963b;

    public C0362e(c cVar, c cVar2) {
        this.f3962a = cVar;
        this.f3963b = cVar2;
    }

    public void a(MessageDigest messageDigest) {
        this.f3962a.a(messageDigest);
        this.f3963b.a(messageDigest);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C0362e)) {
            return false;
        }
        C0362e eVar = (C0362e) obj;
        if (!this.f3962a.equals(eVar.f3962a) || !this.f3963b.equals(eVar.f3963b)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        return (this.f3962a.hashCode() * 31) + this.f3963b.hashCode();
    }

    public String toString() {
        return "DataCacheKey{sourceKey=" + this.f3962a + ", signature=" + this.f3963b + '}';
    }
}
