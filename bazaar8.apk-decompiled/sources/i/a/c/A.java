package i.a.c;

import h.f.b.j;
import i.a.K;
import i.a.c.B;
import java.lang.Comparable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* compiled from: ThreadSafeHeap.common.kt */
public class A<T extends B & Comparable<? super T>> {

    /* renamed from: a  reason: collision with root package name */
    public static final AtomicIntegerFieldUpdater f14738a = AtomicIntegerFieldUpdater.newUpdater(A.class, "_size");
    public volatile int _size = 0;

    /* renamed from: b  reason: collision with root package name */
    public T[] f14739b;

    public final T a() {
        T[] tArr = this.f14739b;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }

    public final int b() {
        return this._size;
    }

    public final boolean c() {
        return b() == 0;
    }

    public final void d(int i2) {
        while (i2 > 0) {
            T[] tArr = this.f14739b;
            if (tArr != null) {
                int i3 = (i2 - 1) / 2;
                T t = tArr[i3];
                if (t != null) {
                    Comparable comparable = (Comparable) t;
                    T t2 = tArr[i2];
                    if (t2 == null) {
                        j.a();
                        throw null;
                    } else if (comparable.compareTo(t2) > 0) {
                        a(i2, i3);
                        i2 = i3;
                    } else {
                        return;
                    }
                } else {
                    j.a();
                    throw null;
                }
            } else {
                j.a();
                throw null;
            }
        }
    }

    public final T[] e() {
        T[] tArr = this.f14739b;
        if (tArr == null) {
            T[] tArr2 = new B[4];
            this.f14739b = tArr2;
            return tArr2;
        } else if (b() < tArr.length) {
            return tArr;
        } else {
            T[] copyOf = Arrays.copyOf(tArr, b() * 2);
            j.a((Object) copyOf, "java.util.Arrays.copyOf(this, newSize)");
            T[] tArr3 = (B[]) copyOf;
            this.f14739b = tArr3;
            return tArr3;
        }
    }

    public final T f() {
        T a2;
        synchronized (this) {
            a2 = b() > 0 ? a(0) : null;
        }
        return a2;
    }

    public final T a(int i2) {
        boolean z = false;
        if (K.a()) {
            if (!(b() > 0)) {
                throw new AssertionError();
            }
        }
        T[] tArr = this.f14739b;
        if (tArr != null) {
            b(b() - 1);
            if (i2 < b()) {
                a(i2, b());
                int i3 = (i2 - 1) / 2;
                if (i2 > 0) {
                    T t = tArr[i2];
                    if (t != null) {
                        Comparable comparable = (Comparable) t;
                        T t2 = tArr[i3];
                        if (t2 == null) {
                            j.a();
                            throw null;
                        } else if (comparable.compareTo(t2) < 0) {
                            a(i2, i3);
                            d(i3);
                        }
                    } else {
                        j.a();
                        throw null;
                    }
                }
                c(i2);
            }
            T t3 = tArr[b()];
            if (t3 != null) {
                if (K.a()) {
                    if (t3.g() == this) {
                        z = true;
                    }
                    if (!z) {
                        throw new AssertionError();
                    }
                }
                t3.a(null);
                t3.setIndex(-1);
                tArr[b()] = null;
                return t3;
            }
            j.a();
            throw null;
        }
        j.a();
        throw null;
    }

    public final void b(int i2) {
        this._size = i2;
    }

    public final void c(int i2) {
        while (true) {
            int i3 = (i2 * 2) + 1;
            if (i3 < b()) {
                T[] tArr = this.f14739b;
                if (tArr != null) {
                    int i4 = i3 + 1;
                    if (i4 < b()) {
                        T t = tArr[i4];
                        if (t != null) {
                            Comparable comparable = (Comparable) t;
                            T t2 = tArr[i3];
                            if (t2 == null) {
                                j.a();
                                throw null;
                            } else if (comparable.compareTo(t2) < 0) {
                                i3 = i4;
                            }
                        } else {
                            j.a();
                            throw null;
                        }
                    }
                    T t3 = tArr[i2];
                    if (t3 != null) {
                        Comparable comparable2 = (Comparable) t3;
                        T t4 = tArr[i3];
                        if (t4 == null) {
                            j.a();
                            throw null;
                        } else if (comparable2.compareTo(t4) > 0) {
                            a(i2, i3);
                            i2 = i3;
                        } else {
                            return;
                        }
                    } else {
                        j.a();
                        throw null;
                    }
                } else {
                    j.a();
                    throw null;
                }
            } else {
                return;
            }
        }
    }

    public final boolean b(T t) {
        boolean z;
        j.b(t, "node");
        synchronized (this) {
            z = true;
            boolean z2 = false;
            if (t.g() == null) {
                z = false;
            } else {
                int index = t.getIndex();
                if (K.a()) {
                    if (index >= 0) {
                        z2 = true;
                    }
                    if (!z2) {
                        throw new AssertionError();
                    }
                }
                a(index);
            }
        }
        return z;
    }

    public final T d() {
        T a2;
        synchronized (this) {
            a2 = a();
        }
        return a2;
    }

    public final void a(T t) {
        j.b(t, "node");
        if (K.a()) {
            if (!(t.g() == null)) {
                throw new AssertionError();
            }
        }
        t.a(this);
        B[] e2 = e();
        int b2 = b();
        b(b2 + 1);
        e2[b2] = t;
        t.setIndex(b2);
        d(b2);
    }

    public final void a(int i2, int i3) {
        T[] tArr = this.f14739b;
        if (tArr != null) {
            T t = tArr[i3];
            if (t != null) {
                T t2 = tArr[i2];
                if (t2 != null) {
                    tArr[i2] = t;
                    tArr[i3] = t2;
                    t.setIndex(i2);
                    t2.setIndex(i3);
                    return;
                }
                j.a();
                throw null;
            }
            j.a();
            throw null;
        }
        j.a();
        throw null;
    }
}
