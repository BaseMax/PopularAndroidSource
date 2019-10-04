package c.e.a.b.g.f;

import java.util.ArrayList;
import java.util.List;

/* renamed from: c.e.a.b.g.f.ec  reason: case insensitive filesystem */
public final class C0817ec<E> extends Fa<E> {

    /* renamed from: b  reason: collision with root package name */
    public static final C0817ec<Object> f10397b;

    /* renamed from: c  reason: collision with root package name */
    public final List<E> f10398c;

    static {
        C0817ec<Object> ecVar = new C0817ec<>(new ArrayList(0));
        f10397b = ecVar;
        ecVar.t();
    }

    public C0817ec(List<E> list) {
        this.f10398c = list;
    }

    public static <E> C0817ec<E> b() {
        return f10397b;
    }

    public final void add(int i2, E e2) {
        a();
        this.f10398c.add(i2, e2);
        this.modCount++;
    }

    public final /* synthetic */ C0883vb c(int i2) {
        if (i2 >= size()) {
            ArrayList arrayList = new ArrayList(i2);
            arrayList.addAll(this.f10398c);
            return new C0817ec(arrayList);
        }
        throw new IllegalArgumentException();
    }

    public final E get(int i2) {
        return this.f10398c.get(i2);
    }

    public final E remove(int i2) {
        a();
        E remove = this.f10398c.remove(i2);
        this.modCount++;
        return remove;
    }

    public final E set(int i2, E e2) {
        a();
        E e3 = this.f10398c.set(i2, e2);
        this.modCount++;
        return e3;
    }

    public final int size() {
        return this.f10398c.size();
    }
}
