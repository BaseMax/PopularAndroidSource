package b.f;

import java.util.Map;

/* renamed from: b.f.a  reason: case insensitive filesystem */
/* compiled from: ArrayMap */
class C0242a extends h<K, V> {

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ C0243b f2328d;

    public C0242a(C0243b bVar) {
        this.f2328d = bVar;
    }

    public Object a(int i2, int i3) {
        return this.f2328d.f2377f[(i2 << 1) + i3];
    }

    public int b(Object obj) {
        return this.f2328d.c(obj);
    }

    public int c() {
        return this.f2328d.f2378g;
    }

    public int a(Object obj) {
        return this.f2328d.b(obj);
    }

    public Map<K, V> b() {
        return this.f2328d;
    }

    public void a(K k2, V v) {
        this.f2328d.put(k2, v);
    }

    public V a(int i2, V v) {
        return this.f2328d.a(i2, v);
    }

    public void a(int i2) {
        this.f2328d.d(i2);
    }

    public void a() {
        this.f2328d.clear();
    }
}
