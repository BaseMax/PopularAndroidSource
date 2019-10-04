package c.b.a.c;

import c.b.a.i.i;
import java.security.MessageDigest;

/* compiled from: Option */
public final class e<T> {

    /* renamed from: a  reason: collision with root package name */
    public static final a<Object> f4273a = new d();

    /* renamed from: b  reason: collision with root package name */
    public final T f4274b;

    /* renamed from: c  reason: collision with root package name */
    public final a<T> f4275c;

    /* renamed from: d  reason: collision with root package name */
    public final String f4276d;

    /* renamed from: e  reason: collision with root package name */
    public volatile byte[] f4277e;

    /* compiled from: Option */
    public interface a<T> {
        void a(byte[] bArr, T t, MessageDigest messageDigest);
    }

    public e(String str, T t, a<T> aVar) {
        i.a(str);
        this.f4276d = str;
        this.f4274b = t;
        i.a(aVar);
        this.f4275c = aVar;
    }

    public static <T> e<T> a(String str) {
        return new e<>(str, null, a());
    }

    public T b() {
        return this.f4274b;
    }

    public final byte[] c() {
        if (this.f4277e == null) {
            this.f4277e = this.f4276d.getBytes(c.f4046a);
        }
        return this.f4277e;
    }

    public boolean equals(Object obj) {
        if (obj instanceof e) {
            return this.f4276d.equals(((e) obj).f4276d);
        }
        return false;
    }

    public int hashCode() {
        return this.f4276d.hashCode();
    }

    public String toString() {
        return "Option{key='" + this.f4276d + '\'' + '}';
    }

    public static <T> e<T> a(String str, T t) {
        return new e<>(str, t, a());
    }

    public static <T> e<T> a(String str, T t, a<T> aVar) {
        return new e<>(str, t, aVar);
    }

    public void a(T t, MessageDigest messageDigest) {
        this.f4275c.a(c(), t, messageDigest);
    }

    public static <T> a<T> a() {
        return f4273a;
    }
}
