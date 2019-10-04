package io.reactivex.internal.operators.d;

import io.reactivex.e.c;
import io.reactivex.e.h;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFailureHandling;
import org.b.d;

public final class k<T, R> extends io.reactivex.parallel.a<R> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f7685a;

    /* renamed from: b  reason: collision with root package name */
    final h<? super T, ? extends R> f7686b;
    final c<? super Long, ? super Throwable, ParallelFailureHandling> c;

    /* renamed from: io.reactivex.internal.operators.d.k$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7687a = new int[ParallelFailureHandling.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        static {
            /*
                io.reactivex.parallel.ParallelFailureHandling[] r0 = io.reactivex.parallel.ParallelFailureHandling.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f7687a = r0
                int[] r0 = f7687a     // Catch:{ NoSuchFieldError -> 0x0014 }
                io.reactivex.parallel.ParallelFailureHandling r1 = io.reactivex.parallel.ParallelFailureHandling.RETRY     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f7687a     // Catch:{ NoSuchFieldError -> 0x001f }
                io.reactivex.parallel.ParallelFailureHandling r1 = io.reactivex.parallel.ParallelFailureHandling.SKIP     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f7687a     // Catch:{ NoSuchFieldError -> 0x002a }
                io.reactivex.parallel.ParallelFailureHandling r1 = io.reactivex.parallel.ParallelFailureHandling.STOP     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.d.k.AnonymousClass1.<clinit>():void");
        }
    }

    static final class a<T, R> implements io.reactivex.internal.b.a<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final io.reactivex.internal.b.a<? super R> f7688a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends R> f7689b;
        final c<? super Long, ? super Throwable, ParallelFailureHandling> c;
        d d;
        boolean e;

        a(io.reactivex.internal.b.a<? super R> aVar, h<? super T, ? extends R> hVar, c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            this.f7688a = aVar;
            this.f7689b = hVar;
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
                this.f7688a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!tryOnNext(t) && !this.e) {
                this.d.request(1);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:15:0x0042  */
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
                io.reactivex.e.h<? super T, ? extends R> r0 = r9.f7689b     // Catch:{ all -> 0x001b }
                java.lang.Object r0 = r0.apply(r10)     // Catch:{ all -> 0x001b }
                java.lang.String r4 = "The mapper returned a null value"
                java.lang.Object r10 = io.reactivex.internal.a.b.requireNonNull(r0, (java.lang.String) r4)     // Catch:{ all -> 0x001b }
                io.reactivex.internal.b.a<? super R> r0 = r9.f7688a
                boolean r10 = r0.tryOnNext(r10)
                return r10
            L_0x001b:
                r0 = move-exception
                io.reactivex.c.b.throwIfFatal(r0)
                r4 = 1
                r5 = 2
                io.reactivex.e.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.c     // Catch:{ all -> 0x0053 }
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x0053 }
                java.lang.Object r6 = r6.apply(r7, r0)     // Catch:{ all -> 0x0053 }
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.a.b.requireNonNull(r6, (java.lang.String) r7)     // Catch:{ all -> 0x0053 }
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch:{ all -> 0x0053 }
                int[] r7 = io.reactivex.internal.operators.d.k.AnonymousClass1.f7687a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r4) goto L_0x0008
                if (r6 == r5) goto L_0x0052
                r10 = 3
                if (r6 == r10) goto L_0x004c
                r9.cancel()
                r9.onError(r0)
                return r1
            L_0x004c:
                r9.cancel()
                r9.onComplete()
            L_0x0052:
                return r1
            L_0x0053:
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.d.k.a.tryOnNext(java.lang.Object):boolean");
        }

        public final void onError(Throwable th) {
            if (this.e) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.e = true;
            this.f7688a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.f7688a.onComplete();
            }
        }
    }

    static final class b<T, R> implements io.reactivex.internal.b.a<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final org.b.c<? super R> f7690a;

        /* renamed from: b  reason: collision with root package name */
        final h<? super T, ? extends R> f7691b;
        final c<? super Long, ? super Throwable, ParallelFailureHandling> c;
        d d;
        boolean e;

        b(org.b.c<? super R> cVar, h<? super T, ? extends R> hVar, c<? super Long, ? super Throwable, ParallelFailureHandling> cVar2) {
            this.f7690a = cVar;
            this.f7691b = hVar;
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
                this.f7690a.onSubscribe(this);
            }
        }

        public final void onNext(T t) {
            if (!tryOnNext(t) && !this.e) {
                this.d.request(1);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:16:0x0041  */
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
                io.reactivex.e.h<? super T, ? extends R> r4 = r9.f7691b     // Catch:{ all -> 0x001b }
                java.lang.Object r4 = r4.apply(r10)     // Catch:{ all -> 0x001b }
                java.lang.String r5 = "The mapper returned a null value"
                java.lang.Object r10 = io.reactivex.internal.a.b.requireNonNull(r4, (java.lang.String) r5)     // Catch:{ all -> 0x001b }
                org.b.c<? super R> r1 = r9.f7690a
                r1.onNext(r10)
                return r0
            L_0x001b:
                r4 = move-exception
                io.reactivex.c.b.throwIfFatal(r4)
                r5 = 2
                io.reactivex.e.c<? super java.lang.Long, ? super java.lang.Throwable, io.reactivex.parallel.ParallelFailureHandling> r6 = r9.c     // Catch:{ all -> 0x0052 }
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x0052 }
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch:{ all -> 0x0052 }
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.a.b.requireNonNull(r6, (java.lang.String) r7)     // Catch:{ all -> 0x0052 }
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch:{ all -> 0x0052 }
                int[] r7 = io.reactivex.internal.operators.d.k.AnonymousClass1.f7687a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L_0x0008
                if (r6 == r5) goto L_0x0051
                r10 = 3
                if (r6 == r10) goto L_0x004b
                r9.cancel()
                r9.onError(r4)
                return r1
            L_0x004b:
                r9.cancel()
                r9.onComplete()
            L_0x0051:
                return r1
            L_0x0052:
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
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.d.k.b.tryOnNext(java.lang.Object):boolean");
        }

        public final void onError(Throwable th) {
            if (this.e) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.e = true;
            this.f7690a.onError(th);
        }

        public final void onComplete() {
            if (!this.e) {
                this.e = true;
                this.f7690a.onComplete();
            }
        }
    }

    public k(io.reactivex.parallel.a<T> aVar, h<? super T, ? extends R> hVar, c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        this.f7685a = aVar;
        this.f7686b = hVar;
        this.c = cVar;
    }

    public final void subscribe(org.b.c<? super R>[] cVarArr) {
        if (a(cVarArr)) {
            int length = cVarArr.length;
            org.b.c[] cVarArr2 = new org.b.c[length];
            for (int i = 0; i < length; i++) {
                io.reactivex.internal.b.a aVar = cVarArr[i];
                if (aVar instanceof io.reactivex.internal.b.a) {
                    cVarArr2[i] = new a(aVar, this.f7686b, this.c);
                } else {
                    cVarArr2[i] = new b(aVar, this.f7686b, this.c);
                }
            }
            this.f7685a.subscribe(cVarArr2);
        }
    }

    public final int parallelism() {
        return this.f7685a.parallelism();
    }
}
