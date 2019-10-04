package io.reactivex.internal.operators.flowable;

import io.reactivex.BackpressureStrategy;
import io.reactivex.internal.b.i;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.j;
import io.reactivex.l;
import io.reactivex.m;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class af<T> extends j<T> {

    /* renamed from: b  reason: collision with root package name */
    final m<T> f7935b;
    final BackpressureStrategy c;

    /* renamed from: io.reactivex.internal.operators.flowable.af$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7936a = new int[BackpressureStrategy.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(10:0|1|2|3|4|5|6|7|8|10) */
        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|(3:7|8|10)) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x002a */
        static {
            /*
                io.reactivex.BackpressureStrategy[] r0 = io.reactivex.BackpressureStrategy.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f7936a = r0
                int[] r0 = f7936a     // Catch:{ NoSuchFieldError -> 0x0014 }
                io.reactivex.BackpressureStrategy r1 = io.reactivex.BackpressureStrategy.MISSING     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f7936a     // Catch:{ NoSuchFieldError -> 0x001f }
                io.reactivex.BackpressureStrategy r1 = io.reactivex.BackpressureStrategy.ERROR     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f7936a     // Catch:{ NoSuchFieldError -> 0x002a }
                io.reactivex.BackpressureStrategy r1 = io.reactivex.BackpressureStrategy.DROP     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                int[] r0 = f7936a     // Catch:{ NoSuchFieldError -> 0x0035 }
                io.reactivex.BackpressureStrategy r1 = io.reactivex.BackpressureStrategy.LATEST     // Catch:{ NoSuchFieldError -> 0x0035 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0035 }
                r2 = 4
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0035 }
            L_0x0035:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.flowable.af.AnonymousClass1.<clinit>():void");
        }
    }

    static abstract class a<T> extends AtomicLong implements l<T>, org.b.d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f7937a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.disposables.f f7938b = new io.reactivex.internal.disposables.f();

        /* access modifiers changed from: package-private */
        public void b() {
        }

        /* access modifiers changed from: package-private */
        public void c() {
        }

        a(org.b.c<? super T> cVar) {
            this.f7937a = cVar;
        }

        public void onComplete() {
            a();
        }

        /* access modifiers changed from: protected */
        public final void a() {
            if (!isCancelled()) {
                try {
                    this.f7937a.onComplete();
                } finally {
                    this.f7938b.dispose();
                }
            }
        }

        public final void onError(Throwable th) {
            if (!tryOnError(th)) {
                io.reactivex.g.a.onError(th);
            }
        }

        public boolean tryOnError(Throwable th) {
            return a(th);
        }

        /* JADX INFO: finally extract failed */
        /* access modifiers changed from: protected */
        public final boolean a(Throwable th) {
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            if (isCancelled()) {
                return false;
            }
            try {
                this.f7937a.onError(th);
                this.f7938b.dispose();
                return true;
            } catch (Throwable th2) {
                this.f7938b.dispose();
                throw th2;
            }
        }

        public final void cancel() {
            this.f7938b.dispose();
            b();
        }

        public final boolean isCancelled() {
            return this.f7938b.isDisposed();
        }

        public final void request(long j) {
            if (SubscriptionHelper.validate(j)) {
                io.reactivex.internal.util.c.add(this, j);
                c();
            }
        }

        public final void setDisposable(io.reactivex.b.c cVar) {
            this.f7938b.update(cVar);
        }

        public final void setCancellable(io.reactivex.e.f fVar) {
            setDisposable(new io.reactivex.internal.disposables.b(fVar));
        }

        public final long requested() {
            return get();
        }

        public final l<T> serialize() {
            return new h(this);
        }

        public String toString() {
            return String.format("%s{%s}", new Object[]{getClass().getSimpleName(), super.toString()});
        }
    }

    static final class b<T> extends a<T> {
        final io.reactivex.internal.d.c<T> c;
        Throwable d;
        volatile boolean e;
        final AtomicInteger f = new AtomicInteger();

        b(org.b.c<? super T> cVar, int i) {
            super(cVar);
            this.c = new io.reactivex.internal.d.c<>(i);
        }

        public final void onNext(T t) {
            if (!this.e && !isCancelled()) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.c.offer(t);
                    d();
                }
            }
        }

        public final boolean tryOnError(Throwable th) {
            if (this.e || isCancelled()) {
                return false;
            }
            if (th == null) {
                th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
            }
            this.d = th;
            this.e = true;
            d();
            return true;
        }

        public final void onComplete() {
            this.e = true;
            d();
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            d();
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            if (this.f.getAndIncrement() == 0) {
                this.c.clear();
            }
        }

        private void d() {
            if (this.f.getAndIncrement() == 0) {
                org.b.c cVar = this.f7937a;
                io.reactivex.internal.d.c<T> cVar2 = this.c;
                int i = 1;
                do {
                    long j = get();
                    long j2 = 0;
                    while (j2 != j) {
                        if (isCancelled()) {
                            cVar2.clear();
                            return;
                        }
                        boolean z = this.e;
                        T poll = cVar2.poll();
                        boolean z2 = poll == null;
                        if (!z || !z2) {
                            if (z2) {
                                break;
                            }
                            cVar.onNext(poll);
                            j2++;
                        } else {
                            Throwable th = this.d;
                            if (th != null) {
                                a(th);
                                return;
                            } else {
                                a();
                                return;
                            }
                        }
                    }
                    if (j2 == j) {
                        if (isCancelled()) {
                            cVar2.clear();
                            return;
                        }
                        boolean z3 = this.e;
                        boolean isEmpty = cVar2.isEmpty();
                        if (z3 && isEmpty) {
                            Throwable th2 = this.d;
                            if (th2 != null) {
                                a(th2);
                                return;
                            } else {
                                a();
                                return;
                            }
                        }
                    }
                    if (j2 != 0) {
                        io.reactivex.internal.util.c.produced(this, j2);
                    }
                    i = this.f.addAndGet(-i);
                } while (i != 0);
            }
        }
    }

    static final class c<T> extends g<T> {
        /* access modifiers changed from: package-private */
        public final void d() {
        }

        c(org.b.c<? super T> cVar) {
            super(cVar);
        }
    }

    static final class d<T> extends g<T> {
        d(org.b.c<? super T> cVar) {
            super(cVar);
        }

        /* access modifiers changed from: package-private */
        public final void d() {
            onError(new io.reactivex.c.c("create: could not emit value due to lack of requests"));
        }
    }

    static final class e<T> extends a<T> {
        final AtomicReference<T> c = new AtomicReference<>();
        Throwable d;
        volatile boolean e;
        final AtomicInteger f = new AtomicInteger();

        e(org.b.c<? super T> cVar) {
            super(cVar);
        }

        public final void onNext(T t) {
            if (!this.e && !isCancelled()) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else {
                    this.c.set(t);
                    d();
                }
            }
        }

        public final boolean tryOnError(Throwable th) {
            if (this.e || isCancelled()) {
                return false;
            }
            if (th == null) {
                onError(new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources."));
            }
            this.d = th;
            this.e = true;
            d();
            return true;
        }

        public final void onComplete() {
            this.e = true;
            d();
        }

        /* access modifiers changed from: package-private */
        public final void c() {
            d();
        }

        /* access modifiers changed from: package-private */
        public final void b() {
            if (this.f.getAndIncrement() == 0) {
                this.c.lazySet(null);
            }
        }

        private void d() {
            boolean z;
            if (this.f.getAndIncrement() == 0) {
                org.b.c cVar = this.f7937a;
                AtomicReference<T> atomicReference = this.c;
                int i = 1;
                do {
                    long j = get();
                    long j2 = 0;
                    while (true) {
                        z = false;
                        if (j2 == j) {
                            break;
                        } else if (isCancelled()) {
                            atomicReference.lazySet(null);
                            return;
                        } else {
                            boolean z2 = this.e;
                            T andSet = atomicReference.getAndSet(null);
                            boolean z3 = andSet == null;
                            if (!z2 || !z3) {
                                if (z3) {
                                    break;
                                }
                                cVar.onNext(andSet);
                                j2++;
                            } else {
                                Throwable th = this.d;
                                if (th != null) {
                                    a(th);
                                    return;
                                } else {
                                    a();
                                    return;
                                }
                            }
                        }
                    }
                    if (j2 == j) {
                        if (isCancelled()) {
                            atomicReference.lazySet(null);
                            return;
                        }
                        boolean z4 = this.e;
                        if (atomicReference.get() == null) {
                            z = true;
                        }
                        if (z4 && z) {
                            Throwable th2 = this.d;
                            if (th2 != null) {
                                a(th2);
                                return;
                            } else {
                                a();
                                return;
                            }
                        }
                    }
                    if (j2 != 0) {
                        io.reactivex.internal.util.c.produced(this, j2);
                    }
                    i = this.f.addAndGet(-i);
                } while (i != 0);
            }
        }
    }

    static final class f<T> extends a<T> {
        f(org.b.c<? super T> cVar) {
            super(cVar);
        }

        public final void onNext(T t) {
            long j;
            if (!isCancelled()) {
                if (t != null) {
                    this.f7937a.onNext(t);
                    do {
                        j = get();
                        if (j == 0) {
                            break;
                        }
                    } while (!compareAndSet(j, j - 1));
                    return;
                }
                onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
            }
        }
    }

    static abstract class g<T> extends a<T> {
        /* access modifiers changed from: package-private */
        public abstract void d();

        g(org.b.c<? super T> cVar) {
            super(cVar);
        }

        public final void onNext(T t) {
            if (!isCancelled()) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                } else if (get() != 0) {
                    this.f7937a.onNext(t);
                    io.reactivex.internal.util.c.produced(this, 1);
                } else {
                    d();
                }
            }
        }
    }

    static final class h<T> extends AtomicInteger implements l<T> {

        /* renamed from: a  reason: collision with root package name */
        final a<T> f7939a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.internal.util.b f7940b = new io.reactivex.internal.util.b();
        final i<T> c = new io.reactivex.internal.d.c(16);
        volatile boolean d;

        public final l<T> serialize() {
            return this;
        }

        h(a<T> aVar) {
            this.f7939a = aVar;
        }

        public final void onNext(T t) {
            if (!this.f7939a.isCancelled() && !this.d) {
                if (t == null) {
                    onError(new NullPointerException("onNext called with null. Null values are generally not allowed in 2.x operators and sources."));
                    return;
                }
                if (get() != 0 || !compareAndSet(0, 1)) {
                    i<T> iVar = this.c;
                    synchronized (iVar) {
                        iVar.offer(t);
                    }
                    if (getAndIncrement() != 0) {
                        return;
                    }
                } else {
                    this.f7939a.onNext(t);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                b();
            }
        }

        public final void onError(Throwable th) {
            if (!tryOnError(th)) {
                io.reactivex.g.a.onError(th);
            }
        }

        public final boolean tryOnError(Throwable th) {
            if (!this.f7939a.isCancelled() && !this.d) {
                if (th == null) {
                    th = new NullPointerException("onError called with null. Null values are generally not allowed in 2.x operators and sources.");
                }
                if (this.f7940b.addThrowable(th)) {
                    this.d = true;
                    a();
                    return true;
                }
            }
            return false;
        }

        public final void onComplete() {
            if (!this.f7939a.isCancelled() && !this.d) {
                this.d = true;
                a();
            }
        }

        private void a() {
            if (getAndIncrement() == 0) {
                b();
            }
        }

        private void b() {
            a<T> aVar = this.f7939a;
            i<T> iVar = this.c;
            io.reactivex.internal.util.b bVar = this.f7940b;
            int i = 1;
            while (!aVar.isCancelled()) {
                if (bVar.get() != null) {
                    iVar.clear();
                    aVar.onError(bVar.terminate());
                    return;
                }
                boolean z = this.d;
                T poll = iVar.poll();
                boolean z2 = poll == null;
                if (z && z2) {
                    aVar.onComplete();
                    return;
                } else if (!z2) {
                    aVar.onNext(poll);
                } else {
                    i = addAndGet(-i);
                    if (i == 0) {
                        return;
                    }
                }
            }
            iVar.clear();
        }

        public final void setDisposable(io.reactivex.b.c cVar) {
            this.f7939a.setDisposable(cVar);
        }

        public final void setCancellable(io.reactivex.e.f fVar) {
            this.f7939a.setCancellable(fVar);
        }

        public final long requested() {
            return this.f7939a.requested();
        }

        public final boolean isCancelled() {
            return this.f7939a.isCancelled();
        }

        public final String toString() {
            return this.f7939a.toString();
        }
    }

    public af(m<T> mVar, BackpressureStrategy backpressureStrategy) {
        this.f7935b = mVar;
        this.c = backpressureStrategy;
    }

    public final void subscribeActual(org.b.c<? super T> cVar) {
        a aVar;
        int i = AnonymousClass1.f7936a[this.c.ordinal()];
        if (i == 1) {
            aVar = new f(cVar);
        } else if (i == 2) {
            aVar = new d(cVar);
        } else if (i == 3) {
            aVar = new c(cVar);
        } else if (i != 4) {
            aVar = new b(cVar, bufferSize());
        } else {
            aVar = new e(cVar);
        }
        cVar.onSubscribe(aVar);
        try {
            this.f7935b.subscribe(aVar);
        } catch (Throwable th) {
            io.reactivex.c.b.throwIfFatal(th);
            aVar.onError(th);
        }
    }
}
