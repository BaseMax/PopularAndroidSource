package c.b.a.h;

import c.b.a.c.c;
import c.b.a.i.i;
import java.security.MessageDigest;

/* compiled from: ObjectKey */
public final class b implements c {

    /* renamed from: a  reason: collision with root package name */
    public final Object f4411a;

    public b(Object obj) {
        i.a(obj);
        this.f4411a = obj;
    }

    public void a(MessageDigest messageDigest) {
        messageDigest.update(this.f4411a.toString().getBytes(c.f4046a));
    }

    public boolean equals(Object obj) {
        if (obj instanceof b) {
            return this.f4411a.equals(((b) obj).f4411a);
        }
        return false;
    }

    public int hashCode() {
        return this.f4411a.hashCode();
    }

    public String toString() {
        return "ObjectKey{object=" + this.f4411a + '}';
    }
}
