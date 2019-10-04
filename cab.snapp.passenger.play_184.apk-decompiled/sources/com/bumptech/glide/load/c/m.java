package com.bumptech.glide.load.c;

import com.bumptech.glide.g.g;
import com.bumptech.glide.g.k;
import java.util.Queue;

public final class m<A, B> {

    /* renamed from: a  reason: collision with root package name */
    private final g<a<A>, B> f2290a;

    static final class a<A> {

        /* renamed from: a  reason: collision with root package name */
        private static final Queue<a<?>> f2292a = k.createQueue(0);

        /* renamed from: b  reason: collision with root package name */
        private int f2293b;
        private int c;
        private A d;

        static <A> a<A> a(A a2, int i, int i2) {
            a<A> poll;
            synchronized (f2292a) {
                poll = f2292a.poll();
            }
            if (poll == null) {
                poll = new a<>();
            }
            poll.d = a2;
            poll.c = i;
            poll.f2293b = i2;
            return poll;
        }

        private a() {
        }

        public final void release() {
            synchronized (f2292a) {
                f2292a.offer(this);
            }
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                a aVar = (a) obj;
                if (this.c == aVar.c && this.f2293b == aVar.f2293b && this.d.equals(aVar.d)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (((this.f2293b * 31) + this.c) * 31) + this.d.hashCode();
        }
    }

    public m() {
        this(250);
    }

    public m(long j) {
        this.f2290a = new g<a<A>, B>(j) {
            public final /* synthetic */ void onItemEvicted(Object obj, Object obj2) {
                ((a) obj).release();
            }
        };
    }

    public final B get(A a2, int i, int i2) {
        a a3 = a.a(a2, i, i2);
        B b2 = this.f2290a.get(a3);
        a3.release();
        return b2;
    }

    public final void put(A a2, int i, int i2, B b2) {
        this.f2290a.put(a.a(a2, i, i2), b2);
    }

    public final void clear() {
        this.f2290a.clearMemory();
    }
}
