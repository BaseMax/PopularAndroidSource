package com.google.android.gms.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.analytics.a;
import com.google.android.gms.analytics.i;
import com.google.android.gms.analytics.o;
import com.google.android.gms.analytics.p;
import com.google.android.gms.analytics.r;
import com.google.android.gms.common.internal.ap;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

final class al extends x {

    /* renamed from: a  reason: collision with root package name */
    final ai f3062a;

    /* renamed from: b  reason: collision with root package name */
    final az f3063b;
    long c;
    private boolean d;
    private final br e;
    private final bq f;
    private final ad g;
    private long h = Long.MIN_VALUE;
    private final az i;
    private final ca j;
    private boolean k;

    private final void e() {
        if (!this.k && ax.zzyq() && !this.g.isConnected()) {
            if (this.j.zzu(bf.zzdxk.get().longValue())) {
                this.j.start();
                zzdu("Connecting to service");
                if (this.g.connect()) {
                    zzdu("Connected to service");
                    this.j.clear();
                    d();
                }
            }
        }
    }

    private final boolean f() {
        r.zzve();
        c();
        zzdu("Dispatching a batch of local hits");
        boolean z = !this.g.isConnected();
        boolean z2 = !this.e.zzzs();
        if (!z || !z2) {
            long max = (long) Math.max(ax.zzyu(), ax.zzyv());
            ArrayList arrayList = new ArrayList();
            long j2 = 0;
            while (true) {
                this.f3062a.beginTransaction();
                arrayList.clear();
                try {
                    List<bk> zzo = this.f3062a.zzo(max);
                    if (zzo.isEmpty()) {
                        zzdu("Store is empty, nothing to dispatch");
                        i();
                        try {
                            this.f3062a.setTransactionSuccessful();
                            this.f3062a.endTransaction();
                            return false;
                        } catch (SQLiteException e2) {
                            zze("Failed to commit local dispatch transaction", e2);
                            i();
                            return false;
                        }
                    } else {
                        zza("Hits loaded from store. count", Integer.valueOf(zzo.size()));
                        for (bk zzzh : zzo) {
                            if (zzzh.zzzh() == j2) {
                                zzd("Database contains successfully uploaded hit", Long.valueOf(j2), Integer.valueOf(zzo.size()));
                                i();
                                try {
                                    this.f3062a.setTransactionSuccessful();
                                    this.f3062a.endTransaction();
                                    return false;
                                } catch (SQLiteException e3) {
                                    zze("Failed to commit local dispatch transaction", e3);
                                    i();
                                    return false;
                                }
                            }
                        }
                        if (this.g.isConnected()) {
                            zzdu("Service connected, sending hits to the service");
                            while (!zzo.isEmpty()) {
                                bk bkVar = zzo.get(0);
                                if (this.g.zzb(bkVar)) {
                                    j2 = Math.max(j2, bkVar.zzzh());
                                    zzo.remove(bkVar);
                                    zzb("Hit sent do device AnalyticsService for delivery", bkVar);
                                    try {
                                        this.f3062a.zzp(bkVar.zzzh());
                                        arrayList.add(Long.valueOf(bkVar.zzzh()));
                                    } catch (SQLiteException e4) {
                                        zze("Failed to remove hit that was send for delivery", e4);
                                        i();
                                        try {
                                            this.f3062a.setTransactionSuccessful();
                                            this.f3062a.endTransaction();
                                            return false;
                                        } catch (SQLiteException e5) {
                                            zze("Failed to commit local dispatch transaction", e5);
                                            i();
                                            return false;
                                        }
                                    } catch (Throwable th) {
                                        try {
                                            this.f3062a.setTransactionSuccessful();
                                            this.f3062a.endTransaction();
                                            throw th;
                                        } catch (SQLiteException e6) {
                                            zze("Failed to commit local dispatch transaction", e6);
                                            i();
                                            return false;
                                        }
                                    }
                                }
                            }
                        }
                        if (this.e.zzzs()) {
                            List<Long> zzu = this.e.zzu(zzo);
                            for (Long longValue : zzu) {
                                j2 = Math.max(j2, longValue.longValue());
                            }
                            try {
                                this.f3062a.zzs(zzu);
                                arrayList.addAll(zzu);
                            } catch (SQLiteException e7) {
                                zze("Failed to remove successfully uploaded hits", e7);
                                i();
                                try {
                                    this.f3062a.setTransactionSuccessful();
                                    this.f3062a.endTransaction();
                                    return false;
                                } catch (SQLiteException e8) {
                                    zze("Failed to commit local dispatch transaction", e8);
                                    i();
                                    return false;
                                }
                            }
                        }
                        if (arrayList.isEmpty()) {
                            try {
                                this.f3062a.setTransactionSuccessful();
                                this.f3062a.endTransaction();
                                return false;
                            } catch (SQLiteException e9) {
                                zze("Failed to commit local dispatch transaction", e9);
                                i();
                                return false;
                            }
                        } else {
                            try {
                                this.f3062a.setTransactionSuccessful();
                                this.f3062a.endTransaction();
                            } catch (SQLiteException e10) {
                                zze("Failed to commit local dispatch transaction", e10);
                                i();
                                return false;
                            }
                        }
                    }
                } catch (SQLiteException e11) {
                    zzd("Failed to read hits from persisted store", e11);
                    i();
                    try {
                        this.f3062a.setTransactionSuccessful();
                        this.f3062a.endTransaction();
                        return false;
                    } catch (SQLiteException e12) {
                        zze("Failed to commit local dispatch transaction", e12);
                        i();
                        return false;
                    }
                }
            }
        } else {
            zzdu("No network or service available. Will retry later");
            return false;
        }
    }

    private final long g() {
        r.zzve();
        c();
        try {
            return this.f3062a.zzxv();
        } catch (SQLiteException e2) {
            zze("Failed to get min/max hit times from local store", e2);
            return 0;
        }
    }

    private final void k() {
        c();
        r.zzve();
        this.k = true;
        this.g.disconnect();
        zzyf();
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:15:0x0044 A[LOOP:1: B:15:0x0044->B:23:?, LOOP_START] */
    /* JADX WARNING: Removed duplicated region for block: B:31:0x0040 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void d() {
        /*
            r5 = this;
            com.google.android.gms.analytics.r.zzve()
            com.google.android.gms.analytics.r.zzve()
            r5.c()
            boolean r0 = com.google.android.gms.internal.ax.zzyq()
            if (r0 != 0) goto L_0x0014
            java.lang.String r0 = "Service client disabled. Can't dispatch local hits to device AnalyticsService"
            r5.zzdx(r0)
        L_0x0014:
            com.google.android.gms.internal.ad r0 = r5.g
            boolean r0 = r0.isConnected()
            if (r0 != 0) goto L_0x0022
            java.lang.String r0 = "Service not connected"
            r5.zzdu(r0)
            return
        L_0x0022:
            com.google.android.gms.internal.ai r0 = r5.f3062a
            boolean r0 = r0.a()
            if (r0 != 0) goto L_0x007d
            java.lang.String r0 = "Dispatching local hits to device AnalyticsService"
            r5.zzdu(r0)
        L_0x002f:
            com.google.android.gms.internal.ai r0 = r5.f3062a     // Catch:{ SQLiteException -> 0x0074 }
            int r1 = com.google.android.gms.internal.ax.zzyu()     // Catch:{ SQLiteException -> 0x0074 }
            long r1 = (long) r1     // Catch:{ SQLiteException -> 0x0074 }
            java.util.List r0 = r0.zzo(r1)     // Catch:{ SQLiteException -> 0x0074 }
            boolean r1 = r0.isEmpty()     // Catch:{ SQLiteException -> 0x0074 }
            if (r1 == 0) goto L_0x0044
            r5.zzyf()     // Catch:{ SQLiteException -> 0x0074 }
            return
        L_0x0044:
            boolean r1 = r0.isEmpty()
            if (r1 != 0) goto L_0x002f
            r1 = 0
            java.lang.Object r1 = r0.get(r1)
            com.google.android.gms.internal.bk r1 = (com.google.android.gms.internal.bk) r1
            com.google.android.gms.internal.ad r2 = r5.g
            boolean r2 = r2.zzb(r1)
            if (r2 != 0) goto L_0x005d
            r5.zzyf()
            return
        L_0x005d:
            r0.remove(r1)
            com.google.android.gms.internal.ai r2 = r5.f3062a     // Catch:{ SQLiteException -> 0x006a }
            long r3 = r1.zzzh()     // Catch:{ SQLiteException -> 0x006a }
            r2.zzp(r3)     // Catch:{ SQLiteException -> 0x006a }
            goto L_0x0044
        L_0x006a:
            r0 = move-exception
            java.lang.String r1 = "Failed to remove hit that was send for delivery"
            r5.zze(r1, r0)
            r5.i()
            return
        L_0x0074:
            r0 = move-exception
            java.lang.String r1 = "Failed to read hits from store"
            r5.zze(r1, r0)
            r5.i()
        L_0x007d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.al.d():void");
    }

    public final long zza(ac acVar, boolean z) {
        ap.checkNotNull(acVar);
        c();
        r.zzve();
        try {
            this.f3062a.beginTransaction();
            ai aiVar = this.f3062a;
            long zzxm = acVar.zzxm();
            String zzvz = acVar.zzvz();
            ap.zzgm(zzvz);
            aiVar.c();
            r.zzve();
            int i2 = 1;
            int delete = aiVar.b().delete("properties", "app_uid=? AND cid<>?", new String[]{String.valueOf(zzxm), zzvz});
            if (delete > 0) {
                aiVar.zza("Deleted property records", Integer.valueOf(delete));
            }
            long zza = this.f3062a.zza(acVar.zzxm(), acVar.zzvz(), acVar.zzxn());
            acVar.zzm(1 + zza);
            ai aiVar2 = this.f3062a;
            ap.checkNotNull(acVar);
            aiVar2.c();
            r.zzve();
            SQLiteDatabase b2 = aiVar2.b();
            Map<String, String> zzjh = acVar.zzjh();
            ap.checkNotNull(zzjh);
            Uri.Builder builder = new Uri.Builder();
            for (Map.Entry next : zzjh.entrySet()) {
                builder.appendQueryParameter((String) next.getKey(), (String) next.getValue());
            }
            String encodedQuery = builder.build().getEncodedQuery();
            if (encodedQuery == null) {
                encodedQuery = "";
            }
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_uid", Long.valueOf(acVar.zzxm()));
            contentValues.put("cid", acVar.zzvz());
            contentValues.put("tid", acVar.zzxn());
            if (!acVar.zzxo()) {
                i2 = 0;
            }
            contentValues.put("adid", Integer.valueOf(i2));
            contentValues.put("hits_count", Long.valueOf(acVar.zzxp()));
            contentValues.put("params", encodedQuery);
            try {
                if (b2.insertWithOnConflict("properties", null, contentValues, 5) == -1) {
                    aiVar2.zzdy("Failed to insert/update a property (got -1)");
                }
            } catch (SQLiteException e2) {
                aiVar2.zze("Error storing a property", e2);
            }
            this.f3062a.setTransactionSuccessful();
            try {
                this.f3062a.endTransaction();
            } catch (SQLiteException e3) {
                zze("Failed to end transaction", e3);
            }
            return zza;
        } catch (SQLiteException e4) {
            zze("Failed to update Analytics property", e4);
            try {
                this.f3062a.endTransaction();
            } catch (SQLiteException e5) {
                zze("Failed to end transaction", e5);
            }
            return -1;
        } catch (Throwable th) {
            Throwable th2 = th;
            try {
                this.f3062a.endTransaction();
            } catch (SQLiteException e6) {
                zze("Failed to end transaction", e6);
            }
            throw th2;
        }
    }

    public final void zzr(long j2) {
        r.zzve();
        c();
        if (j2 < 0) {
            j2 = 0;
        }
        this.h = j2;
        zzyf();
    }

    /* access modifiers changed from: protected */
    public final void zzvf() {
        this.f3062a.initialize();
        this.e.initialize();
        this.g.initialize();
    }

    public final void zzwm() {
        r.zzve();
        c();
        zzdu("Delete all hits from local store");
        try {
            ai aiVar = this.f3062a;
            r.zzve();
            aiVar.c();
            aiVar.b().delete("hits2", null, null);
            ai aiVar2 = this.f3062a;
            r.zzve();
            aiVar2.c();
            aiVar2.b().delete("properties", null, null);
            zzyf();
        } catch (SQLiteException e2) {
            zzd("Failed to delete hits from store", e2);
        }
        e();
        if (this.g.zzxq()) {
            zzdu("Device service unavailable. Can't clear hits stored on the device service.");
        }
    }

    protected al(z zVar, ab abVar) {
        super(zVar);
        ap.checkNotNull(abVar);
        this.f = new bq(zVar);
        this.f3062a = new ai(zVar);
        this.e = new br(zVar);
        this.g = new ad(zVar);
        this.j = new ca(this.zzdta.zzws());
        this.i = new am(this, zVar);
        this.f3063b = new an(this, zVar);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        c();
        ap.zza(!this.d, (Object) "Analytics backend already started");
        this.d = true;
        this.zzdta.zzwv().zzc(new ao(this));
    }

    private final boolean a(String str) {
        return fr.zzdb(this.zzdta.getContext()).checkCallingOrSelfPermission(str) == 0;
    }

    /* access modifiers changed from: protected */
    public final void b() {
        c();
        r.zzve();
        Context context = zzwr().getContext();
        if (!bv.zzbk(context)) {
            zzdx("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
        } else if (!bw.zzbo(context)) {
            zzdy("AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!a.zzbk(context)) {
            zzdx("CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        }
        this.zzdta.zzxa().zzzw();
        if (!a("android.permission.ACCESS_NETWORK_STATE")) {
            zzdy("Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            k();
        }
        if (!a("android.permission.INTERNET")) {
            zzdy("Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
            k();
        }
        if (bw.zzbo(this.zzdta.getContext())) {
            zzdu("AnalyticsService registered in the app manifest and enabled");
        } else {
            zzdx("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
        }
        if (!this.k && !this.f3062a.a()) {
            e();
        }
        zzyf();
    }

    public final void zza(bk bkVar) {
        ap.checkNotNull(bkVar);
        r.zzve();
        c();
        if (this.k) {
            zzdv("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
        } else {
            zza("Delivering hit", bkVar);
        }
        if (TextUtils.isEmpty(bkVar.zzzm())) {
            Pair<String, Long> zzaad = this.zzdta.zzxa().zzaab().zzaad();
            if (zzaad != null) {
                String str = (String) zzaad.first;
                String valueOf = String.valueOf((Long) zzaad.second);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str).length());
                sb.append(valueOf);
                sb.append(":");
                sb.append(str);
                String sb2 = sb.toString();
                HashMap hashMap = new HashMap(bkVar.zzjh());
                hashMap.put("_m", sb2);
                bk bkVar2 = new bk(this, hashMap, bkVar.zzzi(), bkVar.zzzk(), bkVar.zzzh(), bkVar.zzzg(), bkVar.zzzj());
                bkVar = bkVar2;
            }
        }
        e();
        if (this.g.zzb(bkVar)) {
            zzdv("Hit sent to the device AnalyticsService for delivery");
            return;
        }
        try {
            this.f3062a.zzc(bkVar);
            zzyf();
        } catch (SQLiteException e2) {
            zze("Delivery failed to save hit to a database", e2);
            this.zzdta.zzwt().zza(bkVar, "deliver: failed to insert hit to database");
        }
    }

    public final void zzb(bd bdVar) {
        long j2 = this.c;
        r.zzve();
        c();
        long zzzy = this.zzdta.zzxa().zzzy();
        zzb("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(zzzy != 0 ? Math.abs(this.zzdta.zzws().currentTimeMillis() - zzzy) : -1));
        e();
        try {
            f();
            this.zzdta.zzxa().zzzz();
            zzyf();
            if (bdVar != null) {
                bdVar.zzd(null);
            }
            if (this.c != j2) {
                this.f.zzzr();
            }
        } catch (Throwable th) {
            zze("Local dispatch failed", th);
            this.zzdta.zzxa().zzzz();
            zzyf();
            if (bdVar != null) {
                bdVar.zzd(th);
            }
        }
    }

    public final void zzye() {
        r.zzve();
        c();
        zzdv("Sync dispatching local hits");
        long j2 = this.c;
        e();
        try {
            f();
            this.zzdta.zzxa().zzzz();
            zzyf();
            if (this.c != j2) {
                this.f.zzzr();
            }
        } catch (Throwable th) {
            zze("Sync local dispatch failed", th);
            zzyf();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:20:0x0077, code lost:
        if (r4 > 0) goto L_0x0082;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzyf() {
        /*
            r8 = this;
            com.google.android.gms.analytics.r.zzve()
            r8.c()
            boolean r0 = r8.k
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L_0x0017
            long r4 = r8.j()
            int r0 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r0 <= 0) goto L_0x0017
            r0 = 1
            goto L_0x0018
        L_0x0017:
            r0 = 0
        L_0x0018:
            if (r0 != 0) goto L_0x0023
            com.google.android.gms.internal.bq r0 = r8.f
            r0.unregister()
            r8.i()
            return
        L_0x0023:
            com.google.android.gms.internal.ai r0 = r8.f3062a
            boolean r0 = r0.a()
            if (r0 == 0) goto L_0x0034
            com.google.android.gms.internal.bq r0 = r8.f
            r0.unregister()
            r8.i()
            return
        L_0x0034:
            com.google.android.gms.internal.bg<java.lang.Boolean> r0 = com.google.android.gms.internal.bf.zzdxf
            java.lang.Object r0 = r0.get()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L_0x004d
            com.google.android.gms.internal.bq r0 = r8.f
            r0.zzzp()
            com.google.android.gms.internal.bq r0 = r8.f
            boolean r1 = r0.isConnected()
        L_0x004d:
            if (r1 == 0) goto L_0x00ac
            r8.h()
            long r0 = r8.j()
            com.google.android.gms.internal.z r4 = r8.zzdta
            com.google.android.gms.internal.bt r4 = r4.zzxa()
            long r4 = r4.zzzy()
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 == 0) goto L_0x007a
            com.google.android.gms.internal.z r6 = r8.zzdta
            com.google.android.gms.common.util.d r6 = r6.zzws()
            long r6 = r6.currentTimeMillis()
            long r6 = r6 - r4
            long r4 = java.lang.Math.abs(r6)
            long r4 = r0 - r4
            int r6 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r6 <= 0) goto L_0x007a
            goto L_0x0082
        L_0x007a:
            long r2 = com.google.android.gms.internal.ax.zzys()
            long r4 = java.lang.Math.min(r2, r0)
        L_0x0082:
            java.lang.Long r0 = java.lang.Long.valueOf(r4)
            java.lang.String r1 = "Dispatch scheduled (ms)"
            r8.zza(r1, r0)
            com.google.android.gms.internal.az r0 = r8.i
            boolean r0 = r0.zzdx()
            if (r0 == 0) goto L_0x00a6
            r0 = 1
            com.google.android.gms.internal.az r2 = r8.i
            long r2 = r2.zzzb()
            long r4 = r4 + r2
            long r0 = java.lang.Math.max(r0, r4)
            com.google.android.gms.internal.az r2 = r8.i
            r2.zzt(r0)
            return
        L_0x00a6:
            com.google.android.gms.internal.az r0 = r8.i
            r0.zzs(r4)
            return
        L_0x00ac:
            r8.i()
            r8.h()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.al.zzyf():void");
    }

    private final void h() {
        bc zzwy = this.zzdta.zzwy();
        if (zzwy.zzze() && !zzwy.zzdx()) {
            long g2 = g();
            if (g2 != 0 && Math.abs(this.zzdta.zzws().currentTimeMillis() - g2) <= bf.zzdwj.get().longValue()) {
                zza("Dispatch alarm scheduled (ms)", Long.valueOf(ax.zzyt()));
                zzwy.schedule();
            }
        }
    }

    private final void i() {
        if (this.i.zzdx()) {
            zzdu("All hits dispatched or no network/service. Going to power save mode");
        }
        this.i.cancel();
        bc zzwy = this.zzdta.zzwy();
        if (zzwy.zzdx()) {
            zzwy.cancel();
        }
    }

    private final long j() {
        long j2 = this.h;
        if (j2 != Long.MIN_VALUE) {
            return j2;
        }
        long longValue = bf.zzdwe.get().longValue();
        cf zzwz = this.zzdta.zzwz();
        zzwz.c();
        if (zzwz.f3118a) {
            cf zzwz2 = this.zzdta.zzwz();
            zzwz2.c();
            longValue = ((long) zzwz2.f3119b) * 1000;
        }
        return longValue;
    }

    public final void zzec(String str) {
        ap.zzgm(str);
        r.zzve();
        b zza = ce.zza(this.zzdta.zzwt(), str);
        if (zza == null) {
            zzd("Parsing failed. Ignoring invalid campaign data", str);
            return;
        }
        String zzaaa = this.zzdta.zzxa().zzaaa();
        if (str.equals(zzaaa)) {
            zzdx("Ignoring duplicate install campaign");
        } else if (!TextUtils.isEmpty(zzaaa)) {
            zzd("Ignoring multiple install campaigns. original, new", zzaaa, str);
        } else {
            this.zzdta.zzxa().zzef(str);
            if (this.zzdta.zzxa().zzzx().zzu(ax.zzza())) {
                zzd("Campaign received too late, ignoring", zza);
                return;
            }
            zzb("Received installation campaign", zza);
            for (ac a2 : this.f3062a.zzq(0)) {
                a(a2, zza);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(ac acVar, b bVar) {
        ap.checkNotNull(acVar);
        ap.checkNotNull(bVar);
        i iVar = new i(zzwr());
        iVar.zzde(acVar.zzxn());
        iVar.enableAdvertisingIdCollection(acVar.zzxo());
        o zzun = iVar.zzun();
        j jVar = (j) zzun.zzb(j.class);
        jVar.zzdp("data");
        jVar.zzaj(true);
        zzun.zza((p) bVar);
        e eVar = (e) zzun.zzb(e.class);
        a aVar = (a) zzun.zzb(a.class);
        for (Map.Entry next : acVar.zzjh().entrySet()) {
            String str = (String) next.getKey();
            String str2 = (String) next.getValue();
            if ("an".equals(str)) {
                aVar.setAppName(str2);
            } else if ("av".equals(str)) {
                aVar.setAppVersion(str2);
            } else if ("aid".equals(str)) {
                aVar.setAppId(str2);
            } else if ("aiid".equals(str)) {
                aVar.setAppInstallerId(str2);
            } else if ("uid".equals(str)) {
                jVar.setUserId(str2);
            } else {
                eVar.set(str, str2);
            }
        }
        zzb("Sending installation campaign to", acVar.zzxn(), bVar);
        zzun.zzl(this.zzdta.zzxa().zzzw());
        zzun.zzuv();
    }
}
