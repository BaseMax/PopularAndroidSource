package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.internal.c.b;
import io.reactivex.z;

public final class ck extends z<Integer> {

    /* renamed from: a  reason: collision with root package name */
    private final int f7306a;

    /* renamed from: b  reason: collision with root package name */
    private final long f7307b;

    static final class a extends b<Integer> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super Integer> f7308a;

        /* renamed from: b  reason: collision with root package name */
        final long f7309b;
        long c;
        boolean d;

        a(ag<? super Integer> agVar, long j, long j2) {
            this.f7308a = agVar;
            this.c = j;
            this.f7309b = j2;
        }

        public final Integer poll() throws Exception {
            long j = this.c;
            if (j != this.f7309b) {
                this.c = 1 + j;
                return Integer.valueOf((int) j);
            }
            lazySet(1);
            return null;
        }

        public final boolean isEmpty() {
            return this.c == this.f7309b;
        }

        public final void clear() {
            this.c = this.f7309b;
            lazySet(1);
        }

        public final void dispose() {
            set(1);
        }

        public final boolean isDisposed() {
            return get() != 0;
        }

        public final int requestFusion(int i) {
            if ((i & 1) == 0) {
                return 0;
            }
            this.d = true;
            return 1;
        }
    }

    public ck(int i, int i2) {
        this.f7306a = i;
        this.f7307b = ((long) i) + ((long) i2);
    }

    public final void subscribeActual(ag<? super Integer> agVar) {
        a aVar = new a(agVar, (long) this.f7306a, this.f7307b);
        agVar.onSubscribe(aVar);
        if (!aVar.d) {
            ag<? super Integer> agVar2 = aVar.f7308a;
            long j = aVar.f7309b;
            for (long j2 = aVar.c; j2 != j && aVar.get() == 0; j2++) {
                agVar2.onNext(Integer.valueOf((int) j2));
            }
            if (aVar.get() == 0) {
                aVar.lazySet(1);
                agVar2.onComplete();
            }
        }
    }
}
