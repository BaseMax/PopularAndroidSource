package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.j.e;
import io.reactivex.z;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class bk<TLeft, TRight, TLeftEnd, TRightEnd, R> extends a<TLeft, R> {

    /* renamed from: b  reason: collision with root package name */
    final ae<? extends TRight> f7205b;
    final h<? super TLeft, ? extends ae<TLeftEnd>> c;
    final h<? super TRight, ? extends ae<TRightEnd>> d;
    final io.reactivex.e.c<? super TLeft, ? super z<TRight>, ? extends R> e;

    static final class a<TLeft, TRight, TLeftEnd, TRightEnd, R> extends AtomicInteger implements io.reactivex.b.c, b {
        static final Integer n = 1;
        static final Integer o = 2;
        static final Integer p = 3;
        static final Integer q = 4;

        /* renamed from: a  reason: collision with root package name */
        final ag<? super R> f7206a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.d.c<Object> f7207b = new io.reactivex.internal.d.c<>(z.bufferSize());
        final io.reactivex.b.b c = new io.reactivex.b.b();
        final Map<Integer, e<TRight>> d = new LinkedHashMap();
        final Map<Integer, TRight> e = new LinkedHashMap();
        final AtomicReference<Throwable> f = new AtomicReference<>();
        final h<? super TLeft, ? extends ae<TLeftEnd>> g;
        final h<? super TRight, ? extends ae<TRightEnd>> h;
        final io.reactivex.e.c<? super TLeft, ? super z<TRight>, ? extends R> i;
        final AtomicInteger j;
        int k;
        int l;
        volatile boolean m;

        a(ag<? super R> agVar, h<? super TLeft, ? extends ae<TLeftEnd>> hVar, h<? super TRight, ? extends ae<TRightEnd>> hVar2, io.reactivex.e.c<? super TLeft, ? super z<TRight>, ? extends R> cVar) {
            this.f7206a = agVar;
            this.g = hVar;
            this.h = hVar2;
            this.i = cVar;
            this.j = new AtomicInteger(2);
        }

        public final void dispose() {
            if (!this.m) {
                this.m = true;
                this.c.dispose();
                if (getAndIncrement() == 0) {
                    this.f7207b.clear();
                }
            }
        }

        public final boolean isDisposed() {
            return this.m;
        }

        private void a(ag<?> agVar) {
            Throwable terminate = io.reactivex.internal.util.h.terminate(this.f);
            for (e<TRight> onError : this.d.values()) {
                onError.onError(terminate);
            }
            this.d.clear();
            this.e.clear();
            agVar.onError(terminate);
        }

        private void a(Throwable th, ag<?> agVar, io.reactivex.internal.d.c<?> cVar) {
            io.reactivex.c.b.throwIfFatal(th);
            io.reactivex.internal.util.h.addThrowable(this.f, th);
            cVar.clear();
            this.c.dispose();
            a(agVar);
        }

        private void a() {
            if (getAndIncrement() == 0) {
                io.reactivex.internal.d.c<Object> cVar = this.f7207b;
                ag<? super R> agVar = this.f7206a;
                int i2 = 1;
                while (!this.m) {
                    if (this.f.get() != null) {
                        cVar.clear();
                        this.c.dispose();
                        a(agVar);
                        return;
                    }
                    boolean z = this.j.get() == 0;
                    Integer num = (Integer) cVar.poll();
                    boolean z2 = num == null;
                    if (z && z2) {
                        for (e<TRight> onComplete : this.d.values()) {
                            onComplete.onComplete();
                        }
                        this.d.clear();
                        this.e.clear();
                        this.c.dispose();
                        agVar.onComplete();
                        return;
                    } else if (!z2) {
                        Object poll = cVar.poll();
                        if (num == n) {
                            e create = e.create();
                            int i3 = this.k;
                            this.k = i3 + 1;
                            this.d.put(Integer.valueOf(i3), create);
                            try {
                                ae aeVar = (ae) io.reactivex.internal.a.b.requireNonNull(this.g.apply(poll), "The leftEnd returned a null ObservableSource");
                                c cVar2 = new c(this, true, i3);
                                this.c.add(cVar2);
                                aeVar.subscribe(cVar2);
                                if (this.f.get() != null) {
                                    cVar.clear();
                                    this.c.dispose();
                                    a(agVar);
                                    return;
                                }
                                try {
                                    agVar.onNext(io.reactivex.internal.a.b.requireNonNull(this.i.apply(poll, create), "The resultSelector returned a null value"));
                                    for (TRight onNext : this.e.values()) {
                                        create.onNext(onNext);
                                    }
                                } catch (Throwable th) {
                                    a(th, agVar, cVar);
                                    return;
                                }
                            } catch (Throwable th2) {
                                a(th2, agVar, cVar);
                                return;
                            }
                        } else if (num == o) {
                            int i4 = this.l;
                            this.l = i4 + 1;
                            this.e.put(Integer.valueOf(i4), poll);
                            try {
                                ae aeVar2 = (ae) io.reactivex.internal.a.b.requireNonNull(this.h.apply(poll), "The rightEnd returned a null ObservableSource");
                                c cVar3 = new c(this, false, i4);
                                this.c.add(cVar3);
                                aeVar2.subscribe(cVar3);
                                if (this.f.get() != null) {
                                    cVar.clear();
                                    this.c.dispose();
                                    a(agVar);
                                    return;
                                }
                                for (e<TRight> onNext2 : this.d.values()) {
                                    onNext2.onNext(poll);
                                }
                            } catch (Throwable th3) {
                                a(th3, agVar, cVar);
                                return;
                            }
                        } else if (num == p) {
                            c cVar4 = (c) poll;
                            e remove = this.d.remove(Integer.valueOf(cVar4.c));
                            this.c.remove(cVar4);
                            if (remove != null) {
                                remove.onComplete();
                            }
                        } else if (num == q) {
                            c cVar5 = (c) poll;
                            this.e.remove(Integer.valueOf(cVar5.c));
                            this.c.remove(cVar5);
                        }
                    } else {
                        i2 = addAndGet(-i2);
                        if (i2 == 0) {
                            return;
                        }
                    }
                }
                cVar.clear();
            }
        }

        public final void innerError(Throwable th) {
            if (io.reactivex.internal.util.h.addThrowable(this.f, th)) {
                this.j.decrementAndGet();
                a();
                return;
            }
            io.reactivex.g.a.onError(th);
        }

        public final void innerComplete(d dVar) {
            this.c.delete(dVar);
            this.j.decrementAndGet();
            a();
        }

        public final void innerValue(boolean z, Object obj) {
            synchronized (this) {
                this.f7207b.offer(z ? n : o, obj);
            }
            a();
        }

        public final void innerClose(boolean z, c cVar) {
            synchronized (this) {
                this.f7207b.offer(z ? p : q, cVar);
            }
            a();
        }

        public final void innerCloseError(Throwable th) {
            if (io.reactivex.internal.util.h.addThrowable(this.f, th)) {
                a();
            } else {
                io.reactivex.g.a.onError(th);
            }
        }
    }

    interface b {
        void innerClose(boolean z, c cVar);

        void innerCloseError(Throwable th);

        void innerComplete(d dVar);

        void innerError(Throwable th);

        void innerValue(boolean z, Object obj);
    }

    static final class c extends AtomicReference<io.reactivex.b.c> implements ag<Object>, io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final b f7208a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f7209b;
        final int c;

        c(b bVar, boolean z, int i) {
            this.f7208a = bVar;
            this.f7209b = z;
            this.c = i;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((io.reactivex.b.c) get());
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onNext(Object obj) {
            if (DisposableHelper.dispose(this)) {
                this.f7208a.innerClose(this.f7209b, this);
            }
        }

        public final void onError(Throwable th) {
            this.f7208a.innerCloseError(th);
        }

        public final void onComplete() {
            this.f7208a.innerClose(this.f7209b, this);
        }
    }

    static final class d extends AtomicReference<io.reactivex.b.c> implements ag<Object>, io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final b f7210a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f7211b;

        d(b bVar, boolean z) {
            this.f7210a = bVar;
            this.f7211b = z;
        }

        public final void dispose() {
            DisposableHelper.dispose(this);
        }

        public final boolean isDisposed() {
            return DisposableHelper.isDisposed((io.reactivex.b.c) get());
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            DisposableHelper.setOnce(this, cVar);
        }

        public final void onNext(Object obj) {
            this.f7210a.innerValue(this.f7211b, obj);
        }

        public final void onError(Throwable th) {
            this.f7210a.innerError(th);
        }

        public final void onComplete() {
            this.f7210a.innerComplete(this);
        }
    }

    public bk(ae<TLeft> aeVar, ae<? extends TRight> aeVar2, h<? super TLeft, ? extends ae<TLeftEnd>> hVar, h<? super TRight, ? extends ae<TRightEnd>> hVar2, io.reactivex.e.c<? super TLeft, ? super z<TRight>, ? extends R> cVar) {
        super(aeVar);
        this.f7205b = aeVar2;
        this.c = hVar;
        this.d = hVar2;
        this.e = cVar;
    }

    public final void subscribeActual(ag<? super R> agVar) {
        a aVar = new a(agVar, this.c, this.d, this.e);
        agVar.onSubscribe(aVar);
        d dVar = new d(aVar, true);
        aVar.c.add(dVar);
        d dVar2 = new d(aVar, false);
        aVar.c.add(dVar2);
        this.f7091a.subscribe(dVar);
        this.f7205b.subscribe(dVar2);
    }
}
