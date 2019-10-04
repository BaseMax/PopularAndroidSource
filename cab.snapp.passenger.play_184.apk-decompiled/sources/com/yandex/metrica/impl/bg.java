package com.yandex.metrica.impl;

import android.content.Context;
import android.os.Handler;
import com.yandex.metrica.b;
import com.yandex.metrica.c;
import com.yandex.metrica.e;
import com.yandex.metrica.impl.ob.lw;
import com.yandex.metrica.impl.ob.ow;
import com.yandex.metrica.impl.ob.pa;
import com.yandex.metrica.impl.ob.pc;
import com.yandex.metrica.impl.ob.u;
import java.util.HashMap;
import java.util.Map;

class bg {

    /* renamed from: a  reason: collision with root package name */
    private Context f5752a;

    /* renamed from: b  reason: collision with root package name */
    private u f5753b;
    private bi c;
    private k d;
    private Handler e;
    private lw f;
    private Map<String, b> g = new HashMap();
    private final pa<String> h = new ow(new pc(this.g));

    public bg(Context context, u uVar, bi biVar, k kVar, Handler handler, lw lwVar) {
        this.f5752a = context;
        this.f5753b = uVar;
        this.c = biVar;
        this.d = kVar;
        this.e = handler;
        this.f = lwVar;
    }

    /* access modifiers changed from: package-private */
    public ad a(e eVar, boolean z) {
        this.h.a(eVar.apiKey);
        ad adVar = new ad(this.f5752a, this.f5753b, eVar, this.c);
        a((c) adVar);
        adVar.a(eVar, z);
        adVar.a();
        this.c.a(adVar);
        this.g.put(eVar.apiKey, adVar);
        return adVar;
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x002c, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void a(com.yandex.metrica.c r5) {
        /*
            r4 = this;
            monitor-enter(r4)
            java.util.Map<java.lang.String, com.yandex.metrica.b> r0 = r4.g     // Catch:{ all -> 0x002d }
            java.lang.String r1 = r5.apiKey     // Catch:{ all -> 0x002d }
            boolean r0 = r0.containsKey(r1)     // Catch:{ all -> 0x002d }
            if (r0 == 0) goto L_0x0028
            com.yandex.metrica.impl.ob.nk r0 = com.yandex.metrica.impl.ob.nk.f()     // Catch:{ all -> 0x002d }
            boolean r0 = r0.b()     // Catch:{ all -> 0x002d }
            if (r0 == 0) goto L_0x002b
            com.yandex.metrica.impl.ob.nk r0 = com.yandex.metrica.impl.ob.nk.f()     // Catch:{ all -> 0x002d }
            java.lang.String r1 = "Reporter with apiKey=%s already exists."
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x002d }
            r3 = 0
            java.lang.String r5 = r5.apiKey     // Catch:{ all -> 0x002d }
            r2[r3] = r5     // Catch:{ all -> 0x002d }
            r0.b(r1, r2)     // Catch:{ all -> 0x002d }
            monitor-exit(r4)
            return
        L_0x0028:
            r4.b(r5)     // Catch:{ all -> 0x002d }
        L_0x002b:
            monitor-exit(r4)
            return
        L_0x002d:
            r5 = move-exception
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.bg.a(com.yandex.metrica.c):void");
    }

    /* access modifiers changed from: package-private */
    public synchronized b b(c cVar) {
        ae aeVar;
        b bVar = this.g.get(cVar.apiKey);
        aeVar = bVar;
        if (bVar == null) {
            ae aeVar2 = new ae(this.f5752a, this.f5753b, cVar, this.c);
            a((c) aeVar2);
            aeVar2.a();
            this.g.put(cVar.apiKey, aeVar2);
            aeVar = aeVar2;
        }
        return aeVar;
    }

    private void a(c cVar) {
        cVar.a(new aa(this.e, cVar));
        cVar.a(this.d);
        cVar.a(this.f);
    }
}
