package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.b.c;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.j.e;
import io.reactivex.z;
import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

public final class eg<T> extends a<T, z<T>> {

    /* renamed from: b  reason: collision with root package name */
    final long f7510b;
    final long c;
    final int d;

    static final class a<T> extends AtomicInteger implements ag<T>, c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super z<T>> f7511a;

        /* renamed from: b  reason: collision with root package name */
        final long f7512b;
        final int c;
        long d;
        c e;
        e<T> f;
        volatile boolean g;

        a(ag<? super z<T>> agVar, long j, int i) {
            this.f7511a = agVar;
            this.f7512b = j;
            this.c = i;
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.e, cVar)) {
                this.e = cVar;
                this.f7511a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            e<T> eVar = this.f;
            if (eVar == null && !this.g) {
                eVar = e.create(this.c, this);
                this.f = eVar;
                this.f7511a.onNext(eVar);
            }
            if (eVar != null) {
                eVar.onNext(t);
                long j = this.d + 1;
                this.d = j;
                if (j >= this.f7512b) {
                    this.d = 0;
                    this.f = null;
                    eVar.onComplete();
                    if (this.g) {
                        this.e.dispose();
                    }
                }
            }
        }

        public final void onError(Throwable th) {
            e<T> eVar = this.f;
            if (eVar != null) {
                this.f = null;
                eVar.onError(th);
            }
            this.f7511a.onError(th);
        }

        public final void onComplete() {
            e<T> eVar = this.f;
            if (eVar != null) {
                this.f = null;
                eVar.onComplete();
            }
            this.f7511a.onComplete();
        }

        public final void dispose() {
            this.g = true;
        }

        public final boolean isDisposed() {
            return this.g;
        }

        public final void run() {
            if (this.g) {
                this.e.dispose();
            }
        }
    }

    static final class b<T> extends AtomicBoolean implements ag<T>, c, Runnable {

        /* renamed from: a  reason: collision with root package name */
        final ag<? super z<T>> f7513a;

        /* renamed from: b  reason: collision with root package name */
        final long f7514b;
        final long c;
        final int d;
        final ArrayDeque<e<T>> e;
        long f;
        volatile boolean g;
        long h;
        c i;
        final AtomicInteger j = new AtomicInteger();

        b(ag<? super z<T>> agVar, long j2, long j3, int i2) {
            this.f7513a = agVar;
            this.f7514b = j2;
            this.c = j3;
            this.d = i2;
            this.e = new ArrayDeque<>();
        }

        public final void onSubscribe(c cVar) {
            if (DisposableHelper.validate(this.i, cVar)) {
                this.i = cVar;
                this.f7513a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            ArrayDeque<e<T>> arrayDeque = this.e;
            long j2 = this.f;
            long j3 = this.c;
            if (j2 % j3 == 0 && !this.g) {
                this.j.getAndIncrement();
                e create = e.create(this.d, this);
                arrayDeque.offer(create);
                this.f7513a.onNext(create);
            }
            long j4 = this.h + 1;
            Iterator<e<T>> it = arrayDeque.iterator();
            while (it.hasNext()) {
                it.next().onNext(t);
            }
            if (j4 >= this.f7514b) {
                arrayDeque.poll().onComplete();
                if (!arrayDeque.isEmpty() || !this.g) {
                    this.h = j4 - j3;
                } else {
                    this.i.dispose();
                    return;
                }
            } else {
                this.h = j4;
            }
            this.f = j2 + 1;
        }

        public final void onError(Throwable th) {
            ArrayDeque<e<T>> arrayDeque = this.e;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onError(th);
            }
            this.f7513a.onError(th);
        }

        public final void onComplete() {
            ArrayDeque<e<T>> arrayDeque = this.e;
            while (!arrayDeque.isEmpty()) {
                arrayDeque.poll().onComplete();
            }
            this.f7513a.onComplete();
        }

        public final void dispose() {
            this.g = true;
        }

        public final boolean isDisposed() {
            return this.g;
        }

        public final void run() {
            if (this.j.decrementAndGet() == 0 && this.g) {
                this.i.dispose();
            }
        }
    }

    public eg(ae<T> aeVar, long j, long j2, int i) {
        super(aeVar);
        this.f7510b = j;
        this.c = j2;
        this.d = i;
    }

    public final void subscribeActual(ag<? super z<T>> agVar) {
        if (this.f7510b == this.c) {
            this.f7091a.subscribe(new a(agVar, this.f7510b, this.d));
            return;
        }
        ae aeVar = this.f7091a;
        b bVar = new b(agVar, this.f7510b, this.c, this.d);
        aeVar.subscribe(bVar);
    }
}
