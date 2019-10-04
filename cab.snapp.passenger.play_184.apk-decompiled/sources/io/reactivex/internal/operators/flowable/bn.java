package io.reactivex.internal.operators.flowable;

import io.reactivex.e.g;
import io.reactivex.e.h;
import io.reactivex.internal.subscriptions.EmptySubscription;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.internal.util.EmptyComponent;
import io.reactivex.j;
import io.reactivex.o;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class bn<T, K, V> extends a<T, io.reactivex.d.b<K, V>> {
    final h<? super T, ? extends K> c;
    final h<? super T, ? extends V> d;
    final int e;
    final boolean f;
    final h<? super g<Object>, ? extends Map<K, Object>> g;

    static final class a<K, V> implements g<c<K, V>> {

        /* renamed from: a  reason: collision with root package name */
        final Queue<c<K, V>> f8037a;

        a(Queue<c<K, V>> queue) {
            this.f8037a = queue;
        }

        public final void accept(c<K, V> cVar) {
            this.f8037a.offer(cVar);
        }
    }

    public static final class b<T, K, V> extends io.reactivex.internal.subscriptions.a<io.reactivex.d.b<K, V>> implements o<T> {
        static final Object i = new Object();

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super io.reactivex.d.b<K, V>> f8038a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends K> f8039b;
        final h<? super T, ? extends V> c;
        final int d;
        final boolean e;
        final Map<Object, c<K, V>> f;
        final io.reactivex.internal.d.c<io.reactivex.d.b<K, V>> g;
        final Queue<c<K, V>> h;
        org.b.d j;
        final AtomicBoolean k = new AtomicBoolean();
        final AtomicLong l = new AtomicLong();
        final AtomicInteger m = new AtomicInteger(1);
        Throwable n;
        volatile boolean o;
        boolean p;
        boolean q;

        public b(org.b.c<? super io.reactivex.d.b<K, V>> cVar, h<? super T, ? extends K> hVar, h<? super T, ? extends V> hVar2, int i2, boolean z, Map<Object, c<K, V>> map, Queue<c<K, V>> queue) {
            this.f8038a = cVar;
            this.f8039b = hVar;
            this.c = hVar2;
            this.d = i2;
            this.e = z;
            this.f = map;
            this.h = queue;
            this.g = new io.reactivex.internal.d.c<>(i2);
        }

        public final void onSubscribe(org.b.d dVar) {
            if (SubscriptionHelper.validate(this.j, dVar)) {
                this.j = dVar;
                this.f8038a.onSubscribe(this);
                dVar.request((long) this.d);
            }
        }

        public final void onNext(T t) {
            Object obj;
            if (!this.p) {
                io.reactivex.internal.d.c<io.reactivex.d.b<K, V>> cVar = this.g;
                try {
                    Object apply = this.f8039b.apply(t);
                    boolean z = false;
                    if (apply != null) {
                        obj = apply;
                    } else {
                        obj = i;
                    }
                    c cVar2 = this.f.get(obj);
                    if (cVar2 == null) {
                        if (!this.k.get()) {
                            cVar2 = c.createWith(apply, this.d, this, this.e);
                            this.f.put(obj, cVar2);
                            this.m.getAndIncrement();
                            z = true;
                        } else {
                            return;
                        }
                    }
                    try {
                        cVar2.onNext(io.reactivex.internal.a.b.requireNonNull(this.c.apply(t), "The valueSelector returned null"));
                        a();
                        if (z) {
                            cVar.offer(cVar2);
                            b();
                        }
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        this.j.cancel();
                        onError(th);
                    }
                } catch (Throwable th2) {
                    io.reactivex.c.b.throwIfFatal(th2);
                    this.j.cancel();
                    onError(th2);
                }
            }
        }

        public final void onError(Throwable th) {
            if (this.p) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.p = true;
            for (c<K, V> onError : this.f.values()) {
                onError.onError(th);
            }
            this.f.clear();
            Queue<c<K, V>> queue = this.h;
            if (queue != null) {
                queue.clear();
            }
            this.n = th;
            this.o = true;
            b();
        }

        public final void onComplete() {
            if (!this.p) {
                for (c<K, V> onComplete : this.f.values()) {
                    onComplete.onComplete();
                }
                this.f.clear();
                Queue<c<K, V>> queue = this.h;
                if (queue != null) {
                    queue.clear();
                }
                this.p = true;
                this.o = true;
                b();
            }
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.l, j2);
                b();
            }
        }

        public final void cancel() {
            if (this.k.compareAndSet(false, true)) {
                a();
                if (this.m.decrementAndGet() == 0) {
                    this.j.cancel();
                }
            }
        }

        private void a() {
            if (this.h != null) {
                int i2 = 0;
                while (true) {
                    c poll = this.h.poll();
                    if (poll == null) {
                        break;
                    }
                    poll.onComplete();
                    i2++;
                }
                if (i2 != 0) {
                    this.m.addAndGet(-i2);
                }
            }
        }

        public final void cancel(K k2) {
            if (k2 == null) {
                k2 = i;
            }
            this.f.remove(k2);
            if (this.m.decrementAndGet() == 0) {
                this.j.cancel();
                if (getAndIncrement() == 0) {
                    this.g.clear();
                }
            }
        }

        private void b() {
            if (getAndIncrement() == 0) {
                if (this.q) {
                    c();
                } else {
                    d();
                }
            }
        }

        private void c() {
            io.reactivex.internal.d.c<io.reactivex.d.b<K, V>> cVar = this.g;
            org.b.c<? super io.reactivex.d.b<K, V>> cVar2 = this.f8038a;
            int i2 = 1;
            while (!this.k.get()) {
                boolean z = this.o;
                if (z && !this.e) {
                    Throwable th = this.n;
                    if (th != null) {
                        cVar.clear();
                        cVar2.onError(th);
                        return;
                    }
                }
                cVar2.onNext(null);
                if (z) {
                    Throwable th2 = this.n;
                    if (th2 != null) {
                        cVar2.onError(th2);
                        return;
                    } else {
                        cVar2.onComplete();
                        return;
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

        private void d() {
            io.reactivex.internal.d.c<io.reactivex.d.b<K, V>> cVar = this.g;
            org.b.c<? super io.reactivex.d.b<K, V>> cVar2 = this.f8038a;
            int i2 = 1;
            do {
                long j2 = this.l.get();
                long j3 = 0;
                while (j3 != j2) {
                    boolean z = this.o;
                    io.reactivex.d.b poll = cVar.poll();
                    boolean z2 = poll == null;
                    if (!a(z, z2, cVar2, cVar)) {
                        if (z2) {
                            break;
                        }
                        cVar2.onNext(poll);
                        j3++;
                    } else {
                        return;
                    }
                }
                if (j3 != j2 || !a(this.o, cVar.isEmpty(), cVar2, cVar)) {
                    if (j3 != 0) {
                        if (j2 != Long.MAX_VALUE) {
                            this.l.addAndGet(-j3);
                        }
                        this.j.request(j3);
                    }
                    i2 = addAndGet(-i2);
                } else {
                    return;
                }
            } while (i2 != 0);
        }

        private boolean a(boolean z, boolean z2, org.b.c<?> cVar, io.reactivex.internal.d.c<?> cVar2) {
            if (this.k.get()) {
                cVar2.clear();
                return true;
            }
            if (this.e) {
                if (z && z2) {
                    Throwable th = this.n;
                    if (th != null) {
                        cVar.onError(th);
                    } else {
                        cVar.onComplete();
                    }
                    return true;
                }
            } else if (z) {
                Throwable th2 = this.n;
                if (th2 != null) {
                    cVar2.clear();
                    cVar.onError(th2);
                    return true;
                } else if (z2) {
                    cVar.onComplete();
                    return true;
                }
            }
            return false;
        }

        public final int requestFusion(int i2) {
            if ((i2 & 2) == 0) {
                return 0;
            }
            this.q = true;
            return 2;
        }

        public final io.reactivex.d.b<K, V> poll() {
            return this.g.poll();
        }

        public final void clear() {
            this.g.clear();
        }

        public final boolean isEmpty() {
            return this.g.isEmpty();
        }
    }

    static final class c<K, T> extends io.reactivex.d.b<K, T> {
        final d<T, K> c;

        public static <T, K> c<K, T> createWith(K k, int i, b<?, K, T> bVar, boolean z) {
            return new c<>(k, new d(i, bVar, k, z));
        }

        private c(K k, d<T, K> dVar) {
            super(k);
            this.c = dVar;
        }

        public final void subscribeActual(org.b.c<? super T> cVar) {
            this.c.subscribe(cVar);
        }

        public final void onNext(T t) {
            this.c.onNext(t);
        }

        public final void onError(Throwable th) {
            this.c.onError(th);
        }

        public final void onComplete() {
            this.c.onComplete();
        }
    }

    static final class d<T, K> extends io.reactivex.internal.subscriptions.a<T> implements org.b.b<T> {

        /* renamed from: a  reason: collision with root package name */
        final K f8040a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.d.c<T> f8041b;
        final b<?, K, T> c;
        final boolean d;
        final AtomicLong e = new AtomicLong();
        volatile boolean f;
        Throwable g;
        final AtomicBoolean h = new AtomicBoolean();
        final AtomicReference<org.b.c<? super T>> i = new AtomicReference<>();
        final AtomicBoolean j = new AtomicBoolean();
        boolean k;
        int l;

        d(int i2, b<?, K, T> bVar, K k2, boolean z) {
            this.f8041b = new io.reactivex.internal.d.c<>(i2);
            this.c = bVar;
            this.f8040a = k2;
            this.d = z;
        }

        public final void request(long j2) {
            if (SubscriptionHelper.validate(j2)) {
                io.reactivex.internal.util.c.add(this.e, j2);
                a();
            }
        }

        public final void cancel() {
            if (this.h.compareAndSet(false, true)) {
                this.c.cancel(this.f8040a);
            }
        }

        public final void subscribe(org.b.c<? super T> cVar) {
            if (this.j.compareAndSet(false, true)) {
                cVar.onSubscribe(this);
                this.i.lazySet(cVar);
                a();
                return;
            }
            EmptySubscription.error(new IllegalStateException("Only one Subscriber allowed!"), cVar);
        }

        public final void onNext(T t) {
            this.f8041b.offer(t);
            a();
        }

        public final void onError(Throwable th) {
            this.g = th;
            this.f = true;
            a();
        }

        public final void onComplete() {
            this.f = true;
            a();
        }

        private void a() {
            if (getAndIncrement() == 0) {
                if (this.k) {
                    b();
                } else {
                    c();
                }
            }
        }

        private void b() {
            io.reactivex.internal.d.c<T> cVar = this.f8041b;
            org.b.c cVar2 = this.i.get();
            int i2 = 1;
            while (true) {
                if (cVar2 != null) {
                    if (this.h.get()) {
                        cVar.clear();
                        return;
                    }
                    boolean z = this.f;
                    if (z && !this.d) {
                        Throwable th = this.g;
                        if (th != null) {
                            cVar.clear();
                            cVar2.onError(th);
                            return;
                        }
                    }
                    cVar2.onNext(null);
                    if (z) {
                        Throwable th2 = this.g;
                        if (th2 != null) {
                            cVar2.onError(th2);
                            return;
                        } else {
                            cVar2.onComplete();
                            return;
                        }
                    }
                }
                i2 = addAndGet(-i2);
                if (i2 != 0) {
                    if (cVar2 == null) {
                        cVar2 = this.i.get();
                    }
                } else {
                    return;
                }
            }
        }

        private void c() {
            io.reactivex.internal.d.c<T> cVar = this.f8041b;
            boolean z = this.d;
            org.b.c cVar2 = this.i.get();
            int i2 = 1;
            while (true) {
                if (cVar2 != null) {
                    long j2 = this.e.get();
                    long j3 = 0;
                    while (j3 != j2) {
                        boolean z2 = this.f;
                        T poll = cVar.poll();
                        boolean z3 = poll == null;
                        if (!a(z2, z3, cVar2, z)) {
                            if (z3) {
                                break;
                            }
                            cVar2.onNext(poll);
                            j3++;
                        } else {
                            return;
                        }
                    }
                    if (j3 == j2 && a(this.f, cVar.isEmpty(), cVar2, z)) {
                        return;
                    }
                    if (j3 != 0) {
                        if (j2 != Long.MAX_VALUE) {
                            this.e.addAndGet(-j3);
                        }
                        this.c.j.request(j3);
                    }
                }
                i2 = addAndGet(-i2);
                if (i2 == 0) {
                    return;
                }
                if (cVar2 == null) {
                    cVar2 = this.i.get();
                }
            }
        }

        private boolean a(boolean z, boolean z2, org.b.c<? super T> cVar, boolean z3) {
            if (this.h.get()) {
                this.f8041b.clear();
                return true;
            }
            if (z) {
                if (!z3) {
                    Throwable th = this.g;
                    if (th != null) {
                        this.f8041b.clear();
                        cVar.onError(th);
                        return true;
                    } else if (z2) {
                        cVar.onComplete();
                        return true;
                    }
                } else if (z2) {
                    Throwable th2 = this.g;
                    if (th2 != null) {
                        cVar.onError(th2);
                    } else {
                        cVar.onComplete();
                    }
                    return true;
                }
            }
            return false;
        }

        public final int requestFusion(int i2) {
            if ((i2 & 2) == 0) {
                return 0;
            }
            this.k = true;
            return 2;
        }

        public final T poll() {
            T poll = this.f8041b.poll();
            if (poll != null) {
                this.l++;
                return poll;
            }
            int i2 = this.l;
            if (i2 != 0) {
                this.l = 0;
                this.c.j.request((long) i2);
            }
            return null;
        }

        public final boolean isEmpty() {
            return this.f8041b.isEmpty();
        }

        public final void clear() {
            this.f8041b.clear();
        }
    }

    public bn(j<T> jVar, h<? super T, ? extends K> hVar, h<? super T, ? extends V> hVar2, int i, boolean z, h<? super g<Object>, ? extends Map<K, Object>> hVar3) {
        super(jVar);
        this.c = hVar;
        this.d = hVar2;
        this.e = i;
        this.f = z;
        this.g = hVar3;
    }

    public final void subscribeActual(org.b.c<? super io.reactivex.d.b<K, V>> cVar) {
        ConcurrentLinkedQueue concurrentLinkedQueue;
        Map map;
        try {
            if (this.g == null) {
                concurrentLinkedQueue = null;
                map = new ConcurrentHashMap();
            } else {
                concurrentLinkedQueue = new ConcurrentLinkedQueue();
                map = (Map) this.g.apply(new a(concurrentLinkedQueue));
            }
            b bVar = new b(cVar, this.c, this.d, this.e, this.f, map, concurrentLinkedQueue);
            this.f7923b.subscribe(bVar);
        } catch (Exception e2) {
            io.reactivex.c.b.throwIfFatal(e2);
            cVar.onSubscribe(EmptyComponent.INSTANCE);
            cVar.onError(e2);
        }
    }
}
