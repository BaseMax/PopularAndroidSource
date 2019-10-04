package io.reactivex.internal.operators.d;

import io.reactivex.e.g;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFailureHandling;
import org.b.d;

public final class c<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f7649a;

    /* renamed from: b  reason: collision with root package name */
    final g<? super T> f7650b;
    final io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> c;

    /* renamed from: io.reactivex.internal.operators.d.c$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7651a = new int[ParallelFailureHandling.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        static {
            /*
                io.reactivex.parallel.ParallelFailureHandling[] r0 = io.reactivex.parallel.ParallelFailureHandling.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f7651a = r0
                int[] r0 = f7651a     // Catch:{ NoSuchFieldError -> 0x0014 }
                io.reactivex.parallel.ParallelFailureHandling r1 = io.reactivex.parallel.ParallelFailureHandling.RETRY     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f7651a     // Catch:{ NoSuchFieldError -> 0x001f }
                io.reactivex.parallel.ParallelFailureHandling r1 = io.reactivex.parallel.ParallelFailureHandling.SKIP     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f7651a     // Catch:{ NoSuchFieldError -> 0x002a }
                io.reactivex.parallel.ParallelFailureHandling r1 = io.reactivex.parallel.ParallelFailureHandling.STOP     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.d.c.AnonymousClass1.<clinit>():void");
        }
    }

    static final class a<T> implements io.reactivex.internal.b.a<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.internal.b.a<? super T> f7652a;

        /* renamed from: b  reason: collision with root package name */
        final g<? super T> f7653b;
        final io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> c;
        d d;
        boolean e;

        a(io.reactivex.internal.b.a<? super T> aVar, g<? super T> gVar, io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            this.f7652a = aVar;
            this.f7653b = gVar;
            this.c = cVar;
        }

        public final void request(long j) {
            this.d.request(j);
        }

        public final void cancel() {
            this.d.cancel();
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.d = dVar;
                this.f7652a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!tryOnNext(t) && !this.e) {
                this.d.request(1);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:15:0x003b  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final boolean tryOnNext(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.e
                r1 = 0
                if (r0 == 0) goto L_0x0006
                return r1
            L_0x0006:
                r2 = 0
            L_0x0008:
                io.reactivex.e.g<? super T> r0 = r9.f7653b     // Catch:{ all -> 0x0014 }
                r0.accept(r10)     // Catch:{ all -> 0x0014 }
                io.reactivex.internal.b.a<? super T> r0 = r9.f7652a
                boolean r10 = r0.tryOnNext(r10)
                return r10
            L_0x0014:
                r0 = move-exception
                io.reactivex.c.b.throwIfFatal(r0)
                r4 = 1
                r5 = 2
                io.reactivex.e.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.c     // Catch:{ all -> 0x004c }
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x004c }
                java.lang.Object r6 = r6.apply(r7, r0)     // Catch:{ all -> 0x004c }
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.a.b.requireNonNull(r6, (java.lang.String) r7)     // Catch:{ all -> 0x004c }
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch:{ all -> 0x004c }
                int[] r7 = io.reactivex.internal.operators.d.c.AnonymousClass1.f7651a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r4) goto L_0x0008
                if (r6 == r5) goto L_0x004b
                r10 = 3
                if (r6 == r10) goto L_0x0045
                r9.cancel()
                r9.onError(r0)
                return r1
            L_0x0045:
                r9.cancel()
                r9.onComplete()
            L_0x004b:
                return r1
            L_0x004c:
                r10 = move-exception
                io.reactivex.c.b.throwIfFatal(r10)
                r9.cancel()
                io.reactivex.c.a r2 = new io.reactivex.c.a
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r0
                r3[r4] = r10
                r2.<init>((java.lang.Throwable[]) r3)
                r9.onError(r2)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.d.c.a.tryOnNext(java.lang.Object):boolean");
        }

        public final void onError(Throwable th) {
            if (this.e) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.e = true;
            this.f7652a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.f7652a.onComplete();
            }
        }
    }

    static final class b<T> implements io.reactivex.internal.b.a<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super T> f7654a;

        /* renamed from: b  reason: collision with root package name */
        final g<? super T> f7655b;
        final io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> c;
        d d;
        boolean e;

        b(org.b.c<? super T> cVar, g<? super T> gVar, io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar2) {
            this.f7654a = cVar;
            this.f7655b = gVar;
            this.c = cVar2;
        }

        public final void request(long j) {
            this.d.request(j);
        }

        public final void cancel() {
            this.d.cancel();
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.d, dVar)) {
                this.d = dVar;
                this.f7654a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!tryOnNext(t)) {
                this.d.request(1);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:16:0x003a  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final boolean tryOnNext(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.e
                r1 = 0
                if (r0 == 0) goto L_0x0006
                return r1
            L_0x0006:
                r2 = 0
            L_0x0008:
                r0 = 1
                io.reactivex.e.g<? super T> r4 = r9.f7655b     // Catch:{ all -> 0x0014 }
                r4.accept(r10)     // Catch:{ all -> 0x0014 }
                org.b.c<? super T> r1 = r9.f7654a
                r1.onNext(r10)
                return r0
            L_0x0014:
                r4 = move-exception
                io.reactivex.c.b.throwIfFatal(r4)
                r5 = 2
                io.reactivex.e.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.c     // Catch:{ all -> 0x004b }
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x004b }
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch:{ all -> 0x004b }
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.a.b.requireNonNull(r6, (java.lang.String) r7)     // Catch:{ all -> 0x004b }
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch:{ all -> 0x004b }
                int[] r7 = io.reactivex.internal.operators.d.c.AnonymousClass1.f7651a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L_0x0008
                if (r6 == r5) goto L_0x004a
                r10 = 3
                if (r6 == r10) goto L_0x0044
                r9.cancel()
                r9.onError(r4)
                return r1
            L_0x0044:
                r9.cancel()
                r9.onComplete()
            L_0x004a:
                return r1
            L_0x004b:
                r10 = move-exception
                io.reactivex.c.b.throwIfFatal(r10)
                r9.cancel()
                io.reactivex.c.a r2 = new io.reactivex.c.a
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r4
                r3[r0] = r10
                r2.<init>((java.lang.Throwable[]) r3)
                r9.onError(r2)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.d.c.b.tryOnNext(java.lang.Object):boolean");
        }

        public final void onError(Throwable th) {
            if (this.e) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.e = true;
            this.f7654a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.f7654a.onComplete();
            }
        }
    }

    public c(io.reactivex.parallel.a<T> aVar, g<? super T> gVar, io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        this.f7649a = aVar;
        this.f7650b = gVar;
        this.c = cVar;
    }

    public final void subscribe(org.b.c<? super T>[] cVarArr) {
        if (a(cVarArr)) {
            int length = cVarArr.length;
            org.b.c[] cVarArr2 = new org.b.c[length];
            for (int i = 0; i < length; i++) {
                io.reactivex.internal.b.a aVar = cVarArr[i];
                if (aVar instanceof io.reactivex.internal.b.a) {
                    cVarArr2[i] = new a(aVar, this.f7650b, this.c);
                } else {
                    cVarArr2[i] = new b(aVar, this.f7650b, this.c);
                }
            }
            this.f7649a.subscribe(cVarArr2);
        }
    }

    public final int parallelism() {
        return this.f7649a.parallelism();
    }
}
