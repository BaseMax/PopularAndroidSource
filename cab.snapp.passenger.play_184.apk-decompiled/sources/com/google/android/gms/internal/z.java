package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.analytics.r;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;
import com.google.android.gms.common.util.e;
import java.lang.Thread;

public class z {

    /* renamed from: a  reason: collision with root package name */
    private static volatile z f3538a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f3539b;
    private final Context c;
    private final d d = e.zzamg();
    private final ax e = new ax(this);
    private final bp f;
    private final r g;
    private final o h;
    private final bc i;
    private final cf j;
    private final bt k;
    private final com.google.android.gms.analytics.d l;
    private final aq m;
    private final n n;
    private final ak o;
    private final bb p;

    private z(ab abVar) {
        Context applicationContext = abVar.getApplicationContext();
        ap.checkNotNull(applicationContext, "Application context can't be null");
        Context zzxg = abVar.zzxg();
        ap.checkNotNull(zzxg);
        this.f3539b = applicationContext;
        this.c = zzxg;
        bp bpVar = new bp(this);
        bpVar.initialize();
        this.f = bpVar;
        bp zzwt = zzwt();
        String str = y.VERSION;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 134);
        sb.append("Google Analytics ");
        sb.append(str);
        sb.append(" is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4");
        zzwt.zzdw(sb.toString());
        bt btVar = new bt(this);
        btVar.initialize();
        this.k = btVar;
        cf cfVar = new cf(this);
        cfVar.initialize();
        this.j = cfVar;
        o oVar = new o(this, abVar);
        aq aqVar = new aq(this);
        n nVar = new n(this);
        ak akVar = new ak(this);
        bb bbVar = new bb(this);
        r zzbl = r.zzbl(applicationContext);
        zzbl.zza((Thread.UncaughtExceptionHandler) new aa(this));
        this.g = zzbl;
        com.google.android.gms.analytics.d dVar = new com.google.android.gms.analytics.d(this);
        aqVar.initialize();
        this.m = aqVar;
        nVar.initialize();
        this.n = nVar;
        akVar.initialize();
        this.o = akVar;
        bbVar.initialize();
        this.p = bbVar;
        bc bcVar = new bc(this);
        bcVar.initialize();
        this.i = bcVar;
        oVar.initialize();
        this.h = oVar;
        dVar.initialize();
        this.l = dVar;
        oVar.start();
    }

    private static void a(x xVar) {
        ap.checkNotNull(xVar, "Analytics service not created/initialized");
        ap.checkArgument(xVar.isInitialized(), "Analytics service not initialized");
    }

    public static z zzbm(Context context) {
        ap.checkNotNull(context);
        if (f3538a == null) {
            synchronized (z.class) {
                if (f3538a == null) {
                    d zzamg = e.zzamg();
                    long elapsedRealtime = zzamg.elapsedRealtime();
                    z zVar = new z(new ab(context));
                    f3538a = zVar;
                    com.google.android.gms.analytics.d.zzur();
                    long elapsedRealtime2 = zzamg.elapsedRealtime() - elapsedRealtime;
                    long longValue = bf.zzdxm.get().longValue();
                    if (elapsedRealtime2 > longValue) {
                        zVar.zzwt().zzc("Slow initialization (ms)", Long.valueOf(elapsedRealtime2), Long.valueOf(longValue));
                    }
                }
            }
        }
        return f3538a;
    }

    public final Context getContext() {
        return this.f3539b;
    }

    public final d zzws() {
        return this.d;
    }

    public final bp zzwt() {
        a(this.f);
        return this.f;
    }

    public final ax zzwu() {
        return this.e;
    }

    public final r zzwv() {
        ap.checkNotNull(this.g);
        return this.g;
    }

    public final o zzwx() {
        a(this.h);
        return this.h;
    }

    public final bc zzwy() {
        a(this.i);
        return this.i;
    }

    public final cf zzwz() {
        a(this.j);
        return this.j;
    }

    public final bt zzxa() {
        a(this.k);
        return this.k;
    }

    public final ak zzxd() {
        a(this.o);
        return this.o;
    }

    public final bb zzxe() {
        return this.p;
    }

    public final Context zzxg() {
        return this.c;
    }

    public final bp zzxh() {
        return this.f;
    }

    public final com.google.android.gms.analytics.d zzxi() {
        ap.checkNotNull(this.l);
        ap.checkArgument(this.l.isInitialized(), "Analytics instance not initialized");
        return this.l;
    }

    public final bt zzxj() {
        bt btVar = this.k;
        if (btVar == null || !btVar.isInitialized()) {
            return null;
        }
        return this.k;
    }

    public final n zzxk() {
        a(this.n);
        return this.n;
    }

    public final aq zzxl() {
        a(this.m);
        return this.m;
    }
}
