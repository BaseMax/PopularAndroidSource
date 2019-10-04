package c.b.a.i;

import b.f.C0243b;
import b.f.i;

/* compiled from: CachedHashCodeArrayMap */
public final class b<K, V> extends C0243b<K, V> {

    /* renamed from: i  reason: collision with root package name */
    public int f4425i;

    public V a(int i2, V v) {
        this.f4425i = 0;
        return super.a(i2, v);
    }

    public void clear() {
        this.f4425i = 0;
        super.clear();
    }

    public V d(int i2) {
        this.f4425i = 0;
        return super.d(i2);
    }

    public int hashCode() {
        if (this.f4425i == 0) {
            this.f4425i = super.hashCode();
        }
        return this.f4425i;
    }

    public V put(K k2, V v) {
        this.f4425i = 0;
        return super.put(k2, v);
    }

    public void a(i<? extends K, ? extends V> iVar) {
        this.f4425i = 0;
        super.a(iVar);
    }
}
