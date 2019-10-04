package io.reactivex.internal.operators.flowable;

import io.reactivex.ag;
import io.reactivex.j;
import io.reactivex.z;
import org.b.c;
import org.b.d;

public final class bk<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    private final z<T> f8030b;

    static final class a<T> implements ag<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f8031a;

        /* renamed from: b  reason: collision with root package name */
        io.reactivex.b.c f8032b;

        public final void request(long j) {
        }

        a(c<? super T> cVar) {
            this.f8031a = cVar;
        }

        public final void onComplete() {
            this.f8031a.onComplete();
        }

        public final void onError(Throwable th) {
            this.f8031a.onError(th);
        }

        public final void onNext(T t) {
            this.f8031a.onNext(t);
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            this.f8032b = cVar;
            this.f8031a.onSubscribe(this);
        }

        public final void cancel() {
            this.f8032b.dispose();
        }
    }

    public bk(z<T> zVar) {
        this.f8030b = zVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        this.f8030b.subscribe(new a(cVar));
    }
}
