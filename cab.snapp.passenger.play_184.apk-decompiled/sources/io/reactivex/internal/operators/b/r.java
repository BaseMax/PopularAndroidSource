package io.reactivex.internal.operators.b;

final class r {
    private r() {
        throw new IllegalStateException("No instances!");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v6, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v3, resolved type: io.reactivex.g} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static <T> boolean a(java.lang.Object r2, io.reactivex.e.h<? super T, ? extends io.reactivex.g> r3, io.reactivex.d r4) {
        /*
            boolean r0 = r2 instanceof java.util.concurrent.Callable
            if (r0 == 0) goto L_0x002d
            java.util.concurrent.Callable r2 = (java.util.concurrent.Callable) r2
            r0 = 0
            r1 = 1
            java.lang.Object r2 = r2.call()     // Catch:{ all -> 0x0025 }
            if (r2 == 0) goto L_0x001b
            java.lang.Object r2 = r3.apply(r2)     // Catch:{ all -> 0x0025 }
            java.lang.String r3 = "The mapper returned a null CompletableSource"
            java.lang.Object r2 = io.reactivex.internal.a.b.requireNonNull(r2, (java.lang.String) r3)     // Catch:{ all -> 0x0025 }
            r0 = r2
            io.reactivex.g r0 = (io.reactivex.g) r0     // Catch:{ all -> 0x0025 }
        L_0x001b:
            if (r0 != 0) goto L_0x0021
            io.reactivex.internal.disposables.EmptyDisposable.complete((io.reactivex.d) r4)
            goto L_0x0024
        L_0x0021:
            r0.subscribe(r4)
        L_0x0024:
            return r1
        L_0x0025:
            r2 = move-exception
            io.reactivex.c.b.throwIfFatal(r2)
            io.reactivex.internal.disposables.EmptyDisposable.error((java.lang.Throwable) r2, (io.reactivex.d) r4)
            return r1
        L_0x002d:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.b.r.a(java.lang.Object, io.reactivex.e.h, io.reactivex.d):boolean");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v7, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v3, resolved type: io.reactivex.w} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static <T, R> boolean a(java.lang.Object r2, io.reactivex.e.h<? super T, ? extends io.reactivex.w<? extends R>> r3, io.reactivex.ag<? super R> r4) {
        /*
            boolean r0 = r2 instanceof java.util.concurrent.Callable
            if (r0 == 0) goto L_0x0031
            java.util.concurrent.Callable r2 = (java.util.concurrent.Callable) r2
            r0 = 0
            r1 = 1
            java.lang.Object r2 = r2.call()     // Catch:{ all -> 0x0029 }
            if (r2 == 0) goto L_0x001b
            java.lang.Object r2 = r3.apply(r2)     // Catch:{ all -> 0x0029 }
            java.lang.String r3 = "The mapper returned a null MaybeSource"
            java.lang.Object r2 = io.reactivex.internal.a.b.requireNonNull(r2, (java.lang.String) r3)     // Catch:{ all -> 0x0029 }
            r0 = r2
            io.reactivex.w r0 = (io.reactivex.w) r0     // Catch:{ all -> 0x0029 }
        L_0x001b:
            if (r0 != 0) goto L_0x0021
            io.reactivex.internal.disposables.EmptyDisposable.complete((io.reactivex.ag<?>) r4)
            goto L_0x0028
        L_0x0021:
            io.reactivex.t r2 = io.reactivex.internal.operators.maybe.bn.create(r4)
            r0.subscribe(r2)
        L_0x0028:
            return r1
        L_0x0029:
            r2 = move-exception
            io.reactivex.c.b.throwIfFatal(r2)
            io.reactivex.internal.disposables.EmptyDisposable.error((java.lang.Throwable) r2, (io.reactivex.ag<?>) r4)
            return r1
        L_0x0031:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.b.r.a(java.lang.Object, io.reactivex.e.h, io.reactivex.ag):boolean");
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v7, resolved type: java.lang.Object} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r0v3, resolved type: io.reactivex.ao} */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    static <T, R> boolean b(java.lang.Object r2, io.reactivex.e.h<? super T, ? extends io.reactivex.ao<? extends R>> r3, io.reactivex.ag<? super R> r4) {
        /*
            boolean r0 = r2 instanceof java.util.concurrent.Callable
            if (r0 == 0) goto L_0x0031
            java.util.concurrent.Callable r2 = (java.util.concurrent.Callable) r2
            r0 = 0
            r1 = 1
            java.lang.Object r2 = r2.call()     // Catch:{ all -> 0x0029 }
            if (r2 == 0) goto L_0x001b
            java.lang.Object r2 = r3.apply(r2)     // Catch:{ all -> 0x0029 }
            java.lang.String r3 = "The mapper returned a null SingleSource"
            java.lang.Object r2 = io.reactivex.internal.a.b.requireNonNull(r2, (java.lang.String) r3)     // Catch:{ all -> 0x0029 }
            r0 = r2
            io.reactivex.ao r0 = (io.reactivex.ao) r0     // Catch:{ all -> 0x0029 }
        L_0x001b:
            if (r0 != 0) goto L_0x0021
            io.reactivex.internal.disposables.EmptyDisposable.complete((io.reactivex.ag<?>) r4)
            goto L_0x0028
        L_0x0021:
            io.reactivex.al r2 = io.reactivex.internal.operators.e.av.create(r4)
            r0.subscribe(r2)
        L_0x0028:
            return r1
        L_0x0029:
            r2 = move-exception
            io.reactivex.c.b.throwIfFatal(r2)
            io.reactivex.internal.disposables.EmptyDisposable.error((java.lang.Throwable) r2, (io.reactivex.ag<?>) r4)
            return r1
        L_0x0031:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.b.r.b(java.lang.Object, io.reactivex.e.h, io.reactivex.ag):boolean");
    }
}
