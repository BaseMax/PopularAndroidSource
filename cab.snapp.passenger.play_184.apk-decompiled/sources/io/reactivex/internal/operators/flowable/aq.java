package io.reactivex.internal.operators.flowable;

import io.reactivex.internal.b.g;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.o;
import org.b.c;
import org.b.d;

public final class aq<T> extends a<T, T> {
    final io.reactivex.e.a c;

    static final class a<T> extends io.reactivex.internal.subscriptions.a<T> implements io.reactivex.internal.b.a<T> {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.internal.b.a<? super T> f7973a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.a f7974b;
        d c;
        g<T> d;
        boolean e;

        a(io.reactivex.internal.b.a<? super T> aVar, io.reactivex.e.a aVar2) {
            this.f7973a = aVar;
            this.f7974b = aVar2;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                if (dVar instanceof g) {
                    this.d = (g) dVar;
                }
                this.f7973a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.f7973a.onNext(t);
        }

        public final boolean tryOnNext(T t) {
            return this.f7973a.tryOnNext(t);
        }

        public final void onError(Throwable th) {
            this.f7973a.onError(th);
            a();
        }

        public final void onComplete() {
            this.f7973a.onComplete();
            a();
        }

        public final void cancel() {
            this.c.cancel();
            a();
        }

        public final void request(long j) {
            this.c.request(j);
        }

        public final int requestFusion(int i) {
            g<T> gVar = this.d;
            if (gVar == null || (i & 4) != 0) {
                return 0;
            }
            int requestFusion = gVar.requestFusion(i);
            if (requestFusion != 0) {
                boolean z = true;
                if (requestFusion != 1) {
                    z = false;
                }
                this.e = z;
            }
            return requestFusion;
        }

        public final void clear() {
            this.d.clear();
        }

        public final boolean isEmpty() {
            return this.d.isEmpty();
        }

        public final T poll() throws Exception {
            T poll = this.d.poll();
            if (poll == null && this.e) {
                a();
            }
            return poll;
        }

        private void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f7974b.run();
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    io.reactivex.g.a.onError(th);
                }
            }
        }
    }

    static final class b<T> extends io.reactivex.internal.subscriptions.a<T> implements o<T> {

        /* renamed from: a  reason: collision with root package name */
        final c<? super T> f7975a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.a f7976b;
        d c;
        g<T> d;
        boolean e;

        b(c<? super T> cVar, io.reactivex.e.a aVar) {
            this.f7975a = cVar;
            this.f7976b = aVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                if (dVar instanceof g) {
                    this.d = (g) dVar;
                }
                this.f7975a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            this.f7975a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f7975a.onError(th);
            a();
        }

        public final void onComplete() {
            this.f7975a.onComplete();
            a();
        }

        public final void cancel() {
            this.c.cancel();
            a();
        }

        public final void request(long j) {
            this.c.request(j);
        }

        public final int requestFusion(int i) {
            g<T> gVar = this.d;
            if (gVar == null || (i & 4) != 0) {
                return 0;
            }
            int requestFusion = gVar.requestFusion(i);
            if (requestFusion != 0) {
                boolean z = true;
                if (requestFusion != 1) {
                    z = false;
                }
                this.e = z;
            }
            return requestFusion;
        }

        public final void clear() {
            this.d.clear();
        }

        public final boolean isEmpty() {
            return this.d.isEmpty();
        }

        public final T poll() throws Exception {
            T poll = this.d.poll();
            if (poll == null && this.e) {
                a();
            }
            return poll;
        }

        private void a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f7976b.run();
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    io.reactivex.g.a.onError(th);
                }
            }
        }
    }

    public aq(j<T> jVar, io.reactivex.e.a aVar) {
        super(jVar);
        this.c = aVar;
    }

    public final void subscribeActual(c<? super T> cVar) {
        if (cVar instanceof io.reactivex.internal.b.a) {
            this.f7923b.subscribe(new a((io.reactivex.internal.b.a) cVar, this.c));
        } else {
            this.f7923b.subscribe(new b(cVar, this.c));
        }
    }
}
