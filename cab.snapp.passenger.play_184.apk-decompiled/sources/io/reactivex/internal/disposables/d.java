package io.reactivex.internal.disposables;

import io.reactivex.b.c;
import io.reactivex.c.a;
import io.reactivex.internal.a.b;
import io.reactivex.internal.util.h;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public final class d implements c, c {

    /* renamed from: a  reason: collision with root package name */
    List<c> f6801a;

    /* renamed from: b  reason: collision with root package name */
    volatile boolean f6802b;

    public d() {
    }

    public d(c... cVarArr) {
        b.requireNonNull(cVarArr, "resources is null");
        this.f6801a = new LinkedList();
        for (c cVar : cVarArr) {
            b.requireNonNull(cVar, "Disposable item is null");
            this.f6801a.add(cVar);
        }
    }

    public d(Iterable<? extends c> iterable) {
        b.requireNonNull(iterable, "resources is null");
        this.f6801a = new LinkedList();
        for (c cVar : iterable) {
            b.requireNonNull(cVar, "Disposable item is null");
            this.f6801a.add(cVar);
        }
    }

    public final void dispose() {
        if (!this.f6802b) {
            synchronized (this) {
                if (!this.f6802b) {
                    this.f6802b = true;
                    List<c> list = this.f6801a;
                    this.f6801a = null;
                    a(list);
                }
            }
        }
    }

    public final boolean isDisposed() {
        return this.f6802b;
    }

    public final boolean add(c cVar) {
        b.requireNonNull(cVar, "d is null");
        if (!this.f6802b) {
            synchronized (this) {
                if (!this.f6802b) {
                    List list = this.f6801a;
                    if (list == null) {
                        list = new LinkedList();
                        this.f6801a = list;
                    }
                    list.add(cVar);
                    return true;
                }
            }
        }
        cVar.dispose();
        return false;
    }

    public final boolean addAll(c... cVarArr) {
        b.requireNonNull(cVarArr, "ds is null");
        if (!this.f6802b) {
            synchronized (this) {
                if (!this.f6802b) {
                    List list = this.f6801a;
                    if (list == null) {
                        list = new LinkedList();
                        this.f6801a = list;
                    }
                    for (c cVar : cVarArr) {
                        b.requireNonNull(cVar, "d is null");
                        list.add(cVar);
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
            java.lang.String r0 = "Disposable item is null"
            io.reactivex.internal.a.b.requireNonNull(r3, (java.lang.String) r0)
            boolean r0 = r2.f6802b
            r1 = 0
            if (r0 == 0) goto L_0x000b
            return r1
        L_0x000b:
            monitor-enter(r2)
            boolean r0 = r2.f6802b     // Catch:{ all -> 0x0022 }
            if (r0 == 0) goto L_0x0012
            monitor-exit(r2)     // Catch:{ all -> 0x0022 }
            return r1
        L_0x0012:
            java.util.List<io.reactivex.b.c> r0 = r2.f6801a     // Catch:{ all -> 0x0022 }
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
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.disposables.d.delete(io.reactivex.b.c):boolean");
    }

    public final void clear() {
        if (!this.f6802b) {
            synchronized (this) {
                if (!this.f6802b) {
                    List<c> list = this.f6801a;
                    this.f6801a = null;
                    a(list);
                }
            }
        }
    }

    private static void a(List<c> list) {
        if (list != null) {
            ArrayList arrayList = null;
            for (c dispose : list) {
                try {
                    dispose.dispose();
                } catch (Throwable th) {
                    io.reactivex.c.b.throwIfFatal(th);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th);
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
