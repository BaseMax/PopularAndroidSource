package io.reactivex.internal.d;

import io.reactivex.internal.b.i;
import io.reactivex.internal.util.m;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

public final class b<E> extends AtomicReferenceArray<E> implements i<E> {
    private static final Integer f = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);

    /* renamed from: a  reason: collision with root package name */
    final int f6797a = (length() - 1);

    /* renamed from: b  reason: collision with root package name */
    final AtomicLong f6798b = new AtomicLong();
    long c;
    final AtomicLong d = new AtomicLong();
    final int e;

    public b(int i) {
        super(m.roundToPowerOfTwo(i));
        this.e = Math.min(i / 4, f.intValue());
    }

    public final boolean offer(E e2) {
        if (e2 != null) {
            int i = this.f6797a;
            long j = this.f6798b.get();
            int i2 = ((int) j) & i;
            if (j >= this.c) {
                long j2 = ((long) this.e) + j;
                if (get(i & ((int) j2)) == null) {
                    this.c = j2;
                } else if (get(i2) != null) {
                    return false;
                }
            }
            lazySet(i2, e2);
            this.f6798b.lazySet(j + 1);
            return true;
        }
        throw new NullPointerException("Null is not a valid element");
    }

    public final boolean offer(E e2, E e3) {
        return offer(e2) && offer(e3);
    }

    public final E poll() {
        long j = this.d.get();
        int i = ((int) j) & this.f6797a;
        E e2 = get(i);
        if (e2 == null) {
            return null;
        }
        this.d.lazySet(j + 1);
        lazySet(i, null);
        return e2;
    }

    public final boolean isEmpty() {
        return this.f6798b.get() == this.d.get();
    }

    public final void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }
}
