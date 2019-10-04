package com.yandex.metrica.impl;

import com.yandex.metrica.impl.ob.gf;
import com.yandex.metrica.impl.ob.nt;
import java.util.HashSet;

public class bs {

    /* renamed from: a  reason: collision with root package name */
    private gf f5795a;

    /* renamed from: b  reason: collision with root package name */
    private Boolean f5796b;
    private final HashSet<String> c = new HashSet<>();
    private final HashSet<String> d = new HashSet<>();

    public bs(gf gfVar) {
        this.f5795a = gfVar;
        this.f5796b = this.f5795a.j();
    }

    public synchronized void a(Boolean bool) {
        this.f5796b = Boolean.valueOf(Boolean.FALSE.equals(bool));
        this.f5795a.d(this.f5796b.booleanValue()).i();
    }

    public synchronized void a(String str, Boolean bool) {
        if (nt.a(bool, true)) {
            this.d.add(str);
            this.c.remove(str);
            return;
        }
        this.c.add(str);
        this.d.remove(str);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0017, code lost:
        return r1.d.isEmpty() && r1.c.isEmpty();
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized boolean a() {
        /*
            r1 = this;
            monitor-enter(r1)
            java.lang.Boolean r0 = r1.f5796b     // Catch:{ all -> 0x0022 }
            if (r0 != 0) goto L_0x001a
            java.util.HashSet<java.lang.String> r0 = r1.d     // Catch:{ all -> 0x0022 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0022 }
            if (r0 == 0) goto L_0x0018
            java.util.HashSet<java.lang.String> r0 = r1.c     // Catch:{ all -> 0x0022 }
            boolean r0 = r0.isEmpty()     // Catch:{ all -> 0x0022 }
            if (r0 == 0) goto L_0x0018
            r0 = 1
        L_0x0016:
            monitor-exit(r1)
            return r0
        L_0x0018:
            r0 = 0
            goto L_0x0016
        L_0x001a:
            java.lang.Boolean r0 = r1.f5796b     // Catch:{ all -> 0x0022 }
            boolean r0 = r0.booleanValue()     // Catch:{ all -> 0x0022 }
            monitor-exit(r1)
            return r0
        L_0x0022:
            r0 = move-exception
            monitor-exit(r1)
            goto L_0x0026
        L_0x0025:
            throw r0
        L_0x0026:
            goto L_0x0025
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.bs.a():boolean");
    }

    public synchronized boolean b() {
        if (this.f5796b == null) {
            return this.d.isEmpty();
        }
        return this.f5796b.booleanValue();
    }

    public synchronized boolean c() {
        return e();
    }

    public synchronized boolean d() {
        return e();
    }

    private boolean e() {
        Boolean bool = this.f5796b;
        if (bool == null) {
            return !this.c.isEmpty() || this.d.isEmpty();
        }
        return bool.booleanValue();
    }
}
