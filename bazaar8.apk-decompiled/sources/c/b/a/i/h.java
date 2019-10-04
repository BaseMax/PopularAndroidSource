package c.b.a.i;

/* compiled from: MultiClassKey */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public Class<?> f4437a;

    /* renamed from: b  reason: collision with root package name */
    public Class<?> f4438b;

    /* renamed from: c  reason: collision with root package name */
    public Class<?> f4439c;

    public h() {
    }

    public void a(Class<?> cls, Class<?> cls2) {
        a(cls, cls2, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || h.class != obj.getClass()) {
            return false;
        }
        h hVar = (h) obj;
        return this.f4437a.equals(hVar.f4437a) && this.f4438b.equals(hVar.f4438b) && k.b((Object) this.f4439c, (Object) hVar.f4439c);
    }

    public int hashCode() {
        int hashCode = ((this.f4437a.hashCode() * 31) + this.f4438b.hashCode()) * 31;
        Class<?> cls = this.f4439c;
        return hashCode + (cls != null ? cls.hashCode() : 0);
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f4437a + ", second=" + this.f4438b + '}';
    }

    public h(Class<?> cls, Class<?> cls2) {
        a(cls, cls2);
    }

    public void a(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        this.f4437a = cls;
        this.f4438b = cls2;
        this.f4439c = cls3;
    }

    public h(Class<?> cls, Class<?> cls2, Class<?> cls3) {
        a(cls, cls2, cls3);
    }
}
