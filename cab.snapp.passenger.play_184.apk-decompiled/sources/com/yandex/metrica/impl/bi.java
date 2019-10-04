package com.yandex.metrica.impl;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.util.Base64;
import android.util.Pair;
import com.yandex.metrica.IMetricaService;
import com.yandex.metrica.impl.bj;
import com.yandex.metrica.impl.ob.e;
import com.yandex.metrica.impl.ob.ke;
import com.yandex.metrica.impl.ob.kw;
import com.yandex.metrica.impl.ob.lw;
import com.yandex.metrica.impl.ob.ne;
import com.yandex.metrica.impl.ob.nk;
import com.yandex.metrica.impl.ob.u;
import com.yandex.metrica.impl.s;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

public class bi implements x {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5755a;

    /* renamed from: b  reason: collision with root package name */
    private ah f5756b;
    private final NativeCrashesHelper c;
    private final ExecutorService d;
    private ad e;
    private final g f;
    private lw g;
    private final bj h = new bj(this);

    bi(u uVar, ExecutorService executorService, Context context, Handler handler) {
        this.f5756b = new ah(context, handler);
        this.d = executorService;
        this.f5755a = context;
        this.c = new NativeCrashesHelper(context);
        this.f = new g(uVar);
    }

    /* access modifiers changed from: package-private */
    public void a(ad adVar) {
        this.e = adVar;
    }

    /* access modifiers changed from: package-private */
    public void a(lw lwVar) {
        this.g = lwVar;
        this.f.b(lwVar);
    }

    /* access modifiers changed from: package-private */
    public void a(k kVar) {
        this.f.a(kVar);
    }

    /* access modifiers changed from: package-private */
    public void a(boolean z) {
        this.c.a(z);
    }

    /* access modifiers changed from: package-private */
    public void a(o oVar) {
        if (oVar.b() != null) {
            this.f.b().a(oVar.b().booleanValue());
        }
        if (oVar.c() != null) {
            this.f.b().f(oVar.c().booleanValue());
        }
        a(new i().a(s.a.EVENT_TYPE_UPDATE_PRE_ACTIVATION_CONFIG.a()), (bf) this.f);
    }

    /* access modifiers changed from: package-private */
    public void a(String str, bf bfVar) {
        if (nk.f().b()) {
            nk.f().a("Error received: native");
        }
        a(s.a(s.a.EVENT_TYPE_NATIVE_CRASH, str), bfVar);
    }

    /* access modifiers changed from: package-private */
    public void a(String str) {
        a(str, this.e.d());
    }

    /* access modifiers changed from: private */
    public static i c(i iVar, bf bfVar) {
        if (iVar.e() == s.a.EVENT_TYPE_EXCEPTION_USER.a()) {
            iVar.f(bfVar.f());
        }
        return iVar;
    }

    /* access modifiers changed from: package-private */
    public void a(i iVar, bf bfVar) {
        a(c(iVar, bfVar), bfVar, (Map<String, Object>) null);
    }

    public Future<Void> a(i iVar, final bf bfVar, final Map<String, Object> map) {
        this.f5756b.c();
        bj.d dVar = new bj.d(iVar, bfVar);
        if (!bv.a((Map) map)) {
            dVar.a((bj.c) new bj.c() {
                public i a(i iVar) {
                    return bi.c(iVar.c(ne.a(map)), bfVar);
                }
            });
        }
        return a(dVar);
    }

    public void c() {
        a(s.c(s.a.EVENT_TYPE_STARTUP), (bf) this.f);
    }

    public void b(String str) {
        a(s.d(str), (bf) this.f);
    }

    public void a(kw kwVar) {
        a(s.a(kwVar), (bf) this.f);
    }

    public void a(bf bfVar) {
        a(s.a(bfVar.g()), bfVar);
    }

    public void a(List<String> list) {
        this.f.h().a(list);
    }

    public void a(Map<String, String> map) {
        this.f.h().a(map);
    }

    public void c(String str) {
        this.f.h().a(str);
    }

    /* access modifiers changed from: package-private */
    public void a(Throwable th, bf bfVar) {
        String str;
        if (nk.f().b() && bfVar.b().q()) {
            nk.f().a("Error received: uncaught");
        }
        this.f5756b.c();
        String a2 = bv.a((String) null, th);
        if (th == null) {
            str = "";
        } else {
            str = th.getClass().getName();
        }
        i d2 = s.d(str, a2);
        d2.f(bfVar.f());
        try {
            a(new bj.d(d2, bfVar).a(true)).get();
        } catch (InterruptedException | ExecutionException unused) {
        }
    }

    /* access modifiers changed from: package-private */
    public void d() {
        this.f5756b.c();
    }

    /* access modifiers changed from: package-private */
    public void e() {
        this.f5756b.b();
    }

    public void a(IMetricaService iMetricaService, i iVar, bf bfVar) throws RemoteException {
        c(bfVar);
        if (this.c.a()) {
            this.c.a(this, this.d);
        }
        iMetricaService.reportData(iVar.a(bfVar.c()));
        ad adVar = this.e;
        if (adVar == null || adVar.e()) {
            this.f5756b.b();
        }
    }

    public void a(String str, String str2, bf bfVar) {
        a(new bj.d(new i().a(s.a.EVENT_TYPE_APP_ENVIRONMENT_UPDATED.a()).a(str, str2), bfVar));
    }

    public void b(bf bfVar) {
        a(new bj.d(new i().a(s.a.EVENT_TYPE_APP_ENVIRONMENT_CLEARED.a()), bfVar));
    }

    /* access modifiers changed from: package-private */
    public void a(final ke.a aVar, bf bfVar) {
        a(new bj.d(e.a(), bfVar).a((bj.c) new bj.c() {
            public i a(i iVar) {
                return iVar.c(new String(Base64.encode(e.a((e) ke.a.this), 0)));
            }
        }));
    }

    /* access modifiers changed from: package-private */
    public void b(final String str, bf bfVar) {
        a(new bj.d(new e().a(s.a.EVENT_TYPE_SET_USER_PROFILE_ID.a()).d(str), bfVar).a((bj.c) new bj.c() {
            public i a(i iVar) {
                return iVar.c(str);
            }
        }));
    }

    /* access modifiers changed from: package-private */
    public void a(final bk bkVar, bf bfVar) {
        a(new bj.d(new e().a(s.a.EVENT_TYPE_SEND_REVENUE_EVENT.a()), bfVar).a((bj.c) new bj.c() {
            public i a(i iVar) {
                Pair<byte[], Integer> a2 = bk.this.a();
                return iVar.c(new String(Base64.encode((byte[]) a2.first, 0))).c(((Integer) a2.second).intValue());
            }
        }));
    }

    /* access modifiers changed from: package-private */
    public void c(bf bfVar) {
        if (bfVar.b().q()) {
            bfVar.b().c(nk.f().b());
        }
    }

    private Future<Void> a(bj.d dVar) {
        dVar.a().a(this.g);
        return this.h.a(dVar);
    }

    public ah a() {
        return this.f5756b;
    }

    public Context b() {
        return this.f5755a;
    }
}
