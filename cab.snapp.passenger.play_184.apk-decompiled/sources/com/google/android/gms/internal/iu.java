package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.util.d;
import com.google.firebase.iid.FirebaseInstanceId;
import java.math.BigInteger;
import java.util.Locale;

public final class iu extends kw {

    /* renamed from: a  reason: collision with root package name */
    private String f3221a;

    /* renamed from: b  reason: collision with root package name */
    private String f3222b;
    private int c;
    private String d;
    private String f;
    private long g;
    private long h;
    private int i;
    private String j;

    iu(jx jxVar) {
        super(jxVar);
    }

    private final String h() {
        zzve();
        try {
            return FirebaseInstanceId.getInstance().getId();
        } catch (IllegalStateException unused) {
            zzawy().zzazf().log("Failed to retrieve Firebase Instance Id");
            return null;
        }
    }

    /* access modifiers changed from: protected */
    public final boolean a() {
        return true;
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:29:0x00aa  */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x00b5  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00e0  */
    /* JADX WARNING: Removed duplicated region for block: B:56:0x0145 A[Catch:{ IllegalStateException -> 0x015c }] */
    /* JADX WARNING: Removed duplicated region for block: B:59:0x014a A[Catch:{ IllegalStateException -> 0x015c }] */
    /* JADX WARNING: Removed duplicated region for block: B:64:0x0174  */
    /* JADX WARNING: Removed duplicated region for block: B:66:0x017f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a_() {
        /*
            r12 = this;
            android.content.Context r0 = r12.getContext()
            java.lang.String r0 = r0.getPackageName()
            android.content.Context r1 = r12.getContext()
            android.content.pm.PackageManager r1 = r1.getPackageManager()
            java.lang.String r2 = "Unknown"
            java.lang.String r3 = ""
            r4 = 0
            java.lang.String r5 = "unknown"
            r6 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r1 != 0) goto L_0x002f
            com.google.android.gms.internal.iz r1 = r12.zzawy()
            com.google.android.gms.internal.jb r1 = r1.zzazd()
            java.lang.Object r7 = com.google.android.gms.internal.iz.a((java.lang.String) r0)
            java.lang.String r8 = "PackageManager is null, app identity information might be inaccurate. appId"
            r1.zzj(r8, r7)
        L_0x002c:
            r1 = r2
            goto L_0x0091
        L_0x002f:
            java.lang.String r5 = r1.getInstallerPackageName(r0)     // Catch:{ IllegalArgumentException -> 0x0034 }
            goto L_0x0045
        L_0x0034:
            com.google.android.gms.internal.iz r7 = r12.zzawy()
            com.google.android.gms.internal.jb r7 = r7.zzazd()
            java.lang.Object r8 = com.google.android.gms.internal.iz.a((java.lang.String) r0)
            java.lang.String r9 = "Error retrieving app installer package name. appId"
            r7.zzj(r9, r8)
        L_0x0045:
            if (r5 != 0) goto L_0x004a
            java.lang.String r5 = "manual_install"
            goto L_0x0053
        L_0x004a:
            java.lang.String r7 = "com.android.vending"
            boolean r7 = r7.equals(r5)
            if (r7 == 0) goto L_0x0053
            r5 = r3
        L_0x0053:
            android.content.Context r7 = r12.getContext()     // Catch:{ NameNotFoundException -> 0x007c }
            java.lang.String r7 = r7.getPackageName()     // Catch:{ NameNotFoundException -> 0x007c }
            android.content.pm.PackageInfo r7 = r1.getPackageInfo(r7, r4)     // Catch:{ NameNotFoundException -> 0x007c }
            if (r7 == 0) goto L_0x002c
            android.content.pm.ApplicationInfo r8 = r7.applicationInfo     // Catch:{ NameNotFoundException -> 0x007c }
            java.lang.CharSequence r1 = r1.getApplicationLabel(r8)     // Catch:{ NameNotFoundException -> 0x007c }
            boolean r8 = android.text.TextUtils.isEmpty(r1)     // Catch:{ NameNotFoundException -> 0x007c }
            if (r8 != 0) goto L_0x0072
            java.lang.String r1 = r1.toString()     // Catch:{ NameNotFoundException -> 0x007c }
            goto L_0x0073
        L_0x0072:
            r1 = r2
        L_0x0073:
            java.lang.String r2 = r7.versionName     // Catch:{ NameNotFoundException -> 0x0078 }
            int r6 = r7.versionCode     // Catch:{ NameNotFoundException -> 0x0078 }
            goto L_0x0091
        L_0x0078:
            r11 = r2
            r2 = r1
            r1 = r11
            goto L_0x007d
        L_0x007c:
            r1 = r2
        L_0x007d:
            com.google.android.gms.internal.iz r7 = r12.zzawy()
            com.google.android.gms.internal.jb r7 = r7.zzazd()
            java.lang.Object r8 = com.google.android.gms.internal.iz.a((java.lang.String) r0)
            java.lang.String r9 = "Error retrieving package info. appId, appName"
            r7.zze(r9, r8, r2)
            r11 = r2
            r2 = r1
            r1 = r11
        L_0x0091:
            r12.f3221a = r0
            r12.d = r5
            r12.f3222b = r2
            r12.c = r6
            r12.f = r1
            r1 = 0
            r12.g = r1
            android.content.Context r5 = r12.getContext()
            com.google.android.gms.common.api.Status r5 = com.google.android.gms.common.api.internal.ay.zzck(r5)
            r6 = 1
            if (r5 == 0) goto L_0x00b2
            boolean r7 = r5.isSuccess()
            if (r7 == 0) goto L_0x00b2
            r7 = 1
            goto L_0x00b3
        L_0x00b2:
            r7 = 0
        L_0x00b3:
            if (r7 != 0) goto L_0x00de
            if (r5 != 0) goto L_0x00c5
            com.google.android.gms.internal.iz r5 = r12.zzawy()
            com.google.android.gms.internal.jb r5 = r5.zzazd()
            java.lang.String r8 = "GoogleService failed to initialize (no status)"
            r5.log(r8)
            goto L_0x00de
        L_0x00c5:
            com.google.android.gms.internal.iz r8 = r12.zzawy()
            com.google.android.gms.internal.jb r8 = r8.zzazd()
            int r9 = r5.getStatusCode()
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)
            java.lang.String r5 = r5.getStatusMessage()
            java.lang.String r10 = "GoogleService failed to initialize, status"
            r8.zze(r10, r9, r5)
        L_0x00de:
            if (r7 == 0) goto L_0x0136
            com.google.android.gms.internal.ic r5 = r12.zzaxa()
            java.lang.String r7 = "firebase_analytics_collection_enabled"
            java.lang.Boolean r5 = r5.a(r7)
            com.google.android.gms.internal.ic r7 = r12.zzaxa()
            boolean r7 = r7.zzaya()
            if (r7 == 0) goto L_0x0102
            com.google.android.gms.internal.iz r5 = r12.zzawy()
            com.google.android.gms.internal.jb r5 = r5.zzazh()
            java.lang.String r6 = "Collection disabled with firebase_analytics_collection_deactivated=1"
        L_0x00fe:
            r5.log(r6)
            goto L_0x0136
        L_0x0102:
            if (r5 == 0) goto L_0x0115
            boolean r7 = r5.booleanValue()
            if (r7 != 0) goto L_0x0115
            com.google.android.gms.internal.iz r5 = r12.zzawy()
            com.google.android.gms.internal.jb r5 = r5.zzazh()
            java.lang.String r6 = "Collection disabled with firebase_analytics_collection_enabled=0"
            goto L_0x00fe
        L_0x0115:
            if (r5 != 0) goto L_0x0128
            boolean r5 = com.google.android.gms.common.api.internal.ay.zzaji()
            if (r5 == 0) goto L_0x0128
            com.google.android.gms.internal.iz r5 = r12.zzawy()
            com.google.android.gms.internal.jb r5 = r5.zzazh()
            java.lang.String r6 = "Collection disabled with google_app_measurement_enable=0"
            goto L_0x00fe
        L_0x0128:
            com.google.android.gms.internal.iz r5 = r12.zzawy()
            com.google.android.gms.internal.jb r5 = r5.zzazj()
            java.lang.String r7 = "Collection enabled"
            r5.log(r7)
            goto L_0x0137
        L_0x0136:
            r6 = 0
        L_0x0137:
            r12.j = r3
            r12.h = r1
            java.lang.String r1 = com.google.android.gms.common.api.internal.ay.zzajh()     // Catch:{ IllegalStateException -> 0x015c }
            boolean r2 = android.text.TextUtils.isEmpty(r1)     // Catch:{ IllegalStateException -> 0x015c }
            if (r2 == 0) goto L_0x0146
            r1 = r3
        L_0x0146:
            r12.j = r1     // Catch:{ IllegalStateException -> 0x015c }
            if (r6 == 0) goto L_0x016e
            com.google.android.gms.internal.iz r1 = r12.zzawy()     // Catch:{ IllegalStateException -> 0x015c }
            com.google.android.gms.internal.jb r1 = r1.zzazj()     // Catch:{ IllegalStateException -> 0x015c }
            java.lang.String r2 = "App package, google app id"
            java.lang.String r3 = r12.f3221a     // Catch:{ IllegalStateException -> 0x015c }
            java.lang.String r5 = r12.j     // Catch:{ IllegalStateException -> 0x015c }
            r1.zze(r2, r3, r5)     // Catch:{ IllegalStateException -> 0x015c }
            goto L_0x016e
        L_0x015c:
            r1 = move-exception
            com.google.android.gms.internal.iz r2 = r12.zzawy()
            com.google.android.gms.internal.jb r2 = r2.zzazd()
            java.lang.Object r0 = com.google.android.gms.internal.iz.a((java.lang.String) r0)
            java.lang.String r3 = "getGoogleAppId or isMeasurementEnabled failed with exception. appId"
            r2.zze(r3, r0, r1)
        L_0x016e:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 16
            if (r0 < r1) goto L_0x017f
            android.content.Context r0 = r12.getContext()
            boolean r0 = com.google.android.gms.internal.fp.zzcz(r0)
            r12.i = r0
            return
        L_0x017f:
            r12.i = r4
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.iu.a_():void");
    }

    /* access modifiers changed from: package-private */
    public final String c() {
        byte[] bArr = new byte[16];
        zzawu().c().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new Object[]{new BigInteger(1, bArr)});
    }

    /* access modifiers changed from: package-private */
    public final String d() {
        k();
        return this.f3221a;
    }

    /* access modifiers changed from: package-private */
    public final String e() {
        k();
        return this.j;
    }

    /* access modifiers changed from: package-private */
    public final int f() {
        k();
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public final int g() {
        k();
        return this.i;
    }

    public final /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
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

    /* access modifiers changed from: package-private */
    public final zzcgi a(String str) {
        zzve();
        String d2 = d();
        String e = e();
        k();
        String str2 = this.f3222b;
        long f2 = (long) f();
        k();
        String str3 = this.d;
        k();
        zzve();
        if (this.g == 0) {
            this.g = this.e.zzawu().a(getContext(), getContext().getPackageName());
        }
        long j2 = this.g;
        boolean isEnabled = this.e.isEnabled();
        boolean z = !zzawz().zzjdj;
        String h2 = h();
        k();
        jx jxVar = this.e;
        Long valueOf = Long.valueOf(jxVar.zzawz().zzjcw.get());
        long min = valueOf.longValue() == 0 ? jxVar.d : Math.min(jxVar.d, valueOf.longValue());
        int g2 = g();
        Boolean a2 = zzaxa().a("google_analytics_adid_collection_enabled");
        zzcgi zzcgi = new zzcgi(d2, e, str2, f2, str3, 11910, j2, str, isEnabled, z, h2, 0, min, g2, a2 == null || a2.booleanValue());
        return zzcgi;
    }
}
