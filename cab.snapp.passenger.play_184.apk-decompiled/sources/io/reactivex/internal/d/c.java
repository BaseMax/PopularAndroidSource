package io.reactivex.internal.d;

import io.reactivex.internal.b.i;
import io.reactivex.internal.util.m;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class c<T> implements i<T> {

    /* renamed from: a  reason: collision with root package name */
    static final int f6799a = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();
    private static final Object j = new Object();

    /* renamed from: b  reason: collision with root package name */
    final AtomicLong f6800b = new AtomicLong();
    int c;
    long d;
    final int e;
    AtomicReferenceArray<Object> f;
    final int g;
    AtomicReferenceArray<Object> h;
    final AtomicLong i = new AtomicLong();

    public c(int i2) {
        int roundToPowerOfTwo = m.roundToPowerOfTwo(Math.max(8, i2));
        int i3 = roundToPowerOfTwo - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(roundToPowerOfTwo + 1);
        this.f = atomicReferenceArray;
        this.e = i3;
        this.c = Math.min(roundToPowerOfTwo / 4, f6799a);
        this.h = atomicReferenceArray;
        this.g = i3;
        this.d = (long) (i3 - 1);
        a(0);
    }

    public final boolean offer(T t) {
        if (t != null) {
            AtomicReferenceArray<Object> atomicReferenceArray = this.f;
            long j2 = this.f6800b.get();
            int i2 = this.e;
            int i3 = ((int) j2) & i2;
            if (j2 < this.d) {
                return a(atomicReferenceArray, t, j2, i3);
            }
            long j3 = ((long) this.c) + j2;
            if (atomicReferenceArray.get(((int) j3) & i2) == null) {
                this.d = j3 - 1;
                return a(atomicReferenceArray, t, j2, i3);
            }
            long j4 = j2 + 1;
            if (atomicReferenceArray.get(((int) j4) & i2) == null) {
                return a(atomicReferenceArray, t, j2, i3);
            }
            AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
            this.f = atomicReferenceArray2;
            this.d = (j2 + ((long) i2)) - 1;
            atomicReferenceArray2.lazySet(i3, t);
            a(atomicReferenceArray, atomicReferenceArray2);
            atomicReferenceArray.lazySet(i3, j);
            a(j4);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    private static void a(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        atomicReferenceArray.lazySet(atomicReferenceArray.length() - 1, atomicReferenceArray2);
    }

    public final T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.h;
        long j2 = this.i.get();
        int i2 = this.g;
        int i3 = ((int) j2) & i2;
        T t = atomicReferenceArray.get(i3);
        boolean z = t == j;
        if (t != null && !z) {
            atomicReferenceArray.lazySet(i3, null);
            b(j2 + 1);
            return t;
        } else if (!z) {
            return null;
        } else {
            AtomicReferenceArray<Object> a2 = a(atomicReferenceArray, i2 + 1);
            this.h = a2;
            T t2 = a2.get(i3);
            if (t2 != null) {
                a2.lazySet(i3, null);
                b(j2 + 1);
            }
            return t2;
        }
    }

    public final T peek() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.h;
        long j2 = this.i.get();
        int i2 = this.g;
        int i3 = ((int) j2) & i2;
        T t = atomicReferenceArray.get(i3);
        if (t != j) {
            return t;
        }
        AtomicReferenceArray<Object> a2 = a(atomicReferenceArray, i2 + 1);
        this.h = a2;
        return a2.get(i3);
    }

    public final void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    private void a(long j2) {
        this.f6800b.lazySet(j2);
    }

    private void b(long j2) {
        this.i.lazySet(j2);
    }

    public final boolean offer(T t, T t2) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.f;
        long j2 = this.f6800b.get();
        int i2 = this.e;
        long j3 = 2 + j2;
        if (atomicReferenceArray.get(((int) j3) & i2) == null) {
            int i3 = ((int) j2) & i2;
            atomicReferenceArray.lazySet(i3 + 1, t2);
            atomicReferenceArray.lazySet(i3, t);
            a(j3);
        } else {
            AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
            this.f = atomicReferenceArray2;
            int i4 = ((int) j2) & i2;
            atomicReferenceArray2.lazySet(i4 + 1, t2);
            atomicReferenceArray2.lazySet(i4, t);
            a(atomicReferenceArray, atomicReferenceArray2);
            atomicReferenceArray.lazySet(i4, j);
            a(j3);
        }
        return true;
    }

    private boolean a(AtomicReferenceArray<Object> atomicReferenceArray, T t, long j2, int i2) {
        atomicReferenceArray.lazySet(i2, t);
        a(j2 + 1);
        return true;
    }

    private static AtomicReferenceArray<Object> a(AtomicReferenceArray<Object> atomicReferenceArray, int i2) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) atomicReferenceArray.get(i2);
        atomicReferenceArray.lazySet(i2, null);
        return atomicReferenceArray2;
    }

    public final int size() {
        long j2 = this.i.get();
        while (true) {
            long j3 = this.f6800b.get();
            long j4 = this.i.get();
            if (j2 == j4) {
                return (int) (j3 - j4);
            }
            j2 = j4;
        }
    }

    public final boolean isEmpty() {
        return this.f6800b.get() == this.i.get();
    }
}
