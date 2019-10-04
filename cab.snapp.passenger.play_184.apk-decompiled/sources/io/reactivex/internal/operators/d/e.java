package io.reactivex.internal.operators.d;

import io.reactivex.e.q;
import io.reactivex.internal.subscriptions.SubscriptionHelper;
import io.reactivex.parallel.ParallelFailureHandling;
import org.b.d;

public final class e<T> extends io.reactivex.parallel.a<T> {

    /* renamed from: a  reason: collision with root package name */
    final io.reactivex.parallel.a<T> f7660a;

    /* renamed from: b  reason: collision with root package name */
    final q<? super T> f7661b;
    final io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> c;

    /* renamed from: io.reactivex.internal.operators.d.e$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f7662a = new int[ParallelFailureHandling.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(8:0|1|2|3|4|5|6|8) */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001f */
        static {
            /*
                io.reactivex.parallel.ParallelFailureHandling[] r0 = io.reactivex.parallel.ParallelFailureHandling.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f7662a = r0
                int[] r0 = f7662a     // Catch:{ NoSuchFieldError -> 0x0014 }
                io.reactivex.parallel.ParallelFailureHandling r1 = io.reactivex.parallel.ParallelFailureHandling.RETRY     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f7662a     // Catch:{ NoSuchFieldError -> 0x001f }
                io.reactivex.parallel.ParallelFailureHandling r1 = io.reactivex.parallel.ParallelFailureHandling.SKIP     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                int[] r0 = f7662a     // Catch:{ NoSuchFieldError -> 0x002a }
                io.reactivex.parallel.ParallelFailureHandling r1 = io.reactivex.parallel.ParallelFailureHandling.STOP     // Catch:{ NoSuchFieldError -> 0x002a }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x002a }
                r2 = 3
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x002a }
            L_0x002a:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.d.e.AnonymousClass1.<clinit>():void");
        }
    }

    static abstract class a<T> implements io.reactivex.internal.b.a<T>, d {

        /* renamed from: a  reason: collision with root package name */
        final q<? super T> f7663a;

        /* renamed from: b  reason: collision with root package name */
        final io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> f7664b;
        d c;
        boolean d;

        a(q<? super T> qVar, io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            this.f7663a = qVar;
            this.f7664b = cVar;
        }

        public final void request(long j) {
            this.c.request(j);
        }

        public final void cancel() {
            this.c.cancel();
        }

        public final void onNext(T t) {
            if (!tryOnNext(t) && !this.d) {
                this.c.request(1);
            }
        }
    }

    static final class b<T> extends a<T> {
        final io.reactivex.internal.b.a<? super T> e;

        b(io.reactivex.internal.b.a<? super T> aVar, q<? super T> qVar, io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
            super(qVar, cVar);
            this.e = aVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.e.onSubscribe(this);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:18:0x0040  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final boolean tryOnNext(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.d
                r1 = 0
                if (r0 != 0) goto L_0x0066
                r2 = 0
            L_0x0007:
                r0 = 1
                io.reactivex.e.q r4 = r9.f7663a     // Catch:{ all -> 0x001a }
                boolean r2 = r4.test(r10)     // Catch:{ all -> 0x001a }
                if (r2 == 0) goto L_0x0019
                io.reactivex.internal.b.a<? super T> r2 = r9.e
                boolean r10 = r2.tryOnNext(r10)
                if (r10 == 0) goto L_0x0019
                return r0
            L_0x0019:
                return r1
            L_0x001a:
                r4 = move-exception
                io.reactivex.c.b.throwIfFatal(r4)
                r5 = 2
                io.reactivex.e.c r6 = r9.f7664b     // Catch:{ all -> 0x0051 }
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x0051 }
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch:{ all -> 0x0051 }
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.a.b.requireNonNull(r6, (java.lang.String) r7)     // Catch:{ all -> 0x0051 }
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch:{ all -> 0x0051 }
                int[] r7 = io.reactivex.internal.operators.d.e.AnonymousClass1.f7662a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L_0x0007
                if (r6 == r5) goto L_0x0050
                r10 = 3
                if (r6 == r10) goto L_0x004a
                r9.cancel()
                r9.onError(r4)
                return r1
            L_0x004a:
                r9.cancel()
                r9.onComplete()
            L_0x0050:
                return r1
            L_0x0051:
                r10 = move-exception
                io.reactivex.c.b.throwIfFatal(r10)
                r9.cancel()
                io.reactivex.c.a r2 = new io.reactivex.c.a
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r4
                r3[r0] = r10
                r2.<init>((java.lang.Throwable[]) r3)
                r9.onError(r2)
            L_0x0066:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.d.e.b.tryOnNext(java.lang.Object):boolean");
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.e.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.e.onComplete();
            }
        }
    }

    static final class c<T> extends a<T> {
        final org.b.c<? super T> e;

        c(org.b.c<? super T> cVar, q<? super T> qVar, io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar2) {
            super(qVar, cVar2);
            this.e = cVar;
        }

        public final void onSubscribe(d dVar) {
            if (SubscriptionHelper.validate(this.c, dVar)) {
                this.c = dVar;
                this.e.onSubscribe(this);
            }
        }

        /* JADX WARNING: Removed duplicated region for block: B:17:0x003d  */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final boolean tryOnNext(T r10) {
            /*
                r9 = this;
                boolean r0 = r9.d
                r1 = 0
                if (r0 != 0) goto L_0x0063
                r2 = 0
            L_0x0007:
                r0 = 1
                io.reactivex.e.q r4 = r9.f7663a     // Catch:{ all -> 0x0017 }
                boolean r2 = r4.test(r10)     // Catch:{ all -> 0x0017 }
                if (r2 == 0) goto L_0x0016
                org.b.c<? super T> r1 = r9.e
                r1.onNext(r10)
                return r0
            L_0x0016:
                return r1
            L_0x0017:
                r4 = move-exception
                io.reactivex.c.b.throwIfFatal(r4)
                r5 = 2
                io.reactivex.e.c r6 = r9.f7664b     // Catch:{ all -> 0x004e }
                r7 = 1
                long r2 = r2 + r7
                java.lang.Long r7 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x004e }
                java.lang.Object r6 = r6.apply(r7, r4)     // Catch:{ all -> 0x004e }
                java.lang.String r7 = "The errorHandler returned a null item"
                java.lang.Object r6 = io.reactivex.internal.a.b.requireNonNull(r6, (java.lang.String) r7)     // Catch:{ all -> 0x004e }
                io.reactivex.parallel.ParallelFailureHandling r6 = (io.reactivex.parallel.ParallelFailureHandling) r6     // Catch:{ all -> 0x004e }
                int[] r7 = io.reactivex.internal.operators.d.e.AnonymousClass1.f7662a
                int r6 = r6.ordinal()
                r6 = r7[r6]
                if (r6 == r0) goto L_0x0007
                if (r6 == r5) goto L_0x004d
                r10 = 3
                if (r6 == r10) goto L_0x0047
                r9.cancel()
                r9.onError(r4)
                return r1
            L_0x0047:
                r9.cancel()
                r9.onComplete()
            L_0x004d:
                return r1
            L_0x004e:
                r10 = move-exception
                io.reactivex.c.b.throwIfFatal(r10)
                r9.cancel()
                io.reactivex.c.a r2 = new io.reactivex.c.a
                java.lang.Throwable[] r3 = new java.lang.Throwable[r5]
                r3[r1] = r4
                r3[r0] = r10
                r2.<init>((java.lang.Throwable[]) r3)
                r9.onError(r2)
            L_0x0063:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.d.e.c.tryOnNext(java.lang.Object):boolean");
        }

        public final void onError(Throwable th) {
            if (this.d) {
                io.reactivex.g.a.onError(th);
                return;
            }
            this.d = true;
            this.e.onError(th);
        }

        public final void onComplete() {
            if (!this.d) {
                this.d = true;
                this.e.onComplete();
            }
        }
    }

    public e(io.reactivex.parallel.a<T> aVar, q<? super T> qVar, io.reactivex.e.c<? super Long, ? super Throwable, ParallelFailureHandling> cVar) {
        this.f7660a = aVar;
        this.f7661b = qVar;
        this.c = cVar;
    }

    public final void subscribe(org.b.c<? super T>[] cVarArr) {
        if (a(cVarArr)) {
            int length = cVarArr.length;
            org.b.c[] cVarArr2 = new org.b.c[length];
            for (int i = 0; i < length; i++) {
                io.reactivex.internal.b.a aVar = cVarArr[i];
                if (aVar instanceof io.reactivex.internal.b.a) {
                    cVarArr2[i] = new b(aVar, this.f7661b, this.c);
                } else {
                    cVarArr2[i] = new c(aVar, this.f7661b, this.c);
                }
            }
            this.f7660a.subscribe(cVarArr2);
        }
    }

    public final int parallelism() {
        return this.f7660a.parallelism();
    }
}
