package b.f;

import java.util.Map;

/* renamed from: b.f.c  reason: case insensitive filesystem */
/* compiled from: ArraySet */
class C0244c extends h<E, E> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ d f2330d;

    public C0244c(d dVar) {
        this.f2330d = dVar;
    }

    public Object a(int i2, int i3) {
        return this.f2330d.f2338h[i2];
    }

    public int b(Object obj) {
        return this.f2330d.indexOf(obj);
    }

    public int c() {
        return this.f2330d.f2339i;
    }

    public int a(Object obj) {
        return this.f2330d.indexOf(obj);
    }

    public Map<E, E> b() {
        throw new UnsupportedOperationException("not a map");
    }

    public void a(E e2, E e3) {
        this.f2330d.add(e2);
    }

    public E a(int i2, E e2) {
        throw new UnsupportedOperationException("not a map");
    }

    public void a(int i2) {
        this.f2330d.f(i2);
    }

    public void a() {
        this.f2330d.clear();
    }
}
