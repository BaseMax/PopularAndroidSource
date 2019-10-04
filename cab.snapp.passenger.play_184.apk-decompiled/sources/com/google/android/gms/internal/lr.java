package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.stats.a;
import com.google.android.gms.common.util.d;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class lr extends kw {

    /* renamed from: a  reason: collision with root package name */
    final mf f3352a;

    /* renamed from: b  reason: collision with root package name */
    ir f3353b;
    volatile Boolean c;
    private final ih d;
    private final mv f;
    private final List<Runnable> g = new ArrayList();
    private final ih h;

    protected lr(jx jxVar) {
        super(jxVar);
        this.f = new mv(jxVar.zzws());
        this.f3352a = new mf(this);
        this.d = new ls(this, jxVar);
        this.h = new lx(this, jxVar);
    }

    private final zzcgi a(boolean z) {
        return zzawn().a(z ? zzawy().zzazk() : null);
    }

    private final void a(Runnable runnable) throws IllegalStateException {
        zzve();
        if (isConnected()) {
            runnable.run();
        } else if (((long) this.g.size()) >= 1000) {
            zzawy().zzazd().log("Discarding data. Max runnable queue size reached");
        } else {
            this.g.add(runnable);
            this.h.zzs(60000);
            g();
        }
    }

    /* access modifiers changed from: protected */
    public final void a(ir irVar) {
        zzve();
        ap.checkNotNull(irVar);
        this.f3353b = irVar;
        f();
        h();
    }

    /* access modifiers changed from: package-private */
    public final void a(ir irVar, zzbfm zzbfm, zzcgi zzcgi) {
        int i;
        jb zzazd;
        String str;
        zzve();
        k();
        int i2 = 0;
        int i3 = 100;
        while (i2 < 1001 && i3 == 100) {
            ArrayList arrayList = new ArrayList();
            List<zzbfm> zzeb = zzawr().zzeb(100);
            if (zzeb != null) {
                arrayList.addAll(zzeb);
                i = zzeb.size();
            } else {
                i = 0;
            }
            if (zzbfm != null && i < 100) {
                arrayList.add(zzbfm);
            }
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i4 = 0;
            while (i4 < size) {
                Object obj = arrayList2.get(i4);
                i4++;
                zzbfm zzbfm2 = (zzbfm) obj;
                if (zzbfm2 instanceof zzcha) {
                    try {
                        irVar.zza((zzcha) zzbfm2, zzcgi);
                    } catch (RemoteException e) {
                        e = e;
                        zzazd = zzawy().zzazd();
                        str = "Failed to send event to the service";
                    }
                } else if (zzbfm2 instanceof zzcln) {
                    try {
                        irVar.zza((zzcln) zzbfm2, zzcgi);
                    } catch (RemoteException e2) {
                        e = e2;
                        zzazd = zzawy().zzazd();
                        str = "Failed to send attribute to the service";
                    }
                } else if (zzbfm2 instanceof zzcgl) {
                    try {
                        irVar.zza((zzcgl) zzbfm2, zzcgi);
                    } catch (RemoteException e3) {
                        e = e3;
                        zzazd = zzawy().zzazd();
                        str = "Failed to send conditional property to the service";
                    }
                } else {
                    zzawy().zzazd().log("Discarding data. Unrecognized parcel type.");
                }
            }
            i2++;
            i3 = i;
        }
        return;
        zzazd.zzj(str, e);
    }

    /* access modifiers changed from: protected */
    public final void a(zzcgl zzcgl) {
        ap.checkNotNull(zzcgl);
        zzve();
        k();
        ma maVar = new ma(this, zzawr().zzc(zzcgl), new zzcgl(zzcgl), a(true), zzcgl);
        a((Runnable) maVar);
    }

    /* access modifiers changed from: protected */
    public final void a(zzcha zzcha, String str) {
        ap.checkNotNull(zzcha);
        zzve();
        k();
        lz lzVar = new lz(this, zzawr().zza(zzcha), zzcha, a(true), str);
        a((Runnable) lzVar);
    }

    /* access modifiers changed from: protected */
    public final void a(zzcln zzcln) {
        zzve();
        k();
        a((Runnable) new md(this, zzawr().zza(zzcln), zzcln, a(true)));
    }

    /* access modifiers changed from: protected */
    public final void a(AppMeasurement.g gVar) {
        zzve();
        k();
        a((Runnable) new lw(this, gVar));
    }

    /* access modifiers changed from: protected */
    public final void a(AtomicReference<List<zzcgl>> atomicReference, String str, String str2, String str3) {
        zzve();
        k();
        mb mbVar = new mb(this, atomicReference, str, str2, str3, a(false));
        a((Runnable) mbVar);
    }

    /* access modifiers changed from: protected */
    public final void a(AtomicReference<List<zzcln>> atomicReference, String str, String str2, String str3, boolean z) {
        zzve();
        k();
        mc mcVar = new mc(this, atomicReference, str, str2, str3, z, a(false));
        a((Runnable) mcVar);
    }

    /* access modifiers changed from: protected */
    public final void a(AtomicReference<List<zzcln>> atomicReference, boolean z) {
        zzve();
        k();
        a((Runnable) new me(this, atomicReference, a(false), z));
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return false;
    }

    /* access modifiers changed from: protected */
    public final void c() {
        zzve();
        k();
        a((Runnable) new ly(this, a(true)));
    }

    /* access modifiers changed from: protected */
    public final void d() {
        zzve();
        k();
        zzcgi a2 = a(false);
        zzawr().resetAnalyticsData();
        a((Runnable) new lt(this, a2));
    }

    public final void disconnect() {
        zzve();
        k();
        try {
            a.zzamc();
            getContext().unbindService(this.f3352a);
        } catch (IllegalArgumentException | IllegalStateException unused) {
        }
        this.f3353b = null;
    }

    /* access modifiers changed from: protected */
    public final void e() {
        zzve();
        k();
        a((Runnable) new lv(this, a(true)));
    }

    /* access modifiers changed from: package-private */
    public final void f() {
        zzve();
        this.f.start();
        this.d.zzs(ip.zzjbj.get().longValue());
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x00fb  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void g() {
        /*
            r6 = this;
            r6.zzve()
            r6.k()
            boolean r0 = r6.isConnected()
            if (r0 == 0) goto L_0x000d
            return
        L_0x000d:
            java.lang.Boolean r0 = r6.c
            r1 = 0
            r2 = 1
            if (r0 != 0) goto L_0x0108
            r6.zzve()
            r6.k()
            com.google.android.gms.internal.jj r0 = r6.zzawz()
            java.lang.Boolean r0 = r0.e()
            if (r0 == 0) goto L_0x002c
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x002c
            r3 = 1
            goto L_0x0102
        L_0x002c:
            com.google.android.gms.internal.iu r0 = r6.zzawn()
            int r0 = r0.g()
            if (r0 != r2) goto L_0x003a
        L_0x0036:
            r0 = 1
            r3 = 1
            goto L_0x00f9
        L_0x003a:
            com.google.android.gms.internal.iz r0 = r6.zzawy()
            com.google.android.gms.internal.jb r0 = r0.zzazj()
            java.lang.String r3 = "Checking service availability"
            r0.log(r3)
            com.google.android.gms.internal.na r0 = r6.zzawu()
            com.google.android.gms.common.j r3 = com.google.android.gms.common.j.zzafy()
            android.content.Context r0 = r0.getContext()
            int r0 = r3.isGooglePlayServicesAvailable(r0)
            if (r0 == 0) goto L_0x00ea
            if (r0 == r2) goto L_0x00db
            r3 = 2
            if (r0 == r3) goto L_0x00a3
            r3 = 3
            if (r0 == r3) goto L_0x0095
            r3 = 9
            if (r0 == r3) goto L_0x008a
            r3 = 18
            if (r0 == r3) goto L_0x007e
            com.google.android.gms.internal.iz r3 = r6.zzawy()
            com.google.android.gms.internal.jb r3 = r3.zzazf()
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            java.lang.String r4 = "Unexpected service status"
            r3.zzj(r4, r0)
        L_0x007a:
            r0 = 0
        L_0x007b:
            r3 = 0
            goto L_0x00f9
        L_0x007e:
            com.google.android.gms.internal.iz r0 = r6.zzawy()
            com.google.android.gms.internal.jb r0 = r0.zzazf()
            java.lang.String r3 = "Service updating"
            goto L_0x00f4
        L_0x008a:
            com.google.android.gms.internal.iz r0 = r6.zzawy()
            com.google.android.gms.internal.jb r0 = r0.zzazf()
            java.lang.String r3 = "Service invalid"
            goto L_0x009f
        L_0x0095:
            com.google.android.gms.internal.iz r0 = r6.zzawy()
            com.google.android.gms.internal.jb r0 = r0.zzazf()
            java.lang.String r3 = "Service disabled"
        L_0x009f:
            r0.log(r3)
            goto L_0x007a
        L_0x00a3:
            com.google.android.gms.internal.iz r0 = r6.zzawy()
            com.google.android.gms.internal.jb r0 = r0.zzazi()
            java.lang.String r3 = "Service container out of date"
            r0.log(r3)
            com.google.android.gms.internal.na r0 = r6.zzawu()
            com.google.android.gms.common.j.zzafy()
            android.content.Context r0 = r0.getContext()
            int r0 = com.google.android.gms.common.j.zzcf(r0)
            r3 = 11400(0x2c88, float:1.5975E-41)
            if (r0 >= r3) goto L_0x00c4
            goto L_0x00e8
        L_0x00c4:
            com.google.android.gms.internal.jj r0 = r6.zzawz()
            java.lang.Boolean r0 = r0.e()
            if (r0 == 0) goto L_0x00d7
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x00d5
            goto L_0x00d7
        L_0x00d5:
            r0 = 0
            goto L_0x00d8
        L_0x00d7:
            r0 = 1
        L_0x00d8:
            r3 = r0
            r0 = 0
            goto L_0x00f9
        L_0x00db:
            com.google.android.gms.internal.iz r0 = r6.zzawy()
            com.google.android.gms.internal.jb r0 = r0.zzazj()
            java.lang.String r3 = "Service missing"
            r0.log(r3)
        L_0x00e8:
            r0 = 1
            goto L_0x007b
        L_0x00ea:
            com.google.android.gms.internal.iz r0 = r6.zzawy()
            com.google.android.gms.internal.jb r0 = r0.zzazj()
            java.lang.String r3 = "Service available"
        L_0x00f4:
            r0.log(r3)
            goto L_0x0036
        L_0x00f9:
            if (r0 == 0) goto L_0x0102
            com.google.android.gms.internal.jj r0 = r6.zzawz()
            r0.a((boolean) r3)
        L_0x0102:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r3)
            r6.c = r0
        L_0x0108:
            java.lang.Boolean r0 = r6.c
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L_0x0116
            com.google.android.gms.internal.mf r0 = r6.f3352a
            r0.zzbau()
            return
        L_0x0116:
            android.content.Context r0 = r6.getContext()
            android.content.pm.PackageManager r0 = r0.getPackageManager()
            android.content.Intent r3 = new android.content.Intent
            r3.<init>()
            android.content.Context r4 = r6.getContext()
            java.lang.String r5 = "com.google.android.gms.measurement.AppMeasurementService"
            android.content.Intent r3 = r3.setClassName(r4, r5)
            r4 = 65536(0x10000, float:9.18355E-41)
            java.util.List r0 = r0.queryIntentServices(r3, r4)
            if (r0 == 0) goto L_0x013c
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x013c
            r1 = 1
        L_0x013c:
            if (r1 == 0) goto L_0x0157
            android.content.Intent r0 = new android.content.Intent
            java.lang.String r1 = "com.google.android.gms.measurement.START"
            r0.<init>(r1)
            android.content.ComponentName r1 = new android.content.ComponentName
            android.content.Context r2 = r6.getContext()
            r1.<init>(r2, r5)
            r0.setComponent(r1)
            com.google.android.gms.internal.mf r1 = r6.f3352a
            r1.zzn(r0)
            return
        L_0x0157:
            com.google.android.gms.internal.iz r0 = r6.zzawy()
            com.google.android.gms.internal.jb r0 = r0.zzazd()
            java.lang.String r1 = "Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest"
            r0.log(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.lr.g():void");
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    /* access modifiers changed from: package-private */
    public final void h() {
        zzve();
        zzawy().zzazj().zzj("Processing queued up service tasks", Integer.valueOf(this.g.size()));
        for (Runnable run : this.g) {
            try {
                run.run();
            } catch (Throwable th) {
                zzawy().zzazd().zzj("Task exception while flushing queue", th);
            }
        }
        this.g.clear();
        this.h.cancel();
    }

    public final boolean isConnected() {
        zzve();
        k();
        return this.f3353b != null;
    }

    public final void zza(AtomicReference<String> atomicReference) {
        zzve();
        k();
        a((Runnable) new lu(this, atomicReference, a(false)));
    }

    public final /* bridge */ /* synthetic */ void zzawi() {
        super.zzawi();
    }

    public final /* bridge */ /* synthetic */ void zzawj() {
        super.zzawj();
    }

    public final /* bridge */ /* synthetic */ hu zzawk() {
        return super.zzawk();
    }

    public final /* bridge */ /* synthetic */ ia zzawl() {
        return super.zzawl();
    }

    public final /* bridge */ /* synthetic */ ky zzawm() {
        return super.zzawm();
    }

    public final /* bridge */ /* synthetic */ iu zzawn() {
        return super.zzawn();
    }

    public final /* bridge */ /* synthetic */ ij zzawo() {
        return super.zzawo();
    }

    public final /* bridge */ /* synthetic */ lr zzawp() {
        return super.zzawp();
    }

    public final /* bridge */ /* synthetic */ ln zzawq() {
        return super.zzawq();
    }

    public final /* bridge */ /* synthetic */ iv zzawr() {
        return super.zzawr();
    }

    public final /* bridge */ /* synthetic */ id zzaws() {
        return super.zzaws();
    }

    public final /* bridge */ /* synthetic */ ix zzawt() {
        return super.zzawt();
    }

    public final /* bridge */ /* synthetic */ na zzawu() {
        return super.zzawu();
    }

    public final /* bridge */ /* synthetic */ jr zzawv() {
        return super.zzawv();
    }

    public final /* bridge */ /* synthetic */ mq zzaww() {
        return super.zzaww();
    }

    public final /* bridge */ /* synthetic */ js zzawx() {
        return super.zzawx();
    }

    public final /* bridge */ /* synthetic */ iz zzawy() {
        return super.zzawy();
    }

    public final /* bridge */ /* synthetic */ jj zzawz() {
        return super.zzawz();
    }

    public final /* bridge */ /* synthetic */ ic zzaxa() {
        return super.zzaxa();
    }

    public final /* bridge */ /* synthetic */ void zzve() {
        super.zzve();
    }

    public final /* bridge */ /* synthetic */ d zzws() {
        return super.zzws();
    }

    static /* synthetic */ void a(lr lrVar, ComponentName componentName) {
        lrVar.zzve();
        if (lrVar.f3353b != null) {
            lrVar.f3353b = null;
            lrVar.zzawy().zzazj().zzj("Disconnected from device MeasurementService", componentName);
            lrVar.zzve();
            lrVar.g();
        }
    }
}
