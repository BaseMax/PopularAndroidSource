package b.h.a;

import b.f.i;
import b.i.j.e;
import b.i.j.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

/* renamed from: b.h.a.c  reason: case insensitive filesystem */
/* compiled from: DirectedAcyclicGraph */
public final class C0254c<T> {

    /* renamed from: a  reason: collision with root package name */
    public final e<ArrayList<T>> f2495a = new f(10);

    /* renamed from: b  reason: collision with root package name */
    public final i<T, ArrayList<T>> f2496b = new i<>();

    /* renamed from: c  reason: collision with root package name */
    public final ArrayList<T> f2497c = new ArrayList<>();

    /* renamed from: d  reason: collision with root package name */
    public final HashSet<T> f2498d = new HashSet<>();

    public void a(T t) {
        if (!this.f2496b.containsKey(t)) {
            this.f2496b.put(t, null);
        }
    }

    public boolean b(T t) {
        return this.f2496b.containsKey(t);
    }

    public List c(T t) {
        return this.f2496b.get(t);
    }

    public List<T> d(T t) {
        int size = this.f2496b.size();
        ArrayList arrayList = null;
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList e2 = this.f2496b.e(i2);
            if (e2 != null && e2.contains(t)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(this.f2496b.c(i2));
            }
        }
        return arrayList;
    }

    public boolean e(T t) {
        int size = this.f2496b.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList e2 = this.f2496b.e(i2);
            if (e2 != null && e2.contains(t)) {
                return true;
            }
        }
        return false;
    }

    public final ArrayList<T> b() {
        ArrayList<T> a2 = this.f2495a.a();
        return a2 == null ? new ArrayList<>() : a2;
    }

    public ArrayList<T> c() {
        this.f2497c.clear();
        this.f2498d.clear();
        int size = this.f2496b.size();
        for (int i2 = 0; i2 < size; i2++) {
            a(this.f2496b.c(i2), this.f2497c, this.f2498d);
        }
        return this.f2497c;
    }

    public void a(T t, T t2) {
        if (!this.f2496b.containsKey(t) || !this.f2496b.containsKey(t2)) {
            throw new IllegalArgumentException("All nodes must be present in the graph before being added as an edge");
        }
        ArrayList arrayList = this.f2496b.get(t);
        if (arrayList == null) {
            arrayList = b();
            this.f2496b.put(t, arrayList);
        }
        arrayList.add(t2);
    }

    public void a() {
        int size = this.f2496b.size();
        for (int i2 = 0; i2 < size; i2++) {
            ArrayList e2 = this.f2496b.e(i2);
            if (e2 != null) {
                a(e2);
            }
        }
        this.f2496b.clear();
    }

    public final void a(T t, ArrayList<T> arrayList, HashSet<T> hashSet) {
        if (!arrayList.contains(t)) {
            if (!hashSet.contains(t)) {
                hashSet.add(t);
                ArrayList arrayList2 = this.f2496b.get(t);
                if (arrayList2 != null) {
                    int size = arrayList2.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        a(arrayList2.get(i2), arrayList, hashSet);
                    }
                }
                hashSet.remove(t);
                arrayList.add(t);
                return;
            }
            throw new RuntimeException("This graph contains cyclic dependencies");
        }
    }

    public final void a(ArrayList<T> arrayList) {
        arrayList.clear();
        this.f2495a.a(arrayList);
    }
}
