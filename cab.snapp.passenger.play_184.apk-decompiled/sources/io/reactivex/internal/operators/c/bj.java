package io.reactivex.internal.operators.c;

import io.reactivex.ae;
import io.reactivex.ag;
import io.reactivex.e.h;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

public final class bj<T, K, V> extends a<T, io.reactivex.f.b<K, V>> {

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends K> f7199b;
    final h<? super T, ? extends V> c;
    final int d;
    final boolean e;

    public static final class a<T, K, V> extends AtomicInteger implements ag<T>, io.reactivex.b.c {
        static final Object g = new Object();

        /* renamed from: a  reason: collision with root package name */
        final ag<? super io.reactivex.f.b<K, V>> f7200a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends K> f7201b;
        final h<? super T, ? extends V> c;
        final int d;
        final boolean e;
        final Map<Object, b<K, V>> f;
        io.reactivex.b.c h;
        final AtomicBoolean i = new AtomicBoolean();

        public a(ag<? super io.reactivex.f.b<K, V>> agVar, h<? super T, ? extends K> hVar, h<? super T, ? extends V> hVar2, int i2, boolean z) {
            this.f7200a = agVar;
            this.f7201b = hVar;
            this.c = hVar2;
            this.d = i2;
            this.e = z;
            this.f = new ConcurrentHashMap();
            lazySet(1);
        }

        public final void onSubscribe(io.reactivex.b.c cVar) {
            if (DisposableHelper.validate(this.h, cVar)) {
                this.h = cVar;
                this.f7200a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            Object obj;
            try {
                Object apply = this.f7201b.apply(t);
                if (apply != null) {
                    obj = apply;
                } else {
                    obj = g;
                }
                b bVar = this.f.get(obj);
                if (bVar == null) {
                    if (!this.i.get()) {
                        bVar = b.createWith(apply, this.d, this, this.e);
                        this.f.put(obj, bVar);
                        getAndIncrement();
                        this.f7200a.onNext(bVar);
                    } else {
                        return;
                    }
                }
                try {
                    bVar.onNext(io.reactivex.internal.a.b.requireNonNull(this.c.apply(t), "The value supplied is null"));
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    this.h.dispose();
                    onError(th);
                }
            } catch (Throwable th2) {
                io.reactivex.c.b.throwIfFatal(th2);
                this.h.dispose();
                onError(th2);
            }
        }

        public final void onError(Throwable th) {
            ArrayList<b> arrayList = new ArrayList<>(this.f.values());
            this.f.clear();
            for (b onError : arrayList) {
                onError.onError(th);
            }
            this.f7200a.onError(th);
        }

        public final void onComplete() {
            ArrayList<b> arrayList = new ArrayList<>(this.f.values());
            this.f.clear();
            for (b onComplete : arrayList) {
                onComplete.onComplete();
            }
            this.f7200a.onComplete();
        }

        public final void dispose() {
            if (this.i.compareAndSet(false, true) && decrementAndGet() == 0) {
                this.h.dispose();
            }
        }

        public final boolean isDisposed() {
            return this.i.get();
        }

        public final void cancel(K k) {
            if (k == null) {
                k = g;
            }
            this.f.remove(k);
            if (decrementAndGet() == 0) {
                this.h.dispose();
            }
        }
    }

    static final class b<K, T> extends io.reactivex.f.b<K, T> {

        /* renamed from: a  reason: collision with root package name */
        final c<T, K> f7202a;

        public static <T, K> b<K, T> createWith(K k, int i, a<?, K, T> aVar, boolean z) {
            return new b<>(k, new c(i, aVar, k, z));
        }

        private b(K k, c<T, K> cVar) {
            super(k);
            this.f7202a = cVar;
        }

        public final void subscribeActual(ag<? super T> agVar) {
            this.f7202a.subscribe(agVar);
        }

        public final void onNext(T t) {
            this.f7202a.onNext(t);
        }

        public final void onError(Throwable th) {
            this.f7202a.onError(th);
        }

        public final void onComplete() {
            this.f7202a.onComplete();
        }
    }

    static final class c<T, K> extends AtomicInteger implements ae<T>, io.reactivex.b.c {

        /* renamed from: a  reason: collision with root package name */
        final K f7203a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.d.c<T> f7204b;
        final a<?, K, T> c;
        final boolean d;
        volatile boolean e;
        Throwable f;
        final AtomicBoolean g = new AtomicBoolean();
        final AtomicBoolean h = new AtomicBoolean();
        final AtomicReference<ag<? super T>> i = new AtomicReference<>();

        c(int i2, a<?, K, T> aVar, K k, boolean z) {
            this.f7204b = new io.reactivex.internal.d.c<>(i2);
            this.c = aVar;
            this.f7203a = k;
            this.d = z;
        }

        public final void dispose() {
            if (this.g.compareAndSet(false, true) && getAndIncrement() == 0) {
                this.i.lazySet(null);
                this.c.cancel(this.f7203a);
            }
        }

        public final boolean isDisposed() {
            return this.g.get();
        }

        public final void subscribe(ag<? super T> agVar) {
            if (this.h.compareAndSet(false, true)) {
                agVar.onSubscribe(this);
                this.i.lazySet(agVar);
                if (this.g.get()) {
                    this.i.lazySet(null);
                } else {
                    a();
                }
            } else {
                EmptyDisposable.error((Throwable) new IllegalStateException("Only one Observer allowed!"), (ag<?>) agVar);
            }
        }

        public final void onNext(T t) {
            this.f7204b.offer(t);
            a();
        }

        public final void onError(Throwable th) {
            this.f = th;
            this.e = true;
            a();
        }

        public final void onComplete() {
            this.e = true;
            a();
        }

        private void a() {
            if (getAndIncrement() == 0) {
                io.reactivex.internal.d.c<T> cVar = this.f7204b;
                boolean z = this.d;
                ag agVar = this.i.get();
                int i2 = 1;
                while (true) {
                    if (agVar != null) {
                        while (true) {
                            boolean z2 = this.e;
                            T poll = cVar.poll();
                            boolean z3 = poll == null;
                            if (!a(z2, z3, agVar, z)) {
                                if (z3) {
                                    break;
                                }
                                agVar.onNext(poll);
                            } else {
                                return;
                            }
                        }
                    }
                    i2 = addAndGet(-i2);
                    if (i2 == 0) {
                        return;
                    }
                    if (agVar == null) {
                        agVar = this.i.get();
                    }
                }
            }
        }

        private boolean a(boolean z, boolean z2, ag<? super T> agVar, boolean z3) {
            if (this.g.get()) {
                this.f7204b.clear();
                this.c.cancel(this.f7203a);
                this.i.lazySet(null);
                return true;
            }
            if (z) {
                if (!z3) {
                    Throwable th = this.f;
                    if (th != null) {
                        this.f7204b.clear();
                        this.i.lazySet(null);
                        agVar.onError(th);
                        return true;
                    } else if (z2) {
                        this.i.lazySet(null);
                        agVar.onComplete();
                        return true;
                    }
                } else if (z2) {
                    Throwable th2 = this.f;
                    this.i.lazySet(null);
                    if (th2 != null) {
                        agVar.onError(th2);
                    } else {
                        agVar.onComplete();
                    }
                    return true;
                }
            }
            return false;
        }
    }

    public bj(ae<T> aeVar, h<? super T, ? extends K> hVar, h<? super T, ? extends V> hVar2, int i, boolean z) {
        super(aeVar);
        this.f7199b = hVar;
        this.c = hVar2;
        this.d = i;
        this.e = z;
    }

    public final void subscribeActual(ag<? super io.reactivex.f.b<K, V>> agVar) {
        ae aeVar = this.f7091a;
        a aVar = new a(agVar, this.f7199b, this.c, this.d, this.e);
        aeVar.subscribe(aVar);
    }
}
