package c.b.a.c;

import b.f.C0243b;
import c.b.a.i.b;
import java.security.MessageDigest;

/* compiled from: Options */
public final class f implements c {

    /* renamed from: a  reason: collision with root package name */
    public final C0243b<e<?>, Object> f4278a = new b();

    public void a(f fVar) {
        this.f4278a.a(fVar.f4278a);
    }

    public boolean equals(Object obj) {
        if (obj instanceof f) {
            return this.f4278a.equals(((f) obj).f4278a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4278a.hashCode();
    }

    public String toString() {
        return "Options{values=" + this.f4278a + '}';
    }

    public <T> f a(e<T> eVar, T t) {
        this.f4278a.put(eVar, t);
        return this;
    }

    public <T> T a(e<T> eVar) {
        return this.f4278a.containsKey(eVar) ? this.f4278a.get(eVar) : eVar.b();
    }

    public void a(MessageDigest messageDigest) {
        for (int i2 = 0; i2 < this.f4278a.size(); i2++) {
            a(this.f4278a.c(i2), this.f4278a.e(i2), messageDigest);
        }
    }

    public static <T> void a(e<T> eVar, Object obj, MessageDigest messageDigest) {
        eVar.a(obj, messageDigest);
    }
}
