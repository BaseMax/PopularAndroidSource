package c.e.c.b;

import c.e.a.b.d.d.r;

/* compiled from: com.google.firebase:firebase-common@@16.1.0 */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public final Class<?> f11553a;

    /* renamed from: b  reason: collision with root package name */
    public final int f11554b;

    /* renamed from: c  reason: collision with root package name */
    public final int f11555c;

    public q(Class<?> cls, int i2, int i3) {
        r.a(cls, (Object) "Null dependency anInterface.");
        this.f11553a = cls;
        this.f11554b = i2;
        this.f11555c = i3;
    }

    public static q a(Class<?> cls) {
        return new q(cls, 1, 0);
    }

    public static q b(Class<?> cls) {
        return new q(cls, 2, 0);
    }

    public boolean c() {
        return this.f11554b == 1;
    }

    public boolean d() {
        return this.f11554b == 2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        if (this.f11553a == qVar.f11553a && this.f11554b == qVar.f11554b && this.f11555c == qVar.f11555c) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f11553a.hashCode() ^ 1000003) * 1000003) ^ this.f11554b) * 1000003) ^ this.f11555c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f11553a);
        sb.append(", type=");
        int i2 = this.f11554b;
        boolean z = true;
        sb.append(i2 == 1 ? "required" : i2 == 0 ? "optional" : "set");
        sb.append(", direct=");
        if (this.f11555c != 0) {
            z = false;
        }
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }

    public Class<?> a() {
        return this.f11553a;
    }

    public boolean b() {
        return this.f11555c == 0;
    }
}
