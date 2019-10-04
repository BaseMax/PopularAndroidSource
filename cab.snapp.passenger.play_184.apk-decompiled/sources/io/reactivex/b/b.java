package io.reactivex.b;

import io.reactivex.c.a;
import io.reactivex.internal.disposables.c;
import io.reactivex.internal.util.h;
import io.reactivex.internal.util.l;
import java.util.ArrayList;

public final class b implements c, c {

    /* renamed from: a  reason: collision with root package name */
    l<c> f6707a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f6708b;

    public b() {
    }

    public b(c... cVarArr) {
        io.reactivex.internal.a.b.requireNonNull(cVarArr, "disposables is null");
        this.f6707a = new l<>(cVarArr.length + 1);
        for (c cVar : cVarArr) {
            io.reactivex.internal.a.b.requireNonNull(cVar, "A Disposable in the disposables array is null");
            this.f6707a.add(cVar);
        }
    }

    public b(Iterable<? extends c> iterable) {
        io.reactivex.internal.a.b.requireNonNull(iterable, "disposables is null");
        this.f6707a = new l<>();
        for (c cVar : iterable) {
            io.reactivex.internal.a.b.requireNonNull(cVar, "A Disposable item in the disposables sequence is null");
            this.f6707a.add(cVar);
        }
    }

    public final void dispose() {
        if (!this.f6708b) {
            synchronized (this) {
                if (!this.f6708b) {
                    this.f6708b = true;
                    l<c> lVar = this.f6707a;
                    this.f6707a = null;
                    a(lVar);
                }
            }
        }
    }

    public final boolean isDisposed() {
        return this.f6708b;
    }

    public final boolean add(c cVar) {
        io.reactivex.internal.a.b.requireNonNull(cVar, "disposable is null");
        if (!this.f6708b) {
            synchronized (this) {
                if (!this.f6708b) {
                    l<c> lVar = this.f6707a;
                    if (lVar == null) {
                        lVar = new l<>();
                        this.f6707a = lVar;
                    }
                    lVar.add(cVar);
                    return true;
                }
            }
        }
        cVar.dispose();
        return false;
    }

    public final boolean addAll(c... cVarArr) {
        io.reactivex.internal.a.b.requireNonNull(cVarArr, "disposables is null");
        if (!this.f6708b) {
            synchronized (this) {
                if (!this.f6708b) {
                    l<c> lVar = this.f6707a;
                    if (lVar == null) {
                        lVar = new l<>(cVarArr.length + 1);
                        this.f6707a = lVar;
                    }
                    for (c cVar : cVarArr) {
                        io.reactivex.internal.a.b.requireNonNull(cVar, "A Disposable in the disposables array is null");
                        lVar.add(cVar);
                    }
                    return true;
                }
            }
        }
        for (c dispose : cVarArr) {
            dispose.dispose();
        }
        return false;
    }

    public final boolean remove(c cVar) {
        if (!delete(cVar)) {
            return false;
        }
        cVar.dispose();
        return true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0021, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean delete(io.reactivex.b.c r3) {
        /*
            r2 = this;
            java.lang.String r0 = "disposables is null"
            io.reactivex.internal.a.b.requireNonNull(r3, (java.lang.String) r0)
            boolean r0 = r2.f6708b
            r1 = 0
            if (r0 == 0) goto L_0x000b
            return r1
        L_0x000b:
            monitor-enter(r2)
            boolean r0 = r2.f6708b     // Catch:{ all -> 0x0022 }
            if (r0 == 0) goto L_0x0012
            monitor-exit(r2)     // Catch:{ all -> 0x0022 }
            return r1
        L_0x0012:
            io.reactivex.internal.util.l<io.reactivex.b.c> r0 = r2.f6707a     // Catch:{ all -> 0x0022 }
            if (r0 == 0) goto L_0x0020
            boolean r3 = r0.remove(r3)     // Catch:{ all -> 0x0022 }
            if (r3 != 0) goto L_0x001d
            goto L_0x0020
        L_0x001d:
            monitor-exit(r2)     // Catch:{ all -> 0x0022 }
            r3 = 1
            return r3
        L_0x0020:
            monitor-exit(r2)     // Catch:{ all -> 0x0022 }
            return r1
        L_0x0022:
            r3 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0022 }
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.b.b.delete(io.reactivex.b.c):boolean");
    }

    public final void clear() {
        if (!this.f6708b) {
            synchronized (this) {
                if (!this.f6708b) {
                    l<c> lVar = this.f6707a;
                    this.f6707a = null;
                    a(lVar);
                }
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0016, code lost:
        return r1;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final int size() {
        /*
            r2 = this;
            boolean r0 = r2.f6708b
            r1 = 0
            if (r0 == 0) goto L_0x0006
            return r1
        L_0x0006:
            monitor-enter(r2)
            boolean r0 = r2.f6708b     // Catch:{ all -> 0x0017 }
            if (r0 == 0) goto L_0x000d
            monitor-exit(r2)     // Catch:{ all -> 0x0017 }
            return r1
        L_0x000d:
            io.reactivex.internal.util.l<io.reactivex.b.c> r0 = r2.f6707a     // Catch:{ all -> 0x0017 }
            if (r0 == 0) goto L_0x0015
            int r1 = r0.size()     // Catch:{ all -> 0x0017 }
        L_0x0015:
            monitor-exit(r2)     // Catch:{ all -> 0x0017 }
            return r1
        L_0x0017:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0017 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.b.b.size():int");
    }

    private static void a(l<c> lVar) {
        if (lVar != null) {
            ArrayList arrayList = null;
            for (Object obj : lVar.keys()) {
                if (obj instanceof c) {
                    try {
                        ((c) obj).dispose();
                    } catch (Throwable th) {
                        io.reactivex.c.b.throwIfFatal(th);
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        arrayList.add(th);
                    }
                }
            }
            if (arrayList == null) {
                return;
            }
            if (arrayList.size() == 1) {
                throw h.wrapOrThrow((Throwable) arrayList.get(0));
            }
            throw new a((Iterable<? extends Throwable>) arrayList);
        }
    }
}
