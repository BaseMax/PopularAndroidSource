package io.reactivex.internal.operators.c;

import io.reactivex.ag;
import io.reactivex.internal.c.b;
import io.reactivex.z;

public final class cl extends z<Long> {

    /* renamed from: a  reason: collision with root package name */
    private final long f7310a;

    /* renamed from: b  reason: collision with root package name */
    private final long f7311b;

    static final class a extends b<Long> {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super Long> f7312a;

        /* renamed from: b  reason: collision with root package name */
        final long f7313b;
        long c;
        boolean d;

        a(ag<? super Long> agVar, long j, long j2) {
            this.f7312a = agVar;
            this.c = j;
            this.f7313b = j2;
        }

        public final Long poll() throws Exception {
            long j = this.c;
            if (j != this.f7313b) {
                this.c = 1 + j;
                return Long.valueOf(j);
            }
            lazySet(1);
            return null;
        }

        public final boolean isEmpty() {
            return this.c == this.f7313b;
        }

        public final void clear() {
            this.c = this.f7313b;
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

    public cl(long j, long j2) {
        this.f7310a = j;
        this.f7311b = j2;
    }

    public final void subscribeActual(ag<? super Long> agVar) {
        long j = this.f7310a;
        a aVar = new a(agVar, j, j + this.f7311b);
        agVar.onSubscribe(aVar);
        if (!aVar.d) {
            ag<? super Long> agVar2 = aVar.f7312a;
            long j2 = aVar.f7313b;
            for (long j3 = aVar.c; j3 != j2 && aVar.get() == 0; j3++) {
                agVar2.onNext(Long.valueOf(j3));
            }
            if (aVar.get() == 0) {
                aVar.lazySet(1);
                agVar2.onComplete();
            }
        }
    }
}
