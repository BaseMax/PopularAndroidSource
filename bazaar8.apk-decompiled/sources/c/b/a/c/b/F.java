package c.b.a.c.b;

import c.b.a.c.b.a.b;
import c.b.a.c.c;
import c.b.a.c.i;
import c.b.a.i.f;
import c.b.a.i.k;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* compiled from: ResourceCacheKey */
public final class F implements c {

    /* renamed from: a  reason: collision with root package name */
    public static final f<Class<?>, byte[]> f3826a = new f<>(50);

    /* renamed from: b  reason: collision with root package name */
    public final b f3827b;

    /* renamed from: c  reason: collision with root package name */
    public final c f3828c;

    /* renamed from: d  reason: collision with root package name */
    public final c f3829d;

    /* renamed from: e  reason: collision with root package name */
    public final int f3830e;

    /* renamed from: f  reason: collision with root package name */
    public final int f3831f;

    /* renamed from: g  reason: collision with root package name */
    public final Class<?> f3832g;

    /* renamed from: h  reason: collision with root package name */
    public final c.b.a.c.f f3833h;

    /* renamed from: i  reason: collision with root package name */
    public final i<?> f3834i;

    public F(b bVar, c cVar, c cVar2, int i2, int i3, i<?> iVar, Class<?> cls, c.b.a.c.f fVar) {
        this.f3827b = bVar;
        this.f3828c = cVar;
        this.f3829d = cVar2;
        this.f3830e = i2;
        this.f3831f = i3;
        this.f3834i = iVar;
        this.f3832g = cls;
        this.f3833h = fVar;
    }

    public void a(MessageDigest messageDigest) {
        byte[] bArr = (byte[]) this.f3827b.a(8, byte[].class);
        ByteBuffer.wrap(bArr).putInt(this.f3830e).putInt(this.f3831f).array();
        this.f3829d.a(messageDigest);
        this.f3828c.a(messageDigest);
        messageDigest.update(bArr);
        i<?> iVar = this.f3834i;
        if (iVar != null) {
            iVar.a(messageDigest);
        }
        this.f3833h.a(messageDigest);
        messageDigest.update(a());
        this.f3827b.put(bArr);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof F)) {
            return false;
        }
        F f2 = (F) obj;
        if (this.f3831f != f2.f3831f || this.f3830e != f2.f3830e || !k.b((Object) this.f3834i, (Object) f2.f3834i) || !this.f3832g.equals(f2.f3832g) || !this.f3828c.equals(f2.f3828c) || !this.f3829d.equals(f2.f3829d) || !this.f3833h.equals(f2.f3833h)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        int hashCode = (((((this.f3828c.hashCode() * 31) + this.f3829d.hashCode()) * 31) + this.f3830e) * 31) + this.f3831f;
        i<?> iVar = this.f3834i;
        if (iVar != null) {
            hashCode = (hashCode * 31) + iVar.hashCode();
        }
        return (((hashCode * 31) + this.f3832g.hashCode()) * 31) + this.f3833h.hashCode();
    }

    public String toString() {
        return "ResourceCacheKey{sourceKey=" + this.f3828c + ", signature=" + this.f3829d + ", width=" + this.f3830e + ", height=" + this.f3831f + ", decodedResourceClass=" + this.f3832g + ", transformation='" + this.f3834i + '\'' + ", options=" + this.f3833h + '}';
    }

    public final byte[] a() {
        byte[] a2 = f3826a.a(this.f3832g);
        if (a2 != null) {
            return a2;
        }
        byte[] bytes = this.f3832g.getName().getBytes(c.f4046a);
        f3826a.b(this.f3832g, bytes);
        return bytes;
    }
}
