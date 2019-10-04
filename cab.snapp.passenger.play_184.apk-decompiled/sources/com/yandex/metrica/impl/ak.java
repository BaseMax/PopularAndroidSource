package com.yandex.metrica.impl;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.yandex.metrica.CounterConfiguration;
import com.yandex.metrica.MetricaService;
import com.yandex.metrica.impl.ac.GoogleAdvertisingIdGetter;
import com.yandex.metrica.impl.ob.az;
import com.yandex.metrica.impl.ob.ba;
import com.yandex.metrica.impl.ob.bb;
import com.yandex.metrica.impl.ob.eq;
import com.yandex.metrica.impl.ob.fq;
import com.yandex.metrica.impl.ob.gg;
import com.yandex.metrica.impl.ob.h;
import com.yandex.metrica.impl.ob.hg;
import com.yandex.metrica.impl.ob.hw;
import com.yandex.metrica.impl.ob.i;
import com.yandex.metrica.impl.ob.il;
import com.yandex.metrica.impl.ob.j;
import com.yandex.metrica.impl.ob.k;
import com.yandex.metrica.impl.ob.l;
import com.yandex.metrica.impl.ob.lo;
import com.yandex.metrica.impl.ob.lr;
import com.yandex.metrica.impl.ob.ma;
import com.yandex.metrica.impl.ob.mw;
import com.yandex.metrica.impl.ob.ni;
import com.yandex.metrica.impl.ob.nn;
import com.yandex.metrica.impl.ob.q;
import com.yandex.metrica.impl.ob.r;
import com.yandex.metrica.impl.ob.t;
import com.yandex.metrica.impl.ob.v;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ak implements ai {

    /* renamed from: a  reason: collision with root package name */
    public static final Executor f5699a = new il();

    /* renamed from: b  reason: collision with root package name */
    public static final v f5700b = new v();
    private static final ExecutorService h = Executors.newSingleThreadExecutor(new ni("YMM-MSTE"));
    private ma c;
    private boolean d = true;
    /* access modifiers changed from: private */
    public Context e;
    private MetricaService.d f;
    private lo g;
    private final Set<String> i = new HashSet();
    private Thread j;
    /* access modifiers changed from: private */
    public ba k;
    private hw l;
    private mw m;

    final class a implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private final i f5707b;
        private final Bundle c;

        a(Context context, i iVar, Bundle bundle) {
            context.getApplicationContext();
            this.f5707b = iVar;
            this.c = bundle;
        }

        public final void run() {
            t tVar = new t(this.c);
            if (!ak.this.a(tVar)) {
                az a2 = az.a(tVar);
                if (a2 != null) {
                    boolean z = false;
                    if (ak.this.k.a() == 0) {
                        z = true;
                    }
                    bb a3 = ak.this.k.a(a2, tVar);
                    if (z) {
                        ak.c(ak.this);
                    }
                    ak.this.g.b();
                    a3.a(this.f5707b, tVar);
                }
            }
        }
    }

    public void a(ma maVar) {
        this.c = maVar;
        d(maVar);
    }

    public ak(Context context, MetricaService.d dVar) {
        this.e = context;
        this.f = dVar;
        this.k = new ba(this.e);
    }

    public void a() {
        new bn(this.e).a(this.e);
        nn.a().a(this.e);
        this.g = new lo(this.e);
        GoogleAdvertisingIdGetter.a().b(this.e);
        h.a().a(this, r.class, l.a(new k<r>() {
            public void a(r rVar) {
                ak.this.a(rVar.f6499b);
            }
        }).a(new i<r>() {
            public boolean a(r rVar) {
                return !ak.this.e.getPackageName().equals(rVar.f6498a);
            }
        }).a());
        hg.a().a(this.e);
        this.c = new gg(fq.a(this.e).e(), this.e.getPackageName()).a();
        ma maVar = this.c;
        if (maVar != null) {
            b(maVar);
            d(this.c);
        }
        c(this.c);
        h.a().a(this, r.class, l.a(new k<r>() {
            public void a(r rVar) {
                ak.this.d(rVar.f6499b);
                ak.this.c(rVar.f6499b);
            }
        }).a(new i<r>() {
            public boolean a(r rVar) {
                return !ak.this.e.getPackageName().equals(rVar.f6498a);
            }
        }).a());
        hg.a().a(this.e);
        v.a().e().a();
        v.a().g().a();
    }

    public void a(Intent intent, int i2) {
        b(intent, i2);
    }

    public void a(Intent intent, int i2, int i3) {
        b(intent, i3);
    }

    public void a(Intent intent) {
        String action = intent.getAction();
        if (!TextUtils.isEmpty(action)) {
            this.i.add(action);
        }
        a(action);
    }

    public void b(Intent intent) {
        String action = intent.getAction();
        if (!bt.a(action)) {
            this.i.add(action);
        }
        a(action);
    }

    public void c(Intent intent) {
        String str;
        if (intent != null) {
            String action = intent.getAction();
            Uri data = intent.getData();
            if (data == null) {
                str = null;
            } else {
                str = data.getEncodedAuthority();
            }
            if (!TextUtils.isEmpty(action)) {
                this.i.remove(action);
            }
            if ("com.yandex.metrica.ACTION_C_BG_L".equals(action)) {
                c();
            }
            if (!MetricaService.a.f5625a.contains(action)) {
                a(data, str);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public void a(Uri uri, String str) {
        if (uri != null && uri.getPath().equals("/client")) {
            this.k.a(str, Integer.parseInt(uri.getQueryParameter("pid")), uri.getQueryParameter("psid"));
        }
        if (this.k.a() <= 0) {
            this.d = true;
            c(this.c);
            this.g.a();
        }
    }

    public void b() {
        c();
        h.a().a((Object) this);
    }

    public void a(String str, int i2, String str2, Bundle bundle) throws RemoteException {
        bundle.setClassLoader(CounterConfiguration.class.getClassLoader());
        a(new i(str2, str, i2), bundle);
    }

    public void a(Bundle bundle) throws RemoteException {
        bundle.setClassLoader(CounterConfiguration.class.getClassLoader());
        a(i.b(bundle), bundle);
    }

    /* access modifiers changed from: package-private */
    public void b(ma maVar) {
        lr lrVar = maVar.p;
        if (lrVar == null) {
            h.a().a((Class<? extends j>) q.class);
        } else {
            h.a().b((j) new q(lrVar));
        }
    }

    private void b(Intent intent, int i2) {
        if (intent != null) {
            intent.getExtras().setClassLoader(CounterConfiguration.class.getClassLoader());
            if (!(intent == null || intent.getData() == null)) {
                t tVar = new t(intent.getExtras());
                if (!a(tVar)) {
                    i b2 = i.b(intent.getExtras());
                    if (!b2.o() && !b2.p()) {
                        try {
                            az a2 = az.a(tVar);
                            this.k.a(a2, tVar).a(b2, tVar);
                            this.k.a(a2.c(), a2.d().intValue(), a2.e());
                        } catch (Exception unused) {
                        }
                    }
                }
            }
        }
        this.f.a(i2);
    }

    private void c() {
        hw hwVar = this.l;
        if (hwVar != null) {
            hwVar.b((Object) this);
        }
        mw mwVar = this.m;
        if (mwVar != null) {
            mwVar.b();
        }
    }

    /* access modifiers changed from: package-private */
    public boolean a(t tVar) {
        return tVar == null || tVar.a() == null || !this.e.getPackageName().equals(tVar.a().h()) || tVar.a().g() != 70;
    }

    private void a(i iVar, Bundle bundle) {
        if (!iVar.p()) {
            h.execute(new a(this.e, iVar, bundle));
        }
    }

    /* access modifiers changed from: private */
    public void c(ma maVar) {
        if (maVar != null) {
            hw.a(this.e).a(maVar, this.d ? this.c.o : this.c.n);
        }
    }

    /* access modifiers changed from: private */
    public void d(ma maVar) {
        if (maVar != null) {
            final eq eqVar = new eq(this.e, maVar);
            this.j = ni.a("YMM-CSL", new Runnable() {
                public void run() {
                    eq.this.a();
                }
            });
            this.j.start();
        }
    }

    private void a(String str) {
        if ("com.yandex.metrica.ACTION_C_BG_L".equals(str)) {
            this.l = hw.a(this.e);
            this.l.a((Object) this);
            this.m = mw.a(this.e);
            this.m.a();
        }
        if (this.i.size() == 1 || "com.yandex.metrica.ACTION_C_BG_L".equals(str)) {
            hw.a(this.e).a();
        }
    }

    static /* synthetic */ void c(ak akVar) {
        akVar.d = false;
        akVar.c(akVar.c);
    }
}
