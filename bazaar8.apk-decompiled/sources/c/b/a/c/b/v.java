package c.b.a.c.b;

import c.b.a.c.c;
import c.b.a.c.f;
import c.b.a.c.i;
import java.security.MessageDigest;
import java.util.Map;

/* compiled from: EngineKey */
public class v implements c {

    /* renamed from: a  reason: collision with root package name */
    public final Object f4028a;

    /* renamed from: b  reason: collision with root package name */
    public final int f4029b;

    /* renamed from: c  reason: collision with root package name */
    public final int f4030c;

    /* renamed from: d  reason: collision with root package name */
    public final Class<?> f4031d;

    /* renamed from: e  reason: collision with root package name */
    public final Class<?> f4032e;

    /* renamed from: f  reason: collision with root package name */
    public final c f4033f;

    /* renamed from: g  reason: collision with root package name */
    public final Map<Class<?>, i<?>> f4034g;

    /* renamed from: h  reason: collision with root package name */
    public final f f4035h;

    /* renamed from: i  reason: collision with root package name */
    public int f4036i;

    public v(Object obj, c cVar, int i2, int i3, Map<Class<?>, i<?>> map, Class<?> cls, Class<?> cls2, f fVar) {
        c.b.a.i.i.a(obj);
        this.f4028a = obj;
        c.b.a.i.i.a(cVar, "Signature must not be null");
        this.f4033f = cVar;
        this.f4029b = i2;
        this.f4030c = i3;
        c.b.a.i.i.a(map);
        this.f4034g = map;
        c.b.a.i.i.a(cls, "Resource class must not be null");
        this.f4031d = cls;
        c.b.a.i.i.a(cls2, "Transcode class must not be null");
        this.f4032e = cls2;
        c.b.a.i.i.a(fVar);
        this.f4035h = fVar;
    }

    public void a(MessageDigest messageDigest) {
        throw new UnsupportedOperationException();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof v)) {
            return false;
        }
        v vVar = (v) obj;
        if (!this.f4028a.equals(vVar.f4028a) || !this.f4033f.equals(vVar.f4033f) || this.f4030c != vVar.f4030c || this.f4029b != vVar.f4029b || !this.f4034g.equals(vVar.f4034g) || !this.f4031d.equals(vVar.f4031d) || !this.f4032e.equals(vVar.f4032e) || !this.f4035h.equals(vVar.f4035h)) {
            return false;
        }
        return true;
    }

    public int hashCode() {
        if (this.f4036i == 0) {
            this.f4036i = this.f4028a.hashCode();
            this.f4036i = (this.f4036i * 31) + this.f4033f.hashCode();
            this.f4036i = (this.f4036i * 31) + this.f4029b;
            this.f4036i = (this.f4036i * 31) + this.f4030c;
            this.f4036i = (this.f4036i * 31) + this.f4034g.hashCode();
            this.f4036i = (this.f4036i * 31) + this.f4031d.hashCode();
            this.f4036i = (this.f4036i * 31) + this.f4032e.hashCode();
            this.f4036i = (this.f4036i * 31) + this.f4035h.hashCode();
        }
        return this.f4036i;
    }

    public String toString() {
        return "EngineKey{model=" + this.f4028a + ", width=" + this.f4029b + ", height=" + this.f4030c + ", resourceClass=" + this.f4031d + ", transcodeClass=" + this.f4032e + ", signature=" + this.f4033f + ", hashCode=" + this.f4036i + ", transformations=" + this.f4034g + ", options=" + this.f4035h + '}';
    }
}
