package com.google.android.gms.internal;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.api.internal.ay;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.util.d;
import com.google.android.gms.common.util.e;
import com.google.android.gms.measurement.AppMeasurement;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.koushikdutta.ion.bitmap.IonBitmapCache;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;

public class jx {
    private static volatile jx e;
    private final ia A;
    private final hu B;
    private boolean C = false;
    private boolean D;
    private Boolean E;
    private long F;
    private FileLock G;
    private FileChannel H;
    private List<Long> I;
    private int J;
    private long K;
    private long L;
    private boolean M;
    private boolean N;
    private boolean O;

    /* renamed from: a  reason: collision with root package name */
    final js f3268a;

    /* renamed from: b  reason: collision with root package name */
    List<Runnable> f3269b;
    int c;
    final long d;
    private final Context f;
    private final ic g;
    private final jj h;
    private final iz i;
    private final mq j;
    private final jr k;
    private final AppMeasurement l;
    private final FirebaseAnalytics m;
    private final na n;
    private final ix o;
    private final id p;
    private final iv q;
    private final jd r;
    private final d s;
    private final ln t;
    private final lr u;
    private final ij v;
    private final ky w;
    private final iu x;
    private final jh y;
    private final mw z;

    class a implements Cif {

        /* renamed from: a  reason: collision with root package name */
        no f3270a;

        /* renamed from: b  reason: collision with root package name */
        List<Long> f3271b;
        List<nl> c;
        private long d;

        private a() {
        }

        /* synthetic */ a(jx jxVar, byte b2) {
            this();
        }

        private static long a(nl nlVar) {
            return ((nlVar.zzjli.longValue() / 1000) / 60) / 60;
        }

        public final boolean zza(long j, nl nlVar) {
            ap.checkNotNull(nlVar);
            if (this.c == null) {
                this.c = new ArrayList();
            }
            if (this.f3271b == null) {
                this.f3271b = new ArrayList();
            }
            if (this.c.size() > 0 && a(this.c.get(0)) != a(nlVar)) {
                return false;
            }
            long zzho = this.d + ((long) nlVar.zzho());
            if (zzho >= ((long) Math.max(0, ip.zzjal.get().intValue()))) {
                return false;
            }
            this.d = zzho;
            this.c.add(nlVar);
            this.f3271b.add(Long.valueOf(j));
            return this.c.size() < Math.max(1, ip.zzjam.get().intValue());
        }

        public final void zzb(no noVar) {
            ap.checkNotNull(noVar);
            this.f3270a = noVar;
        }
    }

    private jx(kx kxVar) {
        jb jbVar;
        String str;
        ap.checkNotNull(kxVar);
        this.f = kxVar.f3318a;
        this.K = -1;
        this.s = e.zzamg();
        this.d = this.s.currentTimeMillis();
        this.g = new ic(this);
        jj jjVar = new jj(this);
        jjVar.initialize();
        this.h = jjVar;
        iz izVar = new iz(this);
        izVar.initialize();
        this.i = izVar;
        na naVar = new na(this);
        naVar.initialize();
        this.n = naVar;
        ix ixVar = new ix(this);
        ixVar.initialize();
        this.o = ixVar;
        ij ijVar = new ij(this);
        ijVar.initialize();
        this.v = ijVar;
        iu iuVar = new iu(this);
        iuVar.initialize();
        this.x = iuVar;
        id idVar = new id(this);
        idVar.initialize();
        this.p = idVar;
        iv ivVar = new iv(this);
        ivVar.initialize();
        this.q = ivVar;
        ia iaVar = new ia(this);
        iaVar.initialize();
        this.A = iaVar;
        this.B = new hu(this);
        jd jdVar = new jd(this);
        jdVar.initialize();
        this.r = jdVar;
        ln lnVar = new ln(this);
        lnVar.initialize();
        this.t = lnVar;
        lr lrVar = new lr(this);
        lrVar.initialize();
        this.u = lrVar;
        ky kyVar = new ky(this);
        kyVar.initialize();
        this.w = kyVar;
        mw mwVar = new mw(this);
        mwVar.initialize();
        this.z = mwVar;
        this.y = new jh(this);
        this.l = new AppMeasurement(this);
        this.m = new FirebaseAnalytics(this);
        mq mqVar = new mq(this);
        mqVar.initialize();
        this.j = mqVar;
        jr jrVar = new jr(this);
        jrVar.initialize();
        this.k = jrVar;
        js jsVar = new js(this);
        jsVar.initialize();
        this.f3268a = jsVar;
        if (this.f.getApplicationContext() instanceof Application) {
            ky zzawm = zzawm();
            if (zzawm.getContext().getApplicationContext() instanceof Application) {
                Application application = (Application) zzawm.getContext().getApplicationContext();
                if (zzawm.f3319a == null) {
                    zzawm.f3319a = new lm(zzawm, (byte) 0);
                }
                application.unregisterActivityLifecycleCallbacks(zzawm.f3319a);
                application.registerActivityLifecycleCallbacks(zzawm.f3319a);
                jbVar = zzawm.zzawy().zzazj();
                str = "Registered activity lifecycle callback";
            }
            this.f3268a.zzg(new jy(this));
        }
        jbVar = zzawy().zzazf();
        str = "Application context is not an Application";
        jbVar.log(str);
        this.f3268a.zzg(new jy(this));
    }

    private final int a(FileChannel fileChannel) {
        zzawx().zzve();
        int i2 = 0;
        if (fileChannel == null || !fileChannel.isOpen()) {
            zzawy().zzazd().log("Bad chanel to read from");
            return 0;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0);
            int read = fileChannel.read(allocate);
            if (read != 4) {
                if (read != -1) {
                    zzawy().zzazf().zzj("Unexpected data length. Bytes read", Integer.valueOf(read));
                }
                return 0;
            }
            allocate.flip();
            i2 = allocate.getInt();
            return i2;
        } catch (IOException e2) {
            zzawy().zzazd().zzj("Failed to read from channel", e2);
        }
    }

    private final zzcgi a(Context context, String str, String str2, boolean z2, boolean z3) {
        String str3;
        String str4;
        int i2;
        String str5 = str;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            zzawy().zzazd().log("PackageManager is null, can not log app install information");
            return null;
        }
        try {
            str3 = packageManager.getInstallerPackageName(str5);
        } catch (IllegalArgumentException unused) {
            zzawy().zzazd().zzj("Error retrieving installer package name. appId", iz.a(str));
            str3 = "Unknown";
        }
        if (str3 == null) {
            str3 = "manual_install";
        } else if ("com.android.vending".equals(str3)) {
            str3 = "";
        }
        String str6 = str3;
        try {
            PackageInfo packageInfo = fr.zzdb(context).getPackageInfo(str5, 0);
            if (packageInfo != null) {
                CharSequence zzgt = fr.zzdb(context).zzgt(str5);
                if (!TextUtils.isEmpty(zzgt)) {
                    String charSequence = zzgt.toString();
                }
                String str7 = packageInfo.versionName;
                i2 = packageInfo.versionCode;
                str4 = str7;
            } else {
                i2 = Integer.MIN_VALUE;
                str4 = "Unknown";
            }
            zzcgi zzcgi = new zzcgi(str, str2, str4, (long) i2, str6, 11910, zzawu().a(context, str5), (String) null, z2, false, "", 0, 0, 0, z3);
            return zzcgi;
        } catch (PackageManager.NameNotFoundException unused2) {
            zzawy().zzazd().zze("Error retrieving newly installed package info. appId, appName", iz.a(str), "Unknown");
            return null;
        }
    }

    private final zzcgi a(String str) {
        String str2 = str;
        hy zzjb = zzaws().zzjb(str2);
        if (zzjb == null || TextUtils.isEmpty(zzjb.zzvj())) {
            zzawy().zzazi().zzj("No app data available; dropping", str2);
            return null;
        }
        try {
            String str3 = fr.zzdb(this.f).getPackageInfo(str2, 0).versionName;
            if (zzjb.zzvj() != null && !zzjb.zzvj().equals(str3)) {
                zzawy().zzazf().zzj("App version does not match; dropping. appId", iz.a(str));
                return null;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        zzcgi zzcgi = new zzcgi(str, zzjb.getGmpAppId(), zzjb.zzvj(), zzjb.zzaxg(), zzjb.zzaxh(), zzjb.zzaxi(), zzjb.zzaxj(), (String) null, zzjb.zzaxk(), false, zzjb.zzaxd(), zzjb.zzaxx(), 0, 0, zzjb.zzaxy());
        return zzcgi;
    }

    private final void a(hy hyVar) {
        ArrayMap arrayMap;
        zzawx().zzve();
        if (TextUtils.isEmpty(hyVar.getGmpAppId())) {
            a(hyVar.getAppId(), 204, (Throwable) null, (byte[]) null, (Map<String, List<String>>) null);
            return;
        }
        String gmpAppId = hyVar.getGmpAppId();
        String appInstanceId = hyVar.getAppInstanceId();
        Uri.Builder builder = new Uri.Builder();
        Uri.Builder encodedAuthority = builder.scheme(ip.zzjah.get()).encodedAuthority(ip.zzjai.get());
        String valueOf = String.valueOf(gmpAppId);
        encodedAuthority.path(valueOf.length() != 0 ? "config/app/".concat(valueOf) : new String("config/app/")).appendQueryParameter("app_instance_id", appInstanceId).appendQueryParameter("platform", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE).appendQueryParameter("gmp_version", "11910");
        String uri = builder.build().toString();
        try {
            URL url = new URL(uri);
            zzawy().zzazj().zzj("Fetching remote configuration", hyVar.getAppId());
            ni a2 = zzawv().a(hyVar.getAppId());
            String b2 = zzawv().b(hyVar.getAppId());
            if (a2 == null || TextUtils.isEmpty(b2)) {
                arrayMap = null;
            } else {
                ArrayMap arrayMap2 = new ArrayMap();
                arrayMap2.put("If-Modified-Since", b2);
                arrayMap = arrayMap2;
            }
            this.M = true;
            jd zzbab = zzbab();
            String appId = hyVar.getAppId();
            kb kbVar = new kb(this);
            zzbab.zzve();
            zzbab.k();
            ap.checkNotNull(url);
            ap.checkNotNull(kbVar);
            js zzawx = zzbab.zzawx();
            jg jgVar = new jg(zzbab, appId, url, null, arrayMap, kbVar);
            zzawx.zzh(jgVar);
        } catch (MalformedURLException unused) {
            zzawy().zzazd().zze("Failed to parse config URL. Not fetching. appId", iz.a(hyVar.getAppId()), uri);
        }
    }

    private static void a(kv kvVar) {
        if (kvVar == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static void a(kw kwVar) {
        if (kwVar == null) {
            throw new IllegalStateException("Component not created");
        } else if (!kwVar.j()) {
            throw new IllegalStateException("Component not initialized");
        }
    }

    private final boolean a(int i2, FileChannel fileChannel) {
        zzawx().zzve();
        if (fileChannel == null || !fileChannel.isOpen()) {
            zzawy().zzazd().log("Bad chanel to read from");
            return false;
        }
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.putInt(i2);
        allocate.flip();
        try {
            fileChannel.truncate(0);
            fileChannel.write(allocate);
            fileChannel.force(true);
            if (fileChannel.size() != 4) {
                zzawy().zzazd().zzj("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            }
            return true;
        } catch (IOException e2) {
            zzawy().zzazd().zzj("Failed to write to channel", e2);
            return false;
        }
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v0, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v0, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v1, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v62, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v64, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v30, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v31, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v34, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v36, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v37, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v38, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v39, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v45, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v47, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v62, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v69, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v74, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r6v64, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v77, resolved type: android.database.Cursor} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v80, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v81, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v82, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v84, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v87, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v89, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v90, resolved type: java.lang.String} */
    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r10v91, resolved type: java.lang.String} */
    /* JADX WARNING: Code restructure failed: missing block: B:111:0x0218, code lost:
        if (r5 != null) goto L_0x01cb;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:120:0x0237, code lost:
        if (r6 == null) goto L_0x0273;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:122:?, code lost:
        r6.close();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0042, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:133:0x0252, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:134:0x0253, code lost:
        r5 = r0;
        r6 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0043, code lost:
        r1 = r0;
        r6 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:142:0x0270, code lost:
        if (r6 == null) goto L_0x0273;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:14:0x0047, code lost:
        r0 = move-exception;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:0x0048, code lost:
        r5 = r0;
        r6 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:173:0x0359, code lost:
        if (com.google.android.gms.internal.na.f(r2.c.get(r5).name) != false) goto L_0x035b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x0080, code lost:
        if (r10 != null) goto L_0x0082;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0087, code lost:
        r10 = r10;
        r10 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:?, code lost:
        r12 = r10.getString(0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x008b, code lost:
        r10 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:?, code lost:
        r13 = r10.getString(1);
        r10.close();
        r10 = r10;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x0092, code lost:
        r22 = r10;
        r10 = r12;
        r21 = r13;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:95:0x01c9, code lost:
        if (r5 != null) goto L_0x01cb;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Removed duplicated region for block: B:12:0x0042 A[ExcHandler: all (r0v19 'th' java.lang.Throwable A[CUSTOM_DECLARE]), PHI: r10 
  PHI: (r10v74 java.lang.String) = (r10v0 java.lang.String), (r10v0 java.lang.String), (r10v84 java.lang.String), (r10v87 java.lang.String), (r10v89 java.lang.String), (r10v90 java.lang.String), (r10v91 java.lang.String) binds: [B:10:0x0033, B:11:?, B:45:0x00d9, B:23:0x007a, B:29:0x0087, B:31:0x008b, B:32:?] A[DONT_GENERATE, DONT_INLINE], Splitter:B:10:0x0033] */
    /* JADX WARNING: Removed duplicated region for block: B:146:0x0277 A[Catch:{ SQLiteException -> 0x098d, all -> 0x09c8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:152:0x0285 A[Catch:{ SQLiteException -> 0x098d, all -> 0x09c8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:279:0x0730 A[Catch:{ SQLiteException -> 0x098d, all -> 0x09c8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:280:0x0732 A[Catch:{ SQLiteException -> 0x098d, all -> 0x09c8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:283:0x073a A[Catch:{ SQLiteException -> 0x098d, all -> 0x09c8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:294:0x0762 A[Catch:{ SQLiteException -> 0x098d, all -> 0x09c8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:321:0x0872 A[Catch:{ SQLiteException -> 0x098d, all -> 0x09c8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:330:0x08b1 A[Catch:{ SQLiteException -> 0x098d, all -> 0x09c8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:331:0x08c7 A[Catch:{ SQLiteException -> 0x098d, all -> 0x09c8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:348:0x0926 A[Catch:{ SQLiteException -> 0x098d, all -> 0x09c8 }] */
    /* JADX WARNING: Removed duplicated region for block: B:371:0x09b0 A[SYNTHETIC, Splitter:B:371:0x09b0] */
    /* JADX WARNING: Removed duplicated region for block: B:378:0x09c4 A[SYNTHETIC, Splitter:B:378:0x09c4] */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:27:0x0082=Splitter:B:27:0x0082, B:143:0x0273=Splitter:B:143:0x0273, B:121:0x0239=Splitter:B:121:0x0239, B:96:0x01cb=Splitter:B:96:0x01cb} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final boolean a(long r39) {
        /*
            r38 = this;
            r1 = r38
            com.google.android.gms.internal.id r2 = r38.zzaws()
            r2.beginTransaction()
            com.google.android.gms.internal.jx$a r2 = new com.google.android.gms.internal.jx$a     // Catch:{ all -> 0x09c8 }
            r3 = 0
            r2.<init>(r1, r3)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.id r4 = r38.zzaws()     // Catch:{ all -> 0x09c8 }
            long r5 = r1.K     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.common.internal.ap.checkNotNull(r2)     // Catch:{ all -> 0x09c8 }
            r4.zzve()     // Catch:{ all -> 0x09c8 }
            r4.k()     // Catch:{ all -> 0x09c8 }
            r7 = -1
            r9 = 2
            r10 = 0
            r11 = 1
            android.database.sqlite.SQLiteDatabase r15 = r4.b()     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            boolean r12 = android.text.TextUtils.isEmpty(r10)     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            java.lang.String r13 = ""
            if (r12 == 0) goto L_0x009e
            int r12 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r12 == 0) goto L_0x004c
            java.lang.String[] r12 = new java.lang.String[r9]     // Catch:{ SQLiteException -> 0x0047, all -> 0x0042 }
            java.lang.String r14 = java.lang.String.valueOf(r5)     // Catch:{ SQLiteException -> 0x0047, all -> 0x0042 }
            r12[r3] = r14     // Catch:{ SQLiteException -> 0x0047, all -> 0x0042 }
            java.lang.String r14 = java.lang.String.valueOf(r39)     // Catch:{ SQLiteException -> 0x0047, all -> 0x0042 }
            r12[r11] = r14     // Catch:{ SQLiteException -> 0x0047, all -> 0x0042 }
            goto L_0x0054
        L_0x0042:
            r0 = move-exception
            r1 = r0
            r6 = r10
            goto L_0x09c2
        L_0x0047:
            r0 = move-exception
            r5 = r0
            r6 = r10
            goto L_0x025f
        L_0x004c:
            java.lang.String[] r12 = new java.lang.String[r11]     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            java.lang.String r14 = java.lang.String.valueOf(r39)     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            r12[r3] = r14     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
        L_0x0054:
            int r14 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r14 == 0) goto L_0x005a
            java.lang.String r13 = "rowid <= ? and "
        L_0x005a:
            int r14 = r13.length()     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            int r14 = r14 + 148
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            r10.<init>(r14)     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            java.lang.String r14 = "select app_id, metadata_fingerprint from raw_events where "
            r10.append(r14)     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            r10.append(r13)     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            java.lang.String r13 = "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;"
            r10.append(r13)     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            java.lang.String r10 = r10.toString()     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            android.database.Cursor r10 = r15.rawQuery(r10, r12)     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            boolean r12 = r10.moveToFirst()     // Catch:{ SQLiteException -> 0x0252, all -> 0x0042 }
            if (r12 != 0) goto L_0x0087
            if (r10 == 0) goto L_0x0273
        L_0x0082:
            r10.close()     // Catch:{ all -> 0x09c8 }
            goto L_0x0273
        L_0x0087:
            java.lang.String r12 = r10.getString(r3)     // Catch:{ SQLiteException -> 0x0252, all -> 0x0042 }
            java.lang.String r13 = r10.getString(r11)     // Catch:{ SQLiteException -> 0x0098, all -> 0x0042 }
            r10.close()     // Catch:{ SQLiteException -> 0x0098, all -> 0x0042 }
            r22 = r10
            r10 = r12
            r21 = r13
            goto L_0x00ee
        L_0x0098:
            r0 = move-exception
            r5 = r0
            r6 = r10
            r10 = r12
            goto L_0x025f
        L_0x009e:
            int r10 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r10 == 0) goto L_0x00ae
            java.lang.String[] r10 = new java.lang.String[r9]     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            r12 = 0
            r10[r3] = r12     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            java.lang.String r12 = java.lang.String.valueOf(r5)     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            r10[r11] = r12     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            goto L_0x00b3
        L_0x00ae:
            java.lang.String[] r10 = new java.lang.String[r11]     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            r12 = 0
            r10[r3] = r12     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
        L_0x00b3:
            int r12 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r12 == 0) goto L_0x00b9
            java.lang.String r13 = " and rowid <= ?"
        L_0x00b9:
            int r12 = r13.length()     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            int r12 = r12 + 84
            java.lang.StringBuilder r14 = new java.lang.StringBuilder     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            r14.<init>(r12)     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            java.lang.String r12 = "select metadata_fingerprint from raw_events where app_id = ?"
            r14.append(r12)     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            r14.append(r13)     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            java.lang.String r12 = " order by rowid limit 1;"
            r14.append(r12)     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            java.lang.String r12 = r14.toString()     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            android.database.Cursor r10 = r15.rawQuery(r12, r10)     // Catch:{ SQLiteException -> 0x025b, all -> 0x0256 }
            boolean r12 = r10.moveToFirst()     // Catch:{ SQLiteException -> 0x0252, all -> 0x0042 }
            if (r12 != 0) goto L_0x00e2
            if (r10 == 0) goto L_0x0273
            goto L_0x0082
        L_0x00e2:
            java.lang.String r13 = r10.getString(r3)     // Catch:{ SQLiteException -> 0x0252, all -> 0x0042 }
            r10.close()     // Catch:{ SQLiteException -> 0x0252, all -> 0x0042 }
            r22 = r10
            r21 = r13
            r10 = 0
        L_0x00ee:
            java.lang.String r13 = "raw_events_metadata"
            java.lang.String[] r14 = new java.lang.String[r11]     // Catch:{ SQLiteException -> 0x024d, all -> 0x0247 }
            java.lang.String r12 = "metadata"
            r14[r3] = r12     // Catch:{ SQLiteException -> 0x024d, all -> 0x0247 }
            java.lang.String r16 = "app_id = ? and metadata_fingerprint = ?"
            java.lang.String[] r12 = new java.lang.String[r9]     // Catch:{ SQLiteException -> 0x024d, all -> 0x0247 }
            r12[r3] = r10     // Catch:{ SQLiteException -> 0x024d, all -> 0x0247 }
            r12[r11] = r21     // Catch:{ SQLiteException -> 0x024d, all -> 0x0247 }
            r17 = 0
            r18 = 0
            java.lang.String r19 = "rowid"
            java.lang.String r20 = "2"
            r23 = r12
            r12 = r15
            r24 = r15
            r15 = r16
            r16 = r23
            android.database.Cursor r15 = r12.query(r13, r14, r15, r16, r17, r18, r19, r20)     // Catch:{ SQLiteException -> 0x024d, all -> 0x0247 }
            boolean r12 = r15.moveToFirst()     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            if (r12 != 0) goto L_0x013b
            com.google.android.gms.internal.iz r5 = r4.zzawy()     // Catch:{ SQLiteException -> 0x0136, all -> 0x0131 }
            com.google.android.gms.internal.jb r5 = r5.zzazd()     // Catch:{ SQLiteException -> 0x0136, all -> 0x0131 }
            java.lang.String r6 = "Raw event metadata record is missing. appId"
            java.lang.Object r12 = com.google.android.gms.internal.iz.a((java.lang.String) r10)     // Catch:{ SQLiteException -> 0x0136, all -> 0x0131 }
            r5.zzj(r6, r12)     // Catch:{ SQLiteException -> 0x0136, all -> 0x0131 }
            if (r15 == 0) goto L_0x0273
            r15.close()     // Catch:{ all -> 0x09c8 }
            goto L_0x0273
        L_0x0131:
            r0 = move-exception
            r1 = r0
            r6 = r15
            goto L_0x09c2
        L_0x0136:
            r0 = move-exception
            r5 = r0
            r6 = r15
            goto L_0x025f
        L_0x013b:
            byte[] r12 = r15.getBlob(r3)     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            int r13 = r12.length     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            com.google.android.gms.internal.so r12 = com.google.android.gms.internal.so.zzn(r12, r3, r13)     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            com.google.android.gms.internal.no r13 = new com.google.android.gms.internal.no     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            r13.<init>()     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            r13.zza((com.google.android.gms.internal.so) r12)     // Catch:{ IOException -> 0x0223 }
            boolean r12 = r15.moveToNext()     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            if (r12 == 0) goto L_0x0163
            com.google.android.gms.internal.iz r12 = r4.zzawy()     // Catch:{ SQLiteException -> 0x0136, all -> 0x0131 }
            com.google.android.gms.internal.jb r12 = r12.zzazf()     // Catch:{ SQLiteException -> 0x0136, all -> 0x0131 }
            java.lang.String r14 = "Get multiple raw event metadata records, expected one. appId"
            java.lang.Object r9 = com.google.android.gms.internal.iz.a((java.lang.String) r10)     // Catch:{ SQLiteException -> 0x0136, all -> 0x0131 }
            r12.zzj(r14, r9)     // Catch:{ SQLiteException -> 0x0136, all -> 0x0131 }
        L_0x0163:
            r15.close()     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            r2.zzb(r13)     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            r9 = 3
            int r12 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r12 == 0) goto L_0x0181
            java.lang.String r12 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?"
            java.lang.String[] r13 = new java.lang.String[r9]     // Catch:{ SQLiteException -> 0x0136, all -> 0x0131 }
            r13[r3] = r10     // Catch:{ SQLiteException -> 0x0136, all -> 0x0131 }
            r13[r11] = r21     // Catch:{ SQLiteException -> 0x0136, all -> 0x0131 }
            java.lang.String r5 = java.lang.String.valueOf(r5)     // Catch:{ SQLiteException -> 0x0136, all -> 0x0131 }
            r6 = 2
            r13[r6] = r5     // Catch:{ SQLiteException -> 0x0136, all -> 0x0131 }
            r5 = r12
            r16 = r13
            goto L_0x018c
        L_0x0181:
            java.lang.String r5 = "app_id = ? and metadata_fingerprint = ?"
            r6 = 2
            java.lang.String[] r12 = new java.lang.String[r6]     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            r12[r3] = r10     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            r12[r11] = r21     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            r16 = r12
        L_0x018c:
            java.lang.String r13 = "raw_events"
            r6 = 4
            java.lang.String[] r14 = new java.lang.String[r6]     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            java.lang.String r6 = "rowid"
            r14[r3] = r6     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            java.lang.String r6 = "name"
            r14[r11] = r6     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            java.lang.String r6 = "timestamp"
            r12 = 2
            r14[r12] = r6     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            java.lang.String r6 = "data"
            r14[r9] = r6     // Catch:{ SQLiteException -> 0x0243, all -> 0x023f }
            r17 = 0
            r18 = 0
            java.lang.String r19 = "rowid"
            r20 = 0
            r12 = r24
            r6 = r15
            r15 = r5
            android.database.Cursor r5 = r12.query(r13, r14, r15, r16, r17, r18, r19, r20)     // Catch:{ SQLiteException -> 0x023d }
            boolean r6 = r5.moveToFirst()     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            if (r6 != 0) goto L_0x01d0
            com.google.android.gms.internal.iz r6 = r4.zzawy()     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            com.google.android.gms.internal.jb r6 = r6.zzazf()     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            java.lang.String r9 = "Raw event data disappeared while in transaction. appId"
            java.lang.Object r12 = com.google.android.gms.internal.iz.a((java.lang.String) r10)     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            r6.zzj(r9, r12)     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            if (r5 == 0) goto L_0x0273
        L_0x01cb:
            r5.close()     // Catch:{ all -> 0x09c8 }
            goto L_0x0273
        L_0x01d0:
            long r12 = r5.getLong(r3)     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            byte[] r6 = r5.getBlob(r9)     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            int r14 = r6.length     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            com.google.android.gms.internal.so r6 = com.google.android.gms.internal.so.zzn(r6, r3, r14)     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            com.google.android.gms.internal.nl r14 = new com.google.android.gms.internal.nl     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            r14.<init>()     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            r14.zza((com.google.android.gms.internal.so) r6)     // Catch:{ IOException -> 0x01ff }
            java.lang.String r6 = r5.getString(r11)     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            r14.name = r6     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            r6 = 2
            long r15 = r5.getLong(r6)     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            java.lang.Long r6 = java.lang.Long.valueOf(r15)     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            r14.zzjli = r6     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            boolean r6 = r2.zza(r12, r14)     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            if (r6 != 0) goto L_0x0212
            if (r5 == 0) goto L_0x0273
            goto L_0x01cb
        L_0x01ff:
            r0 = move-exception
            r6 = r0
            com.google.android.gms.internal.iz r12 = r4.zzawy()     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            com.google.android.gms.internal.jb r12 = r12.zzazd()     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            java.lang.String r13 = "Data loss. Failed to merge raw event. appId"
            java.lang.Object r14 = com.google.android.gms.internal.iz.a((java.lang.String) r10)     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            r12.zze(r13, r14, r6)     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
        L_0x0212:
            boolean r6 = r5.moveToNext()     // Catch:{ SQLiteException -> 0x0220, all -> 0x021b }
            if (r6 != 0) goto L_0x01d0
            if (r5 == 0) goto L_0x0273
            goto L_0x01cb
        L_0x021b:
            r0 = move-exception
            r1 = r0
            r6 = r5
            goto L_0x09c2
        L_0x0220:
            r0 = move-exception
            r6 = r5
            goto L_0x0245
        L_0x0223:
            r0 = move-exception
            r6 = r15
            r5 = r0
            com.google.android.gms.internal.iz r9 = r4.zzawy()     // Catch:{ SQLiteException -> 0x023d }
            com.google.android.gms.internal.jb r9 = r9.zzazd()     // Catch:{ SQLiteException -> 0x023d }
            java.lang.String r12 = "Data loss. Failed to merge raw event metadata. appId"
            java.lang.Object r13 = com.google.android.gms.internal.iz.a((java.lang.String) r10)     // Catch:{ SQLiteException -> 0x023d }
            r9.zze(r12, r13, r5)     // Catch:{ SQLiteException -> 0x023d }
            if (r6 == 0) goto L_0x0273
        L_0x0239:
            r6.close()     // Catch:{ all -> 0x09c8 }
            goto L_0x0273
        L_0x023d:
            r0 = move-exception
            goto L_0x0245
        L_0x023f:
            r0 = move-exception
            r6 = r15
            goto L_0x09c1
        L_0x0243:
            r0 = move-exception
            r6 = r15
        L_0x0245:
            r5 = r0
            goto L_0x025f
        L_0x0247:
            r0 = move-exception
            r1 = r0
            r6 = r22
            goto L_0x09c2
        L_0x024d:
            r0 = move-exception
            r5 = r0
            r6 = r22
            goto L_0x025f
        L_0x0252:
            r0 = move-exception
            r5 = r0
            r6 = r10
            goto L_0x025e
        L_0x0256:
            r0 = move-exception
            r1 = r0
            r6 = 0
            goto L_0x09c2
        L_0x025b:
            r0 = move-exception
            r5 = r0
            r6 = 0
        L_0x025e:
            r10 = 0
        L_0x025f:
            com.google.android.gms.internal.iz r4 = r4.zzawy()     // Catch:{ all -> 0x09c0 }
            com.google.android.gms.internal.jb r4 = r4.zzazd()     // Catch:{ all -> 0x09c0 }
            java.lang.String r9 = "Data loss. Error selecting raw event. appId"
            java.lang.Object r10 = com.google.android.gms.internal.iz.a((java.lang.String) r10)     // Catch:{ all -> 0x09c0 }
            r4.zze(r9, r10, r5)     // Catch:{ all -> 0x09c0 }
            if (r6 == 0) goto L_0x0273
            goto L_0x0239
        L_0x0273:
            java.util.List<com.google.android.gms.internal.nl> r4 = r2.c     // Catch:{ all -> 0x09c8 }
            if (r4 == 0) goto L_0x0282
            java.util.List<com.google.android.gms.internal.nl> r4 = r2.c     // Catch:{ all -> 0x09c8 }
            boolean r4 = r4.isEmpty()     // Catch:{ all -> 0x09c8 }
            if (r4 == 0) goto L_0x0280
            goto L_0x0282
        L_0x0280:
            r4 = 0
            goto L_0x0283
        L_0x0282:
            r4 = 1
        L_0x0283:
            if (r4 != 0) goto L_0x09b0
            com.google.android.gms.internal.no r4 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r5 = r2.c     // Catch:{ all -> 0x09c8 }
            int r5 = r5.size()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl[] r5 = new com.google.android.gms.internal.nl[r5]     // Catch:{ all -> 0x09c8 }
            r4.zzjlp = r5     // Catch:{ all -> 0x09c8 }
            r5 = 0
            r6 = 0
            r9 = 0
        L_0x0294:
            java.util.List<com.google.android.gms.internal.nl> r10 = r2.c     // Catch:{ all -> 0x09c8 }
            int r10 = r10.size()     // Catch:{ all -> 0x09c8 }
            if (r5 >= r10) goto L_0x05aa
            com.google.android.gms.internal.jr r10 = r38.zzawv()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r14 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r14 = r14.zzcn     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r15 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r15 = r15.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r15 = (com.google.android.gms.internal.nl) r15     // Catch:{ all -> 0x09c8 }
            java.lang.String r15 = r15.name     // Catch:{ all -> 0x09c8 }
            boolean r10 = r10.b(r14, r15)     // Catch:{ all -> 0x09c8 }
            java.lang.String r14 = "_err"
            if (r10 == 0) goto L_0x0330
            com.google.android.gms.internal.iz r10 = r38.zzawy()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.jb r10 = r10.zzazf()     // Catch:{ all -> 0x09c8 }
            java.lang.String r12 = "Dropping blacklisted raw event. appId"
            com.google.android.gms.internal.no r13 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r13 = r13.zzcn     // Catch:{ all -> 0x09c8 }
            java.lang.Object r13 = com.google.android.gms.internal.iz.a((java.lang.String) r13)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.ix r15 = r38.zzawt()     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r7 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r7 = r7.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r7 = (com.google.android.gms.internal.nl) r7     // Catch:{ all -> 0x09c8 }
            java.lang.String r7 = r7.name     // Catch:{ all -> 0x09c8 }
            java.lang.String r7 = r15.a((java.lang.String) r7)     // Catch:{ all -> 0x09c8 }
            r10.zze(r12, r13, r7)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.na r7 = r38.zzawu()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r8 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r8 = r8.zzcn     // Catch:{ all -> 0x09c8 }
            boolean r7 = r7.d(r8)     // Catch:{ all -> 0x09c8 }
            if (r7 != 0) goto L_0x02fc
            com.google.android.gms.internal.na r7 = r38.zzawu()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r8 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r8 = r8.zzcn     // Catch:{ all -> 0x09c8 }
            boolean r7 = r7.e(r8)     // Catch:{ all -> 0x09c8 }
            if (r7 == 0) goto L_0x02fa
            goto L_0x02fc
        L_0x02fa:
            r7 = 0
            goto L_0x02fd
        L_0x02fc:
            r7 = 1
        L_0x02fd:
            if (r7 != 0) goto L_0x05a2
            java.util.List<com.google.android.gms.internal.nl> r7 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r7 = r7.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r7 = (com.google.android.gms.internal.nl) r7     // Catch:{ all -> 0x09c8 }
            java.lang.String r7 = r7.name     // Catch:{ all -> 0x09c8 }
            boolean r7 = r14.equals(r7)     // Catch:{ all -> 0x09c8 }
            if (r7 != 0) goto L_0x05a2
            com.google.android.gms.internal.na r24 = r38.zzawu()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r7 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r7 = r7.zzcn     // Catch:{ all -> 0x09c8 }
            r26 = 11
            java.lang.String r27 = "_ev"
            java.util.List<com.google.android.gms.internal.nl> r8 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r8 = r8.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r8 = (com.google.android.gms.internal.nl) r8     // Catch:{ all -> 0x09c8 }
            java.lang.String r8 = r8.name     // Catch:{ all -> 0x09c8 }
            r29 = 0
            r25 = r7
            r28 = r8
            r24.zza((java.lang.String) r25, (int) r26, (java.lang.String) r27, (java.lang.String) r28, (int) r29)     // Catch:{ all -> 0x09c8 }
            goto L_0x05a2
        L_0x0330:
            com.google.android.gms.internal.jr r7 = r38.zzawv()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r8 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r8 = r8.zzcn     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r10 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r10 = r10.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r10 = (com.google.android.gms.internal.nl) r10     // Catch:{ all -> 0x09c8 }
            java.lang.String r10 = r10.name     // Catch:{ all -> 0x09c8 }
            boolean r7 = r7.c(r8, r10)     // Catch:{ all -> 0x09c8 }
            if (r7 != 0) goto L_0x035b
            r38.zzawu()     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r8 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r8 = r8.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r8 = (com.google.android.gms.internal.nl) r8     // Catch:{ all -> 0x09c8 }
            java.lang.String r8 = r8.name     // Catch:{ all -> 0x09c8 }
            boolean r8 = com.google.android.gms.internal.na.f(r8)     // Catch:{ all -> 0x09c8 }
            if (r8 == 0) goto L_0x0593
        L_0x035b:
            java.util.List<com.google.android.gms.internal.nl> r8 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r8 = r8.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r8 = (com.google.android.gms.internal.nl) r8     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r8 = r8.zzjlh     // Catch:{ all -> 0x09c8 }
            if (r8 != 0) goto L_0x0373
            java.util.List<com.google.android.gms.internal.nl> r8 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r8 = r8.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r8 = (com.google.android.gms.internal.nl) r8     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r10 = new com.google.android.gms.internal.nm[r3]     // Catch:{ all -> 0x09c8 }
            r8.zzjlh = r10     // Catch:{ all -> 0x09c8 }
        L_0x0373:
            java.util.List<com.google.android.gms.internal.nl> r8 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r8 = r8.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r8 = (com.google.android.gms.internal.nl) r8     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r8 = r8.zzjlh     // Catch:{ all -> 0x09c8 }
            int r10 = r8.length     // Catch:{ all -> 0x09c8 }
            r15 = 0
            r18 = 0
            r19 = 0
        L_0x0383:
            java.lang.String r3 = "_r"
            java.lang.String r11 = "_c"
            if (r15 >= r10) goto L_0x03b4
            r12 = r8[r15]     // Catch:{ all -> 0x09c8 }
            java.lang.String r13 = r12.name     // Catch:{ all -> 0x09c8 }
            boolean r11 = r11.equals(r13)     // Catch:{ all -> 0x09c8 }
            if (r11 == 0) goto L_0x039e
            r24 = 1
            java.lang.Long r3 = java.lang.Long.valueOf(r24)     // Catch:{ all -> 0x09c8 }
            r12.zzjll = r3     // Catch:{ all -> 0x09c8 }
            r18 = 1
            goto L_0x03b0
        L_0x039e:
            java.lang.String r11 = r12.name     // Catch:{ all -> 0x09c8 }
            boolean r3 = r3.equals(r11)     // Catch:{ all -> 0x09c8 }
            if (r3 == 0) goto L_0x03b0
            r24 = 1
            java.lang.Long r3 = java.lang.Long.valueOf(r24)     // Catch:{ all -> 0x09c8 }
            r12.zzjll = r3     // Catch:{ all -> 0x09c8 }
            r19 = 1
        L_0x03b0:
            int r15 = r15 + 1
            r11 = 1
            goto L_0x0383
        L_0x03b4:
            if (r18 != 0) goto L_0x0412
            if (r7 == 0) goto L_0x0412
            com.google.android.gms.internal.iz r8 = r38.zzawy()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.jb r8 = r8.zzazj()     // Catch:{ all -> 0x09c8 }
            java.lang.String r10 = "Marking event as conversion"
            com.google.android.gms.internal.ix r12 = r38.zzawt()     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r13 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r13 = r13.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r13 = (com.google.android.gms.internal.nl) r13     // Catch:{ all -> 0x09c8 }
            java.lang.String r13 = r13.name     // Catch:{ all -> 0x09c8 }
            java.lang.String r12 = r12.a((java.lang.String) r13)     // Catch:{ all -> 0x09c8 }
            r8.zzj(r10, r12)     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r8 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r8 = r8.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r8 = (com.google.android.gms.internal.nl) r8     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r8 = r8.zzjlh     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r10 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r10 = r10.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r10 = (com.google.android.gms.internal.nl) r10     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r10 = r10.zzjlh     // Catch:{ all -> 0x09c8 }
            int r10 = r10.length     // Catch:{ all -> 0x09c8 }
            r12 = 1
            int r10 = r10 + r12
            java.lang.Object[] r8 = java.util.Arrays.copyOf(r8, r10)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r8 = (com.google.android.gms.internal.nm[]) r8     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm r10 = new com.google.android.gms.internal.nm     // Catch:{ all -> 0x09c8 }
            r10.<init>()     // Catch:{ all -> 0x09c8 }
            r10.name = r11     // Catch:{ all -> 0x09c8 }
            r12 = 1
            java.lang.Long r15 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x09c8 }
            r10.zzjll = r15     // Catch:{ all -> 0x09c8 }
            int r12 = r8.length     // Catch:{ all -> 0x09c8 }
            r13 = 1
            int r12 = r12 - r13
            r8[r12] = r10     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r10 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r10 = r10.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r10 = (com.google.android.gms.internal.nl) r10     // Catch:{ all -> 0x09c8 }
            r10.zzjlh = r8     // Catch:{ all -> 0x09c8 }
        L_0x0412:
            if (r19 != 0) goto L_0x046e
            com.google.android.gms.internal.iz r8 = r38.zzawy()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.jb r8 = r8.zzazj()     // Catch:{ all -> 0x09c8 }
            java.lang.String r10 = "Marking event as real-time"
            com.google.android.gms.internal.ix r12 = r38.zzawt()     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r13 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r13 = r13.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r13 = (com.google.android.gms.internal.nl) r13     // Catch:{ all -> 0x09c8 }
            java.lang.String r13 = r13.name     // Catch:{ all -> 0x09c8 }
            java.lang.String r12 = r12.a((java.lang.String) r13)     // Catch:{ all -> 0x09c8 }
            r8.zzj(r10, r12)     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r8 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r8 = r8.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r8 = (com.google.android.gms.internal.nl) r8     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r8 = r8.zzjlh     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r10 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r10 = r10.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r10 = (com.google.android.gms.internal.nl) r10     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r10 = r10.zzjlh     // Catch:{ all -> 0x09c8 }
            int r10 = r10.length     // Catch:{ all -> 0x09c8 }
            r12 = 1
            int r10 = r10 + r12
            java.lang.Object[] r8 = java.util.Arrays.copyOf(r8, r10)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r8 = (com.google.android.gms.internal.nm[]) r8     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm r10 = new com.google.android.gms.internal.nm     // Catch:{ all -> 0x09c8 }
            r10.<init>()     // Catch:{ all -> 0x09c8 }
            r10.name = r3     // Catch:{ all -> 0x09c8 }
            r12 = 1
            java.lang.Long r12 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x09c8 }
            r10.zzjll = r12     // Catch:{ all -> 0x09c8 }
            int r12 = r8.length     // Catch:{ all -> 0x09c8 }
            r13 = 1
            int r12 = r12 - r13
            r8[r12] = r10     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r10 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r10 = r10.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r10 = (com.google.android.gms.internal.nl) r10     // Catch:{ all -> 0x09c8 }
            r10.zzjlh = r8     // Catch:{ all -> 0x09c8 }
        L_0x046e:
            com.google.android.gms.internal.id r24 = r38.zzaws()     // Catch:{ all -> 0x09c8 }
            long r25 = r38.j()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r8 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r8 = r8.zzcn     // Catch:{ all -> 0x09c8 }
            r28 = 0
            r29 = 0
            r30 = 0
            r31 = 0
            r32 = 1
            r27 = r8
            com.google.android.gms.internal.ie r8 = r24.zza(r25, r27, r28, r29, r30, r31, r32)     // Catch:{ all -> 0x09c8 }
            long r12 = r8.e     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.ic r8 = r1.g     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r10 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r10 = r10.zzcn     // Catch:{ all -> 0x09c8 }
            int r8 = r8.zzix(r10)     // Catch:{ all -> 0x09c8 }
            r10 = r9
            long r8 = (long) r8     // Catch:{ all -> 0x09c8 }
            int r15 = (r12 > r8 ? 1 : (r12 == r8 ? 0 : -1))
            if (r15 <= 0) goto L_0x04d9
            java.util.List<com.google.android.gms.internal.nl> r8 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r8 = r8.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r8 = (com.google.android.gms.internal.nl) r8     // Catch:{ all -> 0x09c8 }
            r9 = 0
        L_0x04a5:
            com.google.android.gms.internal.nm[] r12 = r8.zzjlh     // Catch:{ all -> 0x09c8 }
            int r12 = r12.length     // Catch:{ all -> 0x09c8 }
            if (r9 >= r12) goto L_0x04d7
            com.google.android.gms.internal.nm[] r12 = r8.zzjlh     // Catch:{ all -> 0x09c8 }
            r12 = r12[r9]     // Catch:{ all -> 0x09c8 }
            java.lang.String r12 = r12.name     // Catch:{ all -> 0x09c8 }
            boolean r12 = r3.equals(r12)     // Catch:{ all -> 0x09c8 }
            if (r12 == 0) goto L_0x04d4
            com.google.android.gms.internal.nm[] r3 = r8.zzjlh     // Catch:{ all -> 0x09c8 }
            int r3 = r3.length     // Catch:{ all -> 0x09c8 }
            r12 = 1
            int r3 = r3 - r12
            com.google.android.gms.internal.nm[] r3 = new com.google.android.gms.internal.nm[r3]     // Catch:{ all -> 0x09c8 }
            if (r9 <= 0) goto L_0x04c5
            com.google.android.gms.internal.nm[] r12 = r8.zzjlh     // Catch:{ all -> 0x09c8 }
            r13 = 0
            java.lang.System.arraycopy(r12, r13, r3, r13, r9)     // Catch:{ all -> 0x09c8 }
        L_0x04c5:
            int r12 = r3.length     // Catch:{ all -> 0x09c8 }
            if (r9 >= r12) goto L_0x04d1
            com.google.android.gms.internal.nm[] r12 = r8.zzjlh     // Catch:{ all -> 0x09c8 }
            int r13 = r9 + 1
            int r15 = r3.length     // Catch:{ all -> 0x09c8 }
            int r15 = r15 - r9
            java.lang.System.arraycopy(r12, r13, r3, r9, r15)     // Catch:{ all -> 0x09c8 }
        L_0x04d1:
            r8.zzjlh = r3     // Catch:{ all -> 0x09c8 }
            goto L_0x04d7
        L_0x04d4:
            int r9 = r9 + 1
            goto L_0x04a5
        L_0x04d7:
            r9 = r10
            goto L_0x04da
        L_0x04d9:
            r9 = 1
        L_0x04da:
            java.util.List<com.google.android.gms.internal.nl> r3 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r3 = r3.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r3 = (com.google.android.gms.internal.nl) r3     // Catch:{ all -> 0x09c8 }
            java.lang.String r3 = r3.name     // Catch:{ all -> 0x09c8 }
            boolean r3 = com.google.android.gms.internal.na.a((java.lang.String) r3)     // Catch:{ all -> 0x09c8 }
            if (r3 == 0) goto L_0x0593
            if (r7 == 0) goto L_0x0593
            com.google.android.gms.internal.id r24 = r38.zzaws()     // Catch:{ all -> 0x09c8 }
            long r25 = r38.j()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r3 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r3 = r3.zzcn     // Catch:{ all -> 0x09c8 }
            r28 = 0
            r29 = 0
            r30 = 1
            r31 = 0
            r32 = 0
            r27 = r3
            com.google.android.gms.internal.ie r3 = r24.zza(r25, r27, r28, r29, r30, r31, r32)     // Catch:{ all -> 0x09c8 }
            long r7 = r3.c     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.ic r3 = r1.g     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r10 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r10 = r10.zzcn     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.iq<java.lang.Integer> r12 = com.google.android.gms.internal.ip.zzjaq     // Catch:{ all -> 0x09c8 }
            int r3 = r3.zzb(r10, r12)     // Catch:{ all -> 0x09c8 }
            long r12 = (long) r3     // Catch:{ all -> 0x09c8 }
            int r3 = (r7 > r12 ? 1 : (r7 == r12 ? 0 : -1))
            if (r3 <= 0) goto L_0x0593
            com.google.android.gms.internal.iz r3 = r38.zzawy()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.jb r3 = r3.zzazf()     // Catch:{ all -> 0x09c8 }
            java.lang.String r7 = "Too many conversions. Not logging as conversion. appId"
            com.google.android.gms.internal.no r8 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r8 = r8.zzcn     // Catch:{ all -> 0x09c8 }
            java.lang.Object r8 = com.google.android.gms.internal.iz.a((java.lang.String) r8)     // Catch:{ all -> 0x09c8 }
            r3.zzj(r7, r8)     // Catch:{ all -> 0x09c8 }
            java.util.List<com.google.android.gms.internal.nl> r3 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r3 = r3.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r3 = (com.google.android.gms.internal.nl) r3     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r7 = r3.zzjlh     // Catch:{ all -> 0x09c8 }
            int r8 = r7.length     // Catch:{ all -> 0x09c8 }
            r10 = 0
            r12 = 0
            r13 = 0
        L_0x053e:
            if (r10 >= r8) goto L_0x055c
            r15 = r7[r10]     // Catch:{ all -> 0x09c8 }
            r18 = r7
            java.lang.String r7 = r15.name     // Catch:{ all -> 0x09c8 }
            boolean r7 = r11.equals(r7)     // Catch:{ all -> 0x09c8 }
            if (r7 == 0) goto L_0x054e
            r13 = r15
            goto L_0x0557
        L_0x054e:
            java.lang.String r7 = r15.name     // Catch:{ all -> 0x09c8 }
            boolean r7 = r14.equals(r7)     // Catch:{ all -> 0x09c8 }
            if (r7 == 0) goto L_0x0557
            r12 = 1
        L_0x0557:
            int r10 = r10 + 1
            r7 = r18
            goto L_0x053e
        L_0x055c:
            if (r12 == 0) goto L_0x0571
            if (r13 == 0) goto L_0x0571
            com.google.android.gms.internal.nm[] r7 = r3.zzjlh     // Catch:{ all -> 0x09c8 }
            r8 = 1
            com.google.android.gms.internal.nm[] r10 = new com.google.android.gms.internal.nm[r8]     // Catch:{ all -> 0x09c8 }
            r8 = 0
            r10[r8] = r13     // Catch:{ all -> 0x09c8 }
            java.lang.Object[] r7 = com.google.android.gms.common.util.a.zza((T[]) r7, (T[]) r10)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r7 = (com.google.android.gms.internal.nm[]) r7     // Catch:{ all -> 0x09c8 }
            r3.zzjlh = r7     // Catch:{ all -> 0x09c8 }
            goto L_0x0593
        L_0x0571:
            if (r13 == 0) goto L_0x057e
            r13.name = r14     // Catch:{ all -> 0x09c8 }
            r7 = 10
            java.lang.Long r3 = java.lang.Long.valueOf(r7)     // Catch:{ all -> 0x09c8 }
            r13.zzjll = r3     // Catch:{ all -> 0x09c8 }
            goto L_0x0593
        L_0x057e:
            com.google.android.gms.internal.iz r3 = r38.zzawy()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.jb r3 = r3.zzazd()     // Catch:{ all -> 0x09c8 }
            java.lang.String r7 = "Did not find conversion parameter. appId"
            com.google.android.gms.internal.no r8 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r8 = r8.zzcn     // Catch:{ all -> 0x09c8 }
            java.lang.Object r8 = com.google.android.gms.internal.iz.a((java.lang.String) r8)     // Catch:{ all -> 0x09c8 }
            r3.zzj(r7, r8)     // Catch:{ all -> 0x09c8 }
        L_0x0593:
            com.google.android.gms.internal.nl[] r3 = r4.zzjlp     // Catch:{ all -> 0x09c8 }
            int r7 = r6 + 1
            java.util.List<com.google.android.gms.internal.nl> r8 = r2.c     // Catch:{ all -> 0x09c8 }
            java.lang.Object r8 = r8.get(r5)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl r8 = (com.google.android.gms.internal.nl) r8     // Catch:{ all -> 0x09c8 }
            r3[r6] = r8     // Catch:{ all -> 0x09c8 }
            r6 = r7
        L_0x05a2:
            int r5 = r5 + 1
            r3 = 0
            r7 = -1
            r11 = 1
            goto L_0x0294
        L_0x05aa:
            r10 = r9
            java.util.List<com.google.android.gms.internal.nl> r3 = r2.c     // Catch:{ all -> 0x09c8 }
            int r3 = r3.size()     // Catch:{ all -> 0x09c8 }
            if (r6 >= r3) goto L_0x05bd
            com.google.android.gms.internal.nl[] r3 = r4.zzjlp     // Catch:{ all -> 0x09c8 }
            java.lang.Object[] r3 = java.util.Arrays.copyOf(r3, r6)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl[] r3 = (com.google.android.gms.internal.nl[]) r3     // Catch:{ all -> 0x09c8 }
            r4.zzjlp = r3     // Catch:{ all -> 0x09c8 }
        L_0x05bd:
            com.google.android.gms.internal.no r3 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r3 = r3.zzcn     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r5 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nq[] r5 = r5.zzjlq     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl[] r6 = r4.zzjlp     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nk[] r3 = r1.a((java.lang.String) r3, (com.google.android.gms.internal.nq[]) r5, (com.google.android.gms.internal.nl[]) r6)     // Catch:{ all -> 0x09c8 }
            r4.zzjmi = r3     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.iq<java.lang.Boolean> r3 = com.google.android.gms.internal.ip.zzjac     // Catch:{ all -> 0x09c8 }
            java.lang.Object r3 = r3.get()     // Catch:{ all -> 0x09c8 }
            java.lang.Boolean r3 = (java.lang.Boolean) r3     // Catch:{ all -> 0x09c8 }
            boolean r3 = r3.booleanValue()     // Catch:{ all -> 0x09c8 }
            if (r3 == 0) goto L_0x0854
            com.google.android.gms.internal.ic r3 = r1.g     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r5 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r5 = r5.zzcn     // Catch:{ all -> 0x09c8 }
            java.lang.String r6 = "1"
            com.google.android.gms.internal.jr r3 = r3.zzawv()     // Catch:{ all -> 0x09c8 }
            java.lang.String r7 = "measurement.event_sampling_enabled"
            java.lang.String r3 = r3.a((java.lang.String) r5, (java.lang.String) r7)     // Catch:{ all -> 0x09c8 }
            boolean r3 = r6.equals(r3)     // Catch:{ all -> 0x09c8 }
            if (r3 == 0) goto L_0x0854
            java.util.HashMap r3 = new java.util.HashMap     // Catch:{ all -> 0x09c8 }
            r3.<init>()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl[] r5 = r4.zzjlp     // Catch:{ all -> 0x09c8 }
            int r5 = r5.length     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl[] r5 = new com.google.android.gms.internal.nl[r5]     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.na r6 = r38.zzawu()     // Catch:{ all -> 0x09c8 }
            java.security.SecureRandom r6 = r6.c()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl[] r7 = r4.zzjlp     // Catch:{ all -> 0x09c8 }
            int r8 = r7.length     // Catch:{ all -> 0x09c8 }
            r9 = 0
            r11 = 0
        L_0x060a:
            if (r9 >= r8) goto L_0x0820
            r12 = r7[r9]     // Catch:{ all -> 0x09c8 }
            java.lang.String r13 = r12.name     // Catch:{ all -> 0x09c8 }
            java.lang.String r14 = "_ep"
            boolean r13 = r13.equals(r14)     // Catch:{ all -> 0x09c8 }
            java.lang.String r14 = "_efs"
            java.lang.String r15 = "_sr"
            if (r13 == 0) goto L_0x0684
            r38.zzawu()     // Catch:{ all -> 0x09c8 }
            java.lang.String r13 = "_en"
            java.lang.Object r13 = com.google.android.gms.internal.na.zza((com.google.android.gms.internal.nl) r12, (java.lang.String) r13)     // Catch:{ all -> 0x09c8 }
            java.lang.String r13 = (java.lang.String) r13     // Catch:{ all -> 0x09c8 }
            java.lang.Object r18 = r3.get(r13)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.il r18 = (com.google.android.gms.internal.il) r18     // Catch:{ all -> 0x09c8 }
            if (r18 != 0) goto L_0x0641
            com.google.android.gms.internal.id r1 = r38.zzaws()     // Catch:{ all -> 0x09c8 }
            r19 = r7
            com.google.android.gms.internal.no r7 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r7 = r7.zzcn     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.il r1 = r1.zzae(r7, r13)     // Catch:{ all -> 0x09c8 }
            r3.put(r13, r1)     // Catch:{ all -> 0x09c8 }
            goto L_0x0645
        L_0x0641:
            r19 = r7
            r1 = r18
        L_0x0645:
            java.lang.Long r7 = r1.g     // Catch:{ all -> 0x09c8 }
            if (r7 != 0) goto L_0x06be
            java.lang.Long r7 = r1.h     // Catch:{ all -> 0x09c8 }
            long r24 = r7.longValue()     // Catch:{ all -> 0x09c8 }
            r26 = 1
            int r7 = (r24 > r26 ? 1 : (r24 == r26 ? 0 : -1))
            if (r7 <= 0) goto L_0x0662
            r38.zzawu()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r7 = r12.zzjlh     // Catch:{ all -> 0x09c8 }
            java.lang.Long r13 = r1.h     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r7 = com.google.android.gms.internal.na.a((com.google.android.gms.internal.nm[]) r7, (java.lang.String) r15, (java.lang.Object) r13)     // Catch:{ all -> 0x09c8 }
            r12.zzjlh = r7     // Catch:{ all -> 0x09c8 }
        L_0x0662:
            java.lang.Boolean r7 = r1.i     // Catch:{ all -> 0x09c8 }
            if (r7 == 0) goto L_0x067f
            java.lang.Boolean r1 = r1.i     // Catch:{ all -> 0x09c8 }
            boolean r1 = r1.booleanValue()     // Catch:{ all -> 0x09c8 }
            if (r1 == 0) goto L_0x067f
            r38.zzawu()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r1 = r12.zzjlh     // Catch:{ all -> 0x09c8 }
            r24 = 1
            java.lang.Long r7 = java.lang.Long.valueOf(r24)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r1 = com.google.android.gms.internal.na.a((com.google.android.gms.internal.nm[]) r1, (java.lang.String) r14, (java.lang.Object) r7)     // Catch:{ all -> 0x09c8 }
            r12.zzjlh = r1     // Catch:{ all -> 0x09c8 }
        L_0x067f:
            int r1 = r11 + 1
            r5[r11] = r12     // Catch:{ all -> 0x09c8 }
            goto L_0x06bd
        L_0x0684:
            r19 = r7
            java.lang.String r1 = "_dbg"
            r24 = 1
            java.lang.Long r7 = java.lang.Long.valueOf(r24)     // Catch:{ all -> 0x09c8 }
            boolean r1 = a((com.google.android.gms.internal.nl) r12, (java.lang.String) r1, (java.lang.Object) r7)     // Catch:{ all -> 0x09c8 }
            if (r1 != 0) goto L_0x06a3
            com.google.android.gms.internal.jr r1 = r38.zzawv()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r7 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r7 = r7.zzcn     // Catch:{ all -> 0x09c8 }
            java.lang.String r13 = r12.name     // Catch:{ all -> 0x09c8 }
            int r1 = r1.d(r7, r13)     // Catch:{ all -> 0x09c8 }
            goto L_0x06a4
        L_0x06a3:
            r1 = 1
        L_0x06a4:
            if (r1 > 0) goto L_0x06ca
            com.google.android.gms.internal.iz r7 = r38.zzawy()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.jb r7 = r7.zzazf()     // Catch:{ all -> 0x09c8 }
            java.lang.String r13 = "Sample rate must be positive. event, rate"
            java.lang.String r14 = r12.name     // Catch:{ all -> 0x09c8 }
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)     // Catch:{ all -> 0x09c8 }
            r7.zze(r13, r14, r1)     // Catch:{ all -> 0x09c8 }
            int r1 = r11 + 1
            r5[r11] = r12     // Catch:{ all -> 0x09c8 }
        L_0x06bd:
            r11 = r1
        L_0x06be:
            r26 = r2
            r25 = r6
            r18 = r8
            r13 = r9
            r22 = r10
        L_0x06c7:
            r12 = 0
            goto L_0x0810
        L_0x06ca:
            java.lang.String r7 = r12.name     // Catch:{ all -> 0x09c8 }
            java.lang.Object r7 = r3.get(r7)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.il r7 = (com.google.android.gms.internal.il) r7     // Catch:{ all -> 0x09c8 }
            if (r7 != 0) goto L_0x071f
            com.google.android.gms.internal.id r7 = r38.zzaws()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r13 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r13 = r13.zzcn     // Catch:{ all -> 0x09c8 }
            r18 = r8
            java.lang.String r8 = r12.name     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.il r7 = r7.zzae(r13, r8)     // Catch:{ all -> 0x09c8 }
            if (r7 != 0) goto L_0x0721
            com.google.android.gms.internal.iz r7 = r38.zzawy()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.jb r7 = r7.zzazf()     // Catch:{ all -> 0x09c8 }
            java.lang.String r8 = "Event being bundled has no eventAggregate. appId, eventName"
            com.google.android.gms.internal.no r13 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r13 = r13.zzcn     // Catch:{ all -> 0x09c8 }
            r22 = r10
            java.lang.String r10 = r12.name     // Catch:{ all -> 0x09c8 }
            r7.zze(r8, r13, r10)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.il r7 = new com.google.android.gms.internal.il     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r8 = r2.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r8 = r8.zzcn     // Catch:{ all -> 0x09c8 }
            java.lang.String r10 = r12.name     // Catch:{ all -> 0x09c8 }
            r27 = 1
            r29 = 1
            java.lang.Long r13 = r12.zzjli     // Catch:{ all -> 0x09c8 }
            long r31 = r13.longValue()     // Catch:{ all -> 0x09c8 }
            r33 = 0
            r35 = 0
            r36 = 0
            r37 = 0
            r24 = r7
            r25 = r8
            r26 = r10
            r24.<init>(r25, r26, r27, r29, r31, r33, r35, r36, r37)     // Catch:{ all -> 0x09c8 }
            goto L_0x0723
        L_0x071f:
            r18 = r8
        L_0x0721:
            r22 = r10
        L_0x0723:
            r38.zzawu()     // Catch:{ all -> 0x09c8 }
            java.lang.String r8 = "_eid"
            java.lang.Object r8 = com.google.android.gms.internal.na.zza((com.google.android.gms.internal.nl) r12, (java.lang.String) r8)     // Catch:{ all -> 0x09c8 }
            java.lang.Long r8 = (java.lang.Long) r8     // Catch:{ all -> 0x09c8 }
            if (r8 == 0) goto L_0x0732
            r10 = 1
            goto L_0x0733
        L_0x0732:
            r10 = 0
        L_0x0733:
            java.lang.Boolean r10 = java.lang.Boolean.valueOf(r10)     // Catch:{ all -> 0x09c8 }
            r13 = 1
            if (r1 != r13) goto L_0x0762
            int r1 = r11 + 1
            r5[r11] = r12     // Catch:{ all -> 0x09c8 }
            boolean r8 = r10.booleanValue()     // Catch:{ all -> 0x09c8 }
            if (r8 == 0) goto L_0x075a
            java.lang.Long r8 = r7.g     // Catch:{ all -> 0x09c8 }
            if (r8 != 0) goto L_0x0750
            java.lang.Long r8 = r7.h     // Catch:{ all -> 0x09c8 }
            if (r8 != 0) goto L_0x0750
            java.lang.Boolean r8 = r7.i     // Catch:{ all -> 0x09c8 }
            if (r8 == 0) goto L_0x075a
        L_0x0750:
            r8 = 0
            com.google.android.gms.internal.il r7 = r7.a(r8, r8, r8)     // Catch:{ all -> 0x09c8 }
            java.lang.String r8 = r12.name     // Catch:{ all -> 0x09c8 }
        L_0x0757:
            r3.put(r8, r7)     // Catch:{ all -> 0x09c8 }
        L_0x075a:
            r11 = r1
            r26 = r2
            r25 = r6
            r13 = r9
            goto L_0x06c7
        L_0x0762:
            int r13 = r6.nextInt(r1)     // Catch:{ all -> 0x09c8 }
            if (r13 != 0) goto L_0x0798
            r38.zzawu()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r8 = r12.zzjlh     // Catch:{ all -> 0x09c8 }
            long r13 = (long) r1     // Catch:{ all -> 0x09c8 }
            java.lang.Long r1 = java.lang.Long.valueOf(r13)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r1 = com.google.android.gms.internal.na.a((com.google.android.gms.internal.nm[]) r8, (java.lang.String) r15, (java.lang.Object) r1)     // Catch:{ all -> 0x09c8 }
            r12.zzjlh = r1     // Catch:{ all -> 0x09c8 }
            int r1 = r11 + 1
            r5[r11] = r12     // Catch:{ all -> 0x09c8 }
            boolean r8 = r10.booleanValue()     // Catch:{ all -> 0x09c8 }
            if (r8 == 0) goto L_0x078b
            java.lang.Long r8 = java.lang.Long.valueOf(r13)     // Catch:{ all -> 0x09c8 }
            r10 = 0
            com.google.android.gms.internal.il r7 = r7.a(r10, r8, r10)     // Catch:{ all -> 0x09c8 }
        L_0x078b:
            java.lang.String r8 = r12.name     // Catch:{ all -> 0x09c8 }
            java.lang.Long r10 = r12.zzjli     // Catch:{ all -> 0x09c8 }
            long r10 = r10.longValue()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.il r7 = r7.b(r10)     // Catch:{ all -> 0x09c8 }
            goto L_0x0757
        L_0x0798:
            r24 = r8
            r13 = r9
            long r8 = r7.f     // Catch:{ all -> 0x09c8 }
            r25 = r6
            java.lang.Long r6 = r12.zzjli     // Catch:{ all -> 0x09c8 }
            long r26 = r6.longValue()     // Catch:{ all -> 0x09c8 }
            long r26 = r26 - r8
            long r8 = java.lang.Math.abs(r26)     // Catch:{ all -> 0x09c8 }
            r26 = 86400000(0x5265c00, double:4.2687272E-316)
            int r6 = (r8 > r26 ? 1 : (r8 == r26 ? 0 : -1))
            if (r6 < 0) goto L_0x07fc
            r38.zzawu()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r6 = r12.zzjlh     // Catch:{ all -> 0x09c8 }
            r26 = r2
            r8 = 1
            java.lang.Long r2 = java.lang.Long.valueOf(r8)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r2 = com.google.android.gms.internal.na.a((com.google.android.gms.internal.nm[]) r6, (java.lang.String) r14, (java.lang.Object) r2)     // Catch:{ all -> 0x09c8 }
            r12.zzjlh = r2     // Catch:{ all -> 0x09c8 }
            r38.zzawu()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r2 = r12.zzjlh     // Catch:{ all -> 0x09c8 }
            long r8 = (long) r1     // Catch:{ all -> 0x09c8 }
            java.lang.Long r1 = java.lang.Long.valueOf(r8)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nm[] r1 = com.google.android.gms.internal.na.a((com.google.android.gms.internal.nm[]) r2, (java.lang.String) r15, (java.lang.Object) r1)     // Catch:{ all -> 0x09c8 }
            r12.zzjlh = r1     // Catch:{ all -> 0x09c8 }
            int r1 = r11 + 1
            r5[r11] = r12     // Catch:{ all -> 0x09c8 }
            boolean r2 = r10.booleanValue()     // Catch:{ all -> 0x09c8 }
            if (r2 == 0) goto L_0x07ea
            java.lang.Long r2 = java.lang.Long.valueOf(r8)     // Catch:{ all -> 0x09c8 }
            java.lang.Boolean r6 = java.lang.Boolean.TRUE     // Catch:{ all -> 0x09c8 }
            r8 = 0
            com.google.android.gms.internal.il r7 = r7.a(r8, r2, r6)     // Catch:{ all -> 0x09c8 }
        L_0x07ea:
            java.lang.String r2 = r12.name     // Catch:{ all -> 0x09c8 }
            java.lang.Long r6 = r12.zzjli     // Catch:{ all -> 0x09c8 }
            long r8 = r6.longValue()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.il r6 = r7.b(r8)     // Catch:{ all -> 0x09c8 }
            r3.put(r2, r6)     // Catch:{ all -> 0x09c8 }
            r11 = r1
            goto L_0x06c7
        L_0x07fc:
            r26 = r2
            boolean r1 = r10.booleanValue()     // Catch:{ all -> 0x09c8 }
            if (r1 == 0) goto L_0x06c7
            java.lang.String r1 = r12.name     // Catch:{ all -> 0x09c8 }
            r8 = r24
            r12 = 0
            com.google.android.gms.internal.il r2 = r7.a(r8, r12, r12)     // Catch:{ all -> 0x09c8 }
            r3.put(r1, r2)     // Catch:{ all -> 0x09c8 }
        L_0x0810:
            int r9 = r13 + 1
            r1 = r38
            r8 = r18
            r7 = r19
            r10 = r22
            r6 = r25
            r2 = r26
            goto L_0x060a
        L_0x0820:
            r26 = r2
            r22 = r10
            r12 = 0
            com.google.android.gms.internal.nl[] r1 = r4.zzjlp     // Catch:{ all -> 0x09c8 }
            int r1 = r1.length     // Catch:{ all -> 0x09c8 }
            if (r11 >= r1) goto L_0x0832
            java.lang.Object[] r1 = java.util.Arrays.copyOf(r5, r11)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.nl[] r1 = (com.google.android.gms.internal.nl[]) r1     // Catch:{ all -> 0x09c8 }
            r4.zzjlp = r1     // Catch:{ all -> 0x09c8 }
        L_0x0832:
            java.util.Set r1 = r3.entrySet()     // Catch:{ all -> 0x09c8 }
            java.util.Iterator r1 = r1.iterator()     // Catch:{ all -> 0x09c8 }
        L_0x083a:
            boolean r2 = r1.hasNext()     // Catch:{ all -> 0x09c8 }
            if (r2 == 0) goto L_0x0859
            java.lang.Object r2 = r1.next()     // Catch:{ all -> 0x09c8 }
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.id r3 = r38.zzaws()     // Catch:{ all -> 0x09c8 }
            java.lang.Object r2 = r2.getValue()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.il r2 = (com.google.android.gms.internal.il) r2     // Catch:{ all -> 0x09c8 }
            r3.zza((com.google.android.gms.internal.il) r2)     // Catch:{ all -> 0x09c8 }
            goto L_0x083a
        L_0x0854:
            r26 = r2
            r22 = r10
            r12 = 0
        L_0x0859:
            r1 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch:{ all -> 0x09c8 }
            r4.zzjls = r1     // Catch:{ all -> 0x09c8 }
            r1 = -9223372036854775808
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch:{ all -> 0x09c8 }
            r4.zzjlt = r1     // Catch:{ all -> 0x09c8 }
            r1 = 0
        L_0x086d:
            com.google.android.gms.internal.nl[] r2 = r4.zzjlp     // Catch:{ all -> 0x09c8 }
            int r2 = r2.length     // Catch:{ all -> 0x09c8 }
            if (r1 >= r2) goto L_0x08a1
            com.google.android.gms.internal.nl[] r2 = r4.zzjlp     // Catch:{ all -> 0x09c8 }
            r2 = r2[r1]     // Catch:{ all -> 0x09c8 }
            java.lang.Long r3 = r2.zzjli     // Catch:{ all -> 0x09c8 }
            long r5 = r3.longValue()     // Catch:{ all -> 0x09c8 }
            java.lang.Long r3 = r4.zzjls     // Catch:{ all -> 0x09c8 }
            long r7 = r3.longValue()     // Catch:{ all -> 0x09c8 }
            int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r3 >= 0) goto L_0x088a
            java.lang.Long r3 = r2.zzjli     // Catch:{ all -> 0x09c8 }
            r4.zzjls = r3     // Catch:{ all -> 0x09c8 }
        L_0x088a:
            java.lang.Long r3 = r2.zzjli     // Catch:{ all -> 0x09c8 }
            long r5 = r3.longValue()     // Catch:{ all -> 0x09c8 }
            java.lang.Long r3 = r4.zzjlt     // Catch:{ all -> 0x09c8 }
            long r7 = r3.longValue()     // Catch:{ all -> 0x09c8 }
            int r3 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r3 <= 0) goto L_0x089e
            java.lang.Long r2 = r2.zzjli     // Catch:{ all -> 0x09c8 }
            r4.zzjlt = r2     // Catch:{ all -> 0x09c8 }
        L_0x089e:
            int r1 = r1 + 1
            goto L_0x086d
        L_0x08a1:
            r1 = r26
            com.google.android.gms.internal.no r2 = r1.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r2 = r2.zzcn     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.id r3 = r38.zzaws()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.hy r3 = r3.zzjb(r2)     // Catch:{ all -> 0x09c8 }
            if (r3 != 0) goto L_0x08c7
            com.google.android.gms.internal.iz r3 = r38.zzawy()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.jb r3 = r3.zzazd()     // Catch:{ all -> 0x09c8 }
            java.lang.String r5 = "Bundling raw events w/o app info. appId"
            com.google.android.gms.internal.no r6 = r1.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r6 = r6.zzcn     // Catch:{ all -> 0x09c8 }
            java.lang.Object r6 = com.google.android.gms.internal.iz.a((java.lang.String) r6)     // Catch:{ all -> 0x09c8 }
            r3.zzj(r5, r6)     // Catch:{ all -> 0x09c8 }
            goto L_0x0921
        L_0x08c7:
            com.google.android.gms.internal.nl[] r5 = r4.zzjlp     // Catch:{ all -> 0x09c8 }
            int r5 = r5.length     // Catch:{ all -> 0x09c8 }
            if (r5 <= 0) goto L_0x0921
            long r5 = r3.zzaxf()     // Catch:{ all -> 0x09c8 }
            r7 = 0
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 == 0) goto L_0x08db
            java.lang.Long r10 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x09c8 }
            goto L_0x08dc
        L_0x08db:
            r10 = r12
        L_0x08dc:
            r4.zzjlv = r10     // Catch:{ all -> 0x09c8 }
            long r9 = r3.zzaxe()     // Catch:{ all -> 0x09c8 }
            int r11 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r11 != 0) goto L_0x08e7
            goto L_0x08e8
        L_0x08e7:
            r5 = r9
        L_0x08e8:
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 == 0) goto L_0x08f1
            java.lang.Long r10 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x09c8 }
            goto L_0x08f2
        L_0x08f1:
            r10 = r12
        L_0x08f2:
            r4.zzjlu = r10     // Catch:{ all -> 0x09c8 }
            r3.zzaxo()     // Catch:{ all -> 0x09c8 }
            long r5 = r3.zzaxl()     // Catch:{ all -> 0x09c8 }
            int r6 = (int) r5     // Catch:{ all -> 0x09c8 }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r6)     // Catch:{ all -> 0x09c8 }
            r4.zzjmg = r5     // Catch:{ all -> 0x09c8 }
            java.lang.Long r5 = r4.zzjls     // Catch:{ all -> 0x09c8 }
            long r5 = r5.longValue()     // Catch:{ all -> 0x09c8 }
            r3.zzal(r5)     // Catch:{ all -> 0x09c8 }
            java.lang.Long r5 = r4.zzjlt     // Catch:{ all -> 0x09c8 }
            long r5 = r5.longValue()     // Catch:{ all -> 0x09c8 }
            r3.zzam(r5)     // Catch:{ all -> 0x09c8 }
            java.lang.String r5 = r3.zzaxw()     // Catch:{ all -> 0x09c8 }
            r4.zzixw = r5     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.id r5 = r38.zzaws()     // Catch:{ all -> 0x09c8 }
            r5.zza((com.google.android.gms.internal.hy) r3)     // Catch:{ all -> 0x09c8 }
        L_0x0921:
            com.google.android.gms.internal.nl[] r3 = r4.zzjlp     // Catch:{ all -> 0x09c8 }
            int r3 = r3.length     // Catch:{ all -> 0x09c8 }
            if (r3 <= 0) goto L_0x096d
            com.google.android.gms.internal.jr r3 = r38.zzawv()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.no r5 = r1.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r5 = r5.zzcn     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.ni r3 = r3.a((java.lang.String) r5)     // Catch:{ all -> 0x09c8 }
            if (r3 == 0) goto L_0x093e
            java.lang.Long r5 = r3.zzjkw     // Catch:{ all -> 0x09c8 }
            if (r5 != 0) goto L_0x0939
            goto L_0x093e
        L_0x0939:
            java.lang.Long r3 = r3.zzjkw     // Catch:{ all -> 0x09c8 }
        L_0x093b:
            r4.zzjmn = r3     // Catch:{ all -> 0x09c8 }
            goto L_0x0964
        L_0x093e:
            com.google.android.gms.internal.no r3 = r1.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r3 = r3.zzixs     // Catch:{ all -> 0x09c8 }
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch:{ all -> 0x09c8 }
            if (r3 == 0) goto L_0x094f
            r5 = -1
            java.lang.Long r3 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x09c8 }
            goto L_0x093b
        L_0x094f:
            com.google.android.gms.internal.iz r3 = r38.zzawy()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.jb r3 = r3.zzazf()     // Catch:{ all -> 0x09c8 }
            java.lang.String r5 = "Did not find measurement config or missing version info. appId"
            com.google.android.gms.internal.no r6 = r1.f3270a     // Catch:{ all -> 0x09c8 }
            java.lang.String r6 = r6.zzcn     // Catch:{ all -> 0x09c8 }
            java.lang.Object r6 = com.google.android.gms.internal.iz.a((java.lang.String) r6)     // Catch:{ all -> 0x09c8 }
            r3.zzj(r5, r6)     // Catch:{ all -> 0x09c8 }
        L_0x0964:
            com.google.android.gms.internal.id r3 = r38.zzaws()     // Catch:{ all -> 0x09c8 }
            r9 = r22
            r3.zza(r4, r9)     // Catch:{ all -> 0x09c8 }
        L_0x096d:
            com.google.android.gms.internal.id r3 = r38.zzaws()     // Catch:{ all -> 0x09c8 }
            java.util.List<java.lang.Long> r1 = r1.f3271b     // Catch:{ all -> 0x09c8 }
            r3.zzah(r1)     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.id r1 = r38.zzaws()     // Catch:{ all -> 0x09c8 }
            android.database.sqlite.SQLiteDatabase r3 = r1.b()     // Catch:{ all -> 0x09c8 }
            java.lang.String r4 = "delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)"
            r5 = 2
            java.lang.String[] r5 = new java.lang.String[r5]     // Catch:{ SQLiteException -> 0x098d }
            r6 = 0
            r5[r6] = r2     // Catch:{ SQLiteException -> 0x098d }
            r6 = 1
            r5[r6] = r2     // Catch:{ SQLiteException -> 0x098d }
            r3.execSQL(r4, r5)     // Catch:{ SQLiteException -> 0x098d }
            goto L_0x09a0
        L_0x098d:
            r0 = move-exception
            r3 = r0
            com.google.android.gms.internal.iz r1 = r1.zzawy()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.jb r1 = r1.zzazd()     // Catch:{ all -> 0x09c8 }
            java.lang.String r4 = "Failed to remove unused event metadata. appId"
            java.lang.Object r2 = com.google.android.gms.internal.iz.a((java.lang.String) r2)     // Catch:{ all -> 0x09c8 }
            r1.zze(r4, r2, r3)     // Catch:{ all -> 0x09c8 }
        L_0x09a0:
            com.google.android.gms.internal.id r1 = r38.zzaws()     // Catch:{ all -> 0x09c8 }
            r1.setTransactionSuccessful()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.id r1 = r38.zzaws()
            r1.endTransaction()
            r1 = 1
            return r1
        L_0x09b0:
            com.google.android.gms.internal.id r1 = r38.zzaws()     // Catch:{ all -> 0x09c8 }
            r1.setTransactionSuccessful()     // Catch:{ all -> 0x09c8 }
            com.google.android.gms.internal.id r1 = r38.zzaws()
            r1.endTransaction()
            r1 = 0
            return r1
        L_0x09c0:
            r0 = move-exception
        L_0x09c1:
            r1 = r0
        L_0x09c2:
            if (r6 == 0) goto L_0x09c7
            r6.close()     // Catch:{ all -> 0x09c8 }
        L_0x09c7:
            throw r1     // Catch:{ all -> 0x09c8 }
        L_0x09c8:
            r0 = move-exception
            r1 = r0
            com.google.android.gms.internal.id r2 = r38.zzaws()
            r2.endTransaction()
            goto L_0x09d3
        L_0x09d2:
            throw r1
        L_0x09d3:
            goto L_0x09d2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.jx.a(long):boolean");
    }

    private static boolean a(nl nlVar, String str, Object obj) {
        if (!TextUtils.isEmpty(str) && obj != null) {
            for (nm nmVar : nlVar.zzjlh) {
                if (str.equals(nmVar.name)) {
                    return (obj instanceof Long) && obj.equals(nmVar.zzjll);
                }
            }
        }
        return false;
    }

    private final nk[] a(String str, nq[] nqVarArr, nl[] nlVarArr) {
        ap.zzgm(str);
        return zzawl().a(str, nlVarArr, nqVarArr);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:134:0x0533, code lost:
        r0 = true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void b(com.google.android.gms.internal.zzcha r33, com.google.android.gms.internal.zzcgi r34) {
        /*
            r32 = this;
            r11 = r32
            r0 = r33
            r12 = r34
            com.google.android.gms.common.internal.ap.checkNotNull(r34)
            java.lang.String r1 = r12.packageName
            com.google.android.gms.common.internal.ap.zzgm(r1)
            long r13 = java.lang.System.nanoTime()
            com.google.android.gms.internal.js r1 = r32.zzawx()
            r1.zzve()
            r32.a()
            java.lang.String r15 = r12.packageName
            r32.zzawu()
            boolean r1 = com.google.android.gms.internal.na.a((com.google.android.gms.internal.zzcha) r33, (com.google.android.gms.internal.zzcgi) r34)
            if (r1 != 0) goto L_0x0028
            return
        L_0x0028:
            boolean r1 = r12.zzixx
            if (r1 != 0) goto L_0x0030
            r11.b((com.google.android.gms.internal.zzcgi) r12)
            return
        L_0x0030:
            com.google.android.gms.internal.jr r1 = r32.zzawv()
            java.lang.String r2 = r0.name
            boolean r1 = r1.b(r15, r2)
            java.lang.String r2 = "_err"
            r10 = 0
            r29 = 1
            if (r1 == 0) goto L_0x00d0
            com.google.android.gms.internal.iz r1 = r32.zzawy()
            com.google.android.gms.internal.jb r1 = r1.zzazf()
            java.lang.Object r3 = com.google.android.gms.internal.iz.a((java.lang.String) r15)
            com.google.android.gms.internal.ix r4 = r32.zzawt()
            java.lang.String r5 = r0.name
            java.lang.String r4 = r4.a((java.lang.String) r5)
            java.lang.String r5 = "Dropping blacklisted event. appId"
            r1.zze(r5, r3, r4)
            com.google.android.gms.internal.na r1 = r32.zzawu()
            boolean r1 = r1.d(r15)
            if (r1 != 0) goto L_0x0073
            com.google.android.gms.internal.na r1 = r32.zzawu()
            boolean r1 = r1.e(r15)
            if (r1 == 0) goto L_0x0071
            goto L_0x0073
        L_0x0071:
            r29 = 0
        L_0x0073:
            if (r29 != 0) goto L_0x008c
            java.lang.String r1 = r0.name
            boolean r1 = r2.equals(r1)
            if (r1 != 0) goto L_0x008c
            com.google.android.gms.internal.na r2 = r32.zzawu()
            r4 = 11
            java.lang.String r6 = r0.name
            r7 = 0
            java.lang.String r5 = "_ev"
            r3 = r15
            r2.zza((java.lang.String) r3, (int) r4, (java.lang.String) r5, (java.lang.String) r6, (int) r7)
        L_0x008c:
            if (r29 == 0) goto L_0x00cf
            com.google.android.gms.internal.id r0 = r32.zzaws()
            com.google.android.gms.internal.hy r0 = r0.zzjb(r15)
            if (r0 == 0) goto L_0x00cf
            long r1 = r0.zzaxn()
            long r3 = r0.zzaxm()
            long r1 = java.lang.Math.max(r1, r3)
            com.google.android.gms.common.util.d r3 = r11.s
            long r3 = r3.currentTimeMillis()
            long r3 = r3 - r1
            long r1 = java.lang.Math.abs(r3)
            com.google.android.gms.internal.iq<java.lang.Long> r3 = com.google.android.gms.internal.ip.zzjbc
            java.lang.Object r3 = r3.get()
            java.lang.Long r3 = (java.lang.Long) r3
            long r3 = r3.longValue()
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L_0x00cf
            com.google.android.gms.internal.iz r1 = r32.zzawy()
            com.google.android.gms.internal.jb r1 = r1.zzazi()
            java.lang.String r2 = "Fetching config for blacklisted app"
            r1.log(r2)
            r11.a((com.google.android.gms.internal.hy) r0)
        L_0x00cf:
            return
        L_0x00d0:
            com.google.android.gms.internal.iz r1 = r32.zzawy()
            r9 = 2
            boolean r1 = r1.a((int) r9)
            if (r1 == 0) goto L_0x00f0
            com.google.android.gms.internal.iz r1 = r32.zzawy()
            com.google.android.gms.internal.jb r1 = r1.zzazj()
            com.google.android.gms.internal.ix r3 = r32.zzawt()
            java.lang.String r3 = r3.a((com.google.android.gms.internal.zzcha) r0)
            java.lang.String r4 = "Logging event"
            r1.zzj(r4, r3)
        L_0x00f0:
            com.google.android.gms.internal.id r1 = r32.zzaws()
            r1.beginTransaction()
            r11.b((com.google.android.gms.internal.zzcgi) r12)     // Catch:{ all -> 0x05dc }
            java.lang.String r1 = "_iap"
            java.lang.String r3 = r0.name     // Catch:{ all -> 0x05dc }
            boolean r1 = r1.equals(r3)     // Catch:{ all -> 0x05dc }
            if (r1 != 0) goto L_0x010e
            java.lang.String r1 = "ecommerce_purchase"
            java.lang.String r3 = r0.name     // Catch:{ all -> 0x05dc }
            boolean r1 = r1.equals(r3)     // Catch:{ all -> 0x05dc }
            if (r1 == 0) goto L_0x0123
        L_0x010e:
            boolean r1 = r11.a((java.lang.String) r15, (com.google.android.gms.internal.zzcha) r0)     // Catch:{ all -> 0x05dc }
            if (r1 != 0) goto L_0x0123
            com.google.android.gms.internal.id r0 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            r0.setTransactionSuccessful()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.id r0 = r32.zzaws()
            r0.endTransaction()
            return
        L_0x0123:
            java.lang.String r1 = r0.name     // Catch:{ all -> 0x05dc }
            boolean r16 = com.google.android.gms.internal.na.a((java.lang.String) r1)     // Catch:{ all -> 0x05dc }
            java.lang.String r1 = r0.name     // Catch:{ all -> 0x05dc }
            boolean r1 = r2.equals(r1)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.id r2 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            long r3 = r32.j()     // Catch:{ all -> 0x05dc }
            r6 = 1
            r8 = 0
            r17 = 0
            r5 = r15
            r7 = r16
            r9 = r1
            r30 = r13
            r13 = 0
            r10 = r17
            com.google.android.gms.internal.ie r2 = r2.zza(r3, r5, r6, r7, r8, r9, r10)     // Catch:{ all -> 0x05dc }
            long r3 = r2.f3204b     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.iq<java.lang.Integer> r5 = com.google.android.gms.internal.ip.zzjan     // Catch:{ all -> 0x05dc }
            java.lang.Object r5 = r5.get()     // Catch:{ all -> 0x05dc }
            java.lang.Integer r5 = (java.lang.Integer) r5     // Catch:{ all -> 0x05dc }
            int r5 = r5.intValue()     // Catch:{ all -> 0x05dc }
            long r5 = (long) r5     // Catch:{ all -> 0x05dc }
            long r3 = r3 - r5
            r5 = 1000(0x3e8, double:4.94E-321)
            r7 = 1
            r9 = 0
            int r14 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r14 <= 0) goto L_0x018d
            long r3 = r3 % r5
            int r0 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r0 != 0) goto L_0x017e
            com.google.android.gms.internal.iz r0 = r32.zzawy()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.jb r0 = r0.zzazd()     // Catch:{ all -> 0x05dc }
            java.lang.String r1 = "Data loss. Too many events logged. appId, count"
            java.lang.Object r3 = com.google.android.gms.internal.iz.a((java.lang.String) r15)     // Catch:{ all -> 0x05dc }
            long r4 = r2.f3204b     // Catch:{ all -> 0x05dc }
            java.lang.Long r2 = java.lang.Long.valueOf(r4)     // Catch:{ all -> 0x05dc }
            r0.zze(r1, r3, r2)     // Catch:{ all -> 0x05dc }
        L_0x017e:
            com.google.android.gms.internal.id r0 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            r0.setTransactionSuccessful()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.id r0 = r32.zzaws()
            r0.endTransaction()
            return
        L_0x018d:
            if (r16 == 0) goto L_0x01dd
            long r3 = r2.f3203a     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.iq<java.lang.Integer> r14 = com.google.android.gms.internal.ip.zzjap     // Catch:{ all -> 0x05dc }
            java.lang.Object r14 = r14.get()     // Catch:{ all -> 0x05dc }
            java.lang.Integer r14 = (java.lang.Integer) r14     // Catch:{ all -> 0x05dc }
            int r14 = r14.intValue()     // Catch:{ all -> 0x05dc }
            long r13 = (long) r14     // Catch:{ all -> 0x05dc }
            long r3 = r3 - r13
            int r13 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r13 <= 0) goto L_0x01dd
            long r3 = r3 % r5
            int r1 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r1 != 0) goto L_0x01bf
            com.google.android.gms.internal.iz r1 = r32.zzawy()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.jb r1 = r1.zzazd()     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = "Data loss. Too many public events logged. appId, count"
            java.lang.Object r4 = com.google.android.gms.internal.iz.a((java.lang.String) r15)     // Catch:{ all -> 0x05dc }
            long r5 = r2.f3203a     // Catch:{ all -> 0x05dc }
            java.lang.Long r2 = java.lang.Long.valueOf(r5)     // Catch:{ all -> 0x05dc }
            r1.zze(r3, r4, r2)     // Catch:{ all -> 0x05dc }
        L_0x01bf:
            com.google.android.gms.internal.na r2 = r32.zzawu()     // Catch:{ all -> 0x05dc }
            r4 = 16
            java.lang.String r5 = "_ev"
            java.lang.String r6 = r0.name     // Catch:{ all -> 0x05dc }
            r7 = 0
            r3 = r15
            r2.zza((java.lang.String) r3, (int) r4, (java.lang.String) r5, (java.lang.String) r6, (int) r7)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.id r0 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            r0.setTransactionSuccessful()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.id r0 = r32.zzaws()
            r0.endTransaction()
            return
        L_0x01dd:
            if (r1 == 0) goto L_0x0227
            long r3 = r2.d     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.ic r1 = r11.g     // Catch:{ all -> 0x05dc }
            java.lang.String r5 = r12.packageName     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.iq<java.lang.Integer> r6 = com.google.android.gms.internal.ip.zzjao     // Catch:{ all -> 0x05dc }
            int r1 = r1.zzb(r5, r6)     // Catch:{ all -> 0x05dc }
            r5 = 1000000(0xf4240, float:1.401298E-39)
            int r1 = java.lang.Math.min(r5, r1)     // Catch:{ all -> 0x05dc }
            r13 = 0
            int r1 = java.lang.Math.max(r13, r1)     // Catch:{ all -> 0x05dc }
            long r5 = (long) r1     // Catch:{ all -> 0x05dc }
            long r3 = r3 - r5
            int r1 = (r3 > r9 ? 1 : (r3 == r9 ? 0 : -1))
            if (r1 <= 0) goto L_0x0228
            int r0 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r0 != 0) goto L_0x0218
            com.google.android.gms.internal.iz r0 = r32.zzawy()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.jb r0 = r0.zzazd()     // Catch:{ all -> 0x05dc }
            java.lang.String r1 = "Too many error events logged. appId, count"
            java.lang.Object r3 = com.google.android.gms.internal.iz.a((java.lang.String) r15)     // Catch:{ all -> 0x05dc }
            long r4 = r2.d     // Catch:{ all -> 0x05dc }
            java.lang.Long r2 = java.lang.Long.valueOf(r4)     // Catch:{ all -> 0x05dc }
            r0.zze(r1, r3, r2)     // Catch:{ all -> 0x05dc }
        L_0x0218:
            com.google.android.gms.internal.id r0 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            r0.setTransactionSuccessful()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.id r0 = r32.zzaws()
            r0.endTransaction()
            return
        L_0x0227:
            r13 = 0
        L_0x0228:
            com.google.android.gms.internal.zzcgx r1 = r0.zzizt     // Catch:{ all -> 0x05dc }
            android.os.Bundle r14 = r1.zzayx()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.na r1 = r32.zzawu()     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = "_o"
            java.lang.String r3 = r0.zziyf     // Catch:{ all -> 0x05dc }
            r1.zza((android.os.Bundle) r14, (java.lang.String) r2, (java.lang.Object) r3)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.na r1 = r32.zzawu()     // Catch:{ all -> 0x05dc }
            boolean r1 = r1.zzkj(r15)     // Catch:{ all -> 0x05dc }
            java.lang.String r6 = "_r"
            if (r1 == 0) goto L_0x025d
            com.google.android.gms.internal.na r1 = r32.zzawu()     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = "_dbg"
            java.lang.Long r3 = java.lang.Long.valueOf(r7)     // Catch:{ all -> 0x05dc }
            r1.zza((android.os.Bundle) r14, (java.lang.String) r2, (java.lang.Object) r3)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.na r1 = r32.zzawu()     // Catch:{ all -> 0x05dc }
            java.lang.Long r2 = java.lang.Long.valueOf(r7)     // Catch:{ all -> 0x05dc }
            r1.zza((android.os.Bundle) r14, (java.lang.String) r6, (java.lang.Object) r2)     // Catch:{ all -> 0x05dc }
        L_0x025d:
            com.google.android.gms.internal.id r1 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            long r1 = r1.zzjc(r15)     // Catch:{ all -> 0x05dc }
            int r3 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1))
            if (r3 <= 0) goto L_0x027e
            com.google.android.gms.internal.iz r3 = r32.zzawy()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.jb r3 = r3.zzazf()     // Catch:{ all -> 0x05dc }
            java.lang.String r4 = "Data lost. Too many events stored on disk, deleted. appId"
            java.lang.Object r5 = com.google.android.gms.internal.iz.a((java.lang.String) r15)     // Catch:{ all -> 0x05dc }
            java.lang.Long r1 = java.lang.Long.valueOf(r1)     // Catch:{ all -> 0x05dc }
            r3.zze(r4, r5, r1)     // Catch:{ all -> 0x05dc }
        L_0x027e:
            com.google.android.gms.internal.ik r8 = new com.google.android.gms.internal.ik     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = r0.zziyf     // Catch:{ all -> 0x05dc }
            java.lang.String r5 = r0.name     // Catch:{ all -> 0x05dc }
            long r0 = r0.zzizu     // Catch:{ all -> 0x05dc }
            r17 = 0
            r19 = r0
            r1 = r8
            r2 = r32
            r4 = r15
            r0 = r6
            r6 = r19
            r10 = r8
            r8 = r17
            r13 = r10
            r10 = r14
            r1.<init>((com.google.android.gms.internal.jx) r2, (java.lang.String) r3, (java.lang.String) r4, (java.lang.String) r5, (long) r6, (long) r8, (android.os.Bundle) r10)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.id r1 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = r13.f3212b     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.il r1 = r1.zzae(r15, r2)     // Catch:{ all -> 0x05dc }
            if (r1 != 0) goto L_0x0309
            com.google.android.gms.internal.id r1 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            long r1 = r1.zzjf(r15)     // Catch:{ all -> 0x05dc }
            r3 = 500(0x1f4, double:2.47E-321)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 < 0) goto L_0x02eb
            if (r16 == 0) goto L_0x02eb
            com.google.android.gms.internal.iz r0 = r32.zzawy()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.jb r0 = r0.zzazd()     // Catch:{ all -> 0x05dc }
            java.lang.String r1 = "Too many event names used, ignoring event. appId, name, supported count"
            java.lang.Object r2 = com.google.android.gms.internal.iz.a((java.lang.String) r15)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.ix r3 = r32.zzawt()     // Catch:{ all -> 0x05dc }
            java.lang.String r4 = r13.f3212b     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = r3.a((java.lang.String) r4)     // Catch:{ all -> 0x05dc }
            r4 = 500(0x1f4, float:7.0E-43)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ all -> 0x05dc }
            r0.zzd(r1, r2, r3, r4)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.na r2 = r32.zzawu()     // Catch:{ all -> 0x05dc }
            r4 = 8
            r5 = 0
            r6 = 0
            r7 = 0
            r3 = r15
            r2.zza((java.lang.String) r3, (int) r4, (java.lang.String) r5, (java.lang.String) r6, (int) r7)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.id r0 = r32.zzaws()
            r0.endTransaction()
            return
        L_0x02eb:
            com.google.android.gms.internal.il r1 = new com.google.android.gms.internal.il     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = r13.f3212b     // Catch:{ all -> 0x05dc }
            r18 = 0
            r20 = 0
            long r3 = r13.c     // Catch:{ all -> 0x05dc }
            r24 = 0
            r26 = 0
            r27 = 0
            r28 = 0
            r5 = r15
            r15 = r1
            r16 = r5
            r17 = r2
            r22 = r3
            r15.<init>(r16, r17, r18, r20, r22, r24, r26, r27, r28)     // Catch:{ all -> 0x05dc }
            goto L_0x0316
        L_0x0309:
            long r2 = r1.e     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.ik r8 = r13.a((com.google.android.gms.internal.jx) r11, (long) r2)     // Catch:{ all -> 0x05dc }
            long r2 = r8.c     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.il r1 = r1.a(r2)     // Catch:{ all -> 0x05dc }
            r13 = r8
        L_0x0316:
            com.google.android.gms.internal.id r2 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            r2.zza((com.google.android.gms.internal.il) r1)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.js r1 = r32.zzawx()     // Catch:{ all -> 0x05dc }
            r1.zzve()     // Catch:{ all -> 0x05dc }
            r32.a()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.common.internal.ap.checkNotNull(r13)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.common.internal.ap.checkNotNull(r34)     // Catch:{ all -> 0x05dc }
            java.lang.String r1 = r13.f3211a     // Catch:{ all -> 0x05dc }
            com.google.android.gms.common.internal.ap.zzgm(r1)     // Catch:{ all -> 0x05dc }
            java.lang.String r1 = r13.f3211a     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = r12.packageName     // Catch:{ all -> 0x05dc }
            boolean r1 = r1.equals(r2)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.common.internal.ap.checkArgument(r1)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.no r1 = new com.google.android.gms.internal.no     // Catch:{ all -> 0x05dc }
            r1.<init>()     // Catch:{ all -> 0x05dc }
            java.lang.Integer r2 = java.lang.Integer.valueOf(r29)     // Catch:{ all -> 0x05dc }
            r1.zzjlo = r2     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = "android"
            r1.zzjlw = r2     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = r12.packageName     // Catch:{ all -> 0x05dc }
            r1.zzcn = r2     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = r12.zzixt     // Catch:{ all -> 0x05dc }
            r1.zzixt = r2     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = r12.zzifm     // Catch:{ all -> 0x05dc }
            r1.zzifm = r2     // Catch:{ all -> 0x05dc }
            long r2 = r12.zzixz     // Catch:{ all -> 0x05dc }
            r4 = -2147483648(0xffffffff80000000, double:NaN)
            r6 = 0
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 != 0) goto L_0x0364
            r2 = r6
            goto L_0x036b
        L_0x0364:
            long r2 = r12.zzixz     // Catch:{ all -> 0x05dc }
            int r3 = (int) r2     // Catch:{ all -> 0x05dc }
            java.lang.Integer r2 = java.lang.Integer.valueOf(r3)     // Catch:{ all -> 0x05dc }
        L_0x036b:
            r1.zzjmj = r2     // Catch:{ all -> 0x05dc }
            long r2 = r12.zzixu     // Catch:{ all -> 0x05dc }
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x05dc }
            r1.zzjma = r2     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = r12.zzixs     // Catch:{ all -> 0x05dc }
            r1.zzixs = r2     // Catch:{ all -> 0x05dc }
            long r2 = r12.zzixv     // Catch:{ all -> 0x05dc }
            r4 = 0
            int r7 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r7 != 0) goto L_0x0383
            r2 = r6
            goto L_0x0389
        L_0x0383:
            long r2 = r12.zzixv     // Catch:{ all -> 0x05dc }
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x05dc }
        L_0x0389:
            r1.zzjmf = r2     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.jj r2 = r32.zzawz()     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = r12.packageName     // Catch:{ all -> 0x05dc }
            android.util.Pair r2 = r2.a((java.lang.String) r3)     // Catch:{ all -> 0x05dc }
            java.lang.Object r3 = r2.first     // Catch:{ all -> 0x05dc }
            java.lang.CharSequence r3 = (java.lang.CharSequence) r3     // Catch:{ all -> 0x05dc }
            boolean r3 = android.text.TextUtils.isEmpty(r3)     // Catch:{ all -> 0x05dc }
            if (r3 != 0) goto L_0x03b0
            boolean r3 = r12.zziye     // Catch:{ all -> 0x05dc }
            if (r3 == 0) goto L_0x03fb
            java.lang.Object r3 = r2.first     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = (java.lang.String) r3     // Catch:{ all -> 0x05dc }
            r1.zzjmc = r3     // Catch:{ all -> 0x05dc }
            java.lang.Object r2 = r2.second     // Catch:{ all -> 0x05dc }
            java.lang.Boolean r2 = (java.lang.Boolean) r2     // Catch:{ all -> 0x05dc }
            r1.zzjmd = r2     // Catch:{ all -> 0x05dc }
            goto L_0x03fb
        L_0x03b0:
            com.google.android.gms.internal.ij r2 = r32.zzawo()     // Catch:{ all -> 0x05dc }
            android.content.Context r3 = r11.f     // Catch:{ all -> 0x05dc }
            boolean r2 = r2.zzdw(r3)     // Catch:{ all -> 0x05dc }
            if (r2 != 0) goto L_0x03fb
            android.content.Context r2 = r11.f     // Catch:{ all -> 0x05dc }
            android.content.ContentResolver r2 = r2.getContentResolver()     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = "android_id"
            java.lang.String r2 = android.provider.Settings.Secure.getString(r2, r3)     // Catch:{ all -> 0x05dc }
            if (r2 != 0) goto L_0x03e0
            com.google.android.gms.internal.iz r2 = r32.zzawy()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.jb r2 = r2.zzazf()     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = "null secure ID. appId"
            java.lang.String r7 = r1.zzcn     // Catch:{ all -> 0x05dc }
            java.lang.Object r7 = com.google.android.gms.internal.iz.a((java.lang.String) r7)     // Catch:{ all -> 0x05dc }
            r2.zzj(r3, r7)     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = "null"
            goto L_0x03f9
        L_0x03e0:
            boolean r3 = r2.isEmpty()     // Catch:{ all -> 0x05dc }
            if (r3 == 0) goto L_0x03f9
            com.google.android.gms.internal.iz r3 = r32.zzawy()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.jb r3 = r3.zzazf()     // Catch:{ all -> 0x05dc }
            java.lang.String r7 = "empty secure ID. appId"
            java.lang.String r8 = r1.zzcn     // Catch:{ all -> 0x05dc }
            java.lang.Object r8 = com.google.android.gms.internal.iz.a((java.lang.String) r8)     // Catch:{ all -> 0x05dc }
            r3.zzj(r7, r8)     // Catch:{ all -> 0x05dc }
        L_0x03f9:
            r1.zzjmm = r2     // Catch:{ all -> 0x05dc }
        L_0x03fb:
            com.google.android.gms.internal.ij r2 = r32.zzawo()     // Catch:{ all -> 0x05dc }
            r2.k()     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = android.os.Build.MODEL     // Catch:{ all -> 0x05dc }
            r1.zzjlx = r2     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.ij r2 = r32.zzawo()     // Catch:{ all -> 0x05dc }
            r2.k()     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = android.os.Build.VERSION.RELEASE     // Catch:{ all -> 0x05dc }
            r1.zzdb = r2     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.ij r2 = r32.zzawo()     // Catch:{ all -> 0x05dc }
            long r2 = r2.zzayu()     // Catch:{ all -> 0x05dc }
            int r3 = (int) r2     // Catch:{ all -> 0x05dc }
            java.lang.Integer r2 = java.lang.Integer.valueOf(r3)     // Catch:{ all -> 0x05dc }
            r1.zzjlz = r2     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.ij r2 = r32.zzawo()     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = r2.zzayv()     // Catch:{ all -> 0x05dc }
            r1.zzjly = r2     // Catch:{ all -> 0x05dc }
            r1.zzjmb = r6     // Catch:{ all -> 0x05dc }
            r1.zzjlr = r6     // Catch:{ all -> 0x05dc }
            r1.zzjls = r6     // Catch:{ all -> 0x05dc }
            r1.zzjlt = r6     // Catch:{ all -> 0x05dc }
            long r2 = r12.zziyb     // Catch:{ all -> 0x05dc }
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x05dc }
            r1.zzfkk = r2     // Catch:{ all -> 0x05dc }
            boolean r2 = r32.isEnabled()     // Catch:{ all -> 0x05dc }
            if (r2 == 0) goto L_0x044b
            boolean r2 = com.google.android.gms.internal.ic.zzaye()     // Catch:{ all -> 0x05dc }
            if (r2 == 0) goto L_0x044b
            r32.zzawn()     // Catch:{ all -> 0x05dc }
            r1.zzjmo = r6     // Catch:{ all -> 0x05dc }
        L_0x044b:
            com.google.android.gms.internal.id r2 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = r12.packageName     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.hy r2 = r2.zzjb(r3)     // Catch:{ all -> 0x05dc }
            if (r2 != 0) goto L_0x04b3
            com.google.android.gms.internal.hy r2 = new com.google.android.gms.internal.hy     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = r12.packageName     // Catch:{ all -> 0x05dc }
            r2.<init>(r11, r3)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.iu r3 = r32.zzawn()     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = r3.c()     // Catch:{ all -> 0x05dc }
            r2.zzir(r3)     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = r12.zziya     // Catch:{ all -> 0x05dc }
            r2.zziu(r3)     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = r12.zzixs     // Catch:{ all -> 0x05dc }
            r2.zzis(r3)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.jj r3 = r32.zzawz()     // Catch:{ all -> 0x05dc }
            java.lang.String r6 = r12.packageName     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = r3.b((java.lang.String) r6)     // Catch:{ all -> 0x05dc }
            r2.zzit(r3)     // Catch:{ all -> 0x05dc }
            r2.zzaq(r4)     // Catch:{ all -> 0x05dc }
            r2.zzal(r4)     // Catch:{ all -> 0x05dc }
            r2.zzam(r4)     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = r12.zzifm     // Catch:{ all -> 0x05dc }
            r2.setAppVersion(r3)     // Catch:{ all -> 0x05dc }
            long r6 = r12.zzixz     // Catch:{ all -> 0x05dc }
            r2.zzan(r6)     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = r12.zzixt     // Catch:{ all -> 0x05dc }
            r2.zziv(r3)     // Catch:{ all -> 0x05dc }
            long r6 = r12.zzixu     // Catch:{ all -> 0x05dc }
            r2.zzao(r6)     // Catch:{ all -> 0x05dc }
            long r6 = r12.zzixv     // Catch:{ all -> 0x05dc }
            r2.zzap(r6)     // Catch:{ all -> 0x05dc }
            boolean r3 = r12.zzixx     // Catch:{ all -> 0x05dc }
            r2.setMeasurementEnabled(r3)     // Catch:{ all -> 0x05dc }
            long r6 = r12.zziyb     // Catch:{ all -> 0x05dc }
            r2.zzaz(r6)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.id r3 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            r3.zza((com.google.android.gms.internal.hy) r2)     // Catch:{ all -> 0x05dc }
        L_0x04b3:
            java.lang.String r3 = r2.getAppInstanceId()     // Catch:{ all -> 0x05dc }
            r1.zzjme = r3     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = r2.zzaxd()     // Catch:{ all -> 0x05dc }
            r1.zziya = r2     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.id r2 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = r12.packageName     // Catch:{ all -> 0x05dc }
            java.util.List r2 = r2.zzja(r3)     // Catch:{ all -> 0x05dc }
            int r3 = r2.size()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.nq[] r3 = new com.google.android.gms.internal.nq[r3]     // Catch:{ all -> 0x05dc }
            r1.zzjlq = r3     // Catch:{ all -> 0x05dc }
            r3 = 0
        L_0x04d2:
            int r6 = r2.size()     // Catch:{ all -> 0x05dc }
            if (r3 >= r6) goto L_0x050b
            com.google.android.gms.internal.nq r6 = new com.google.android.gms.internal.nq     // Catch:{ all -> 0x05dc }
            r6.<init>()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.nq[] r7 = r1.zzjlq     // Catch:{ all -> 0x05dc }
            r7[r3] = r6     // Catch:{ all -> 0x05dc }
            java.lang.Object r7 = r2.get(r3)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.mz r7 = (com.google.android.gms.internal.mz) r7     // Catch:{ all -> 0x05dc }
            java.lang.String r7 = r7.c     // Catch:{ all -> 0x05dc }
            r6.name = r7     // Catch:{ all -> 0x05dc }
            java.lang.Object r7 = r2.get(r3)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.mz r7 = (com.google.android.gms.internal.mz) r7     // Catch:{ all -> 0x05dc }
            long r7 = r7.d     // Catch:{ all -> 0x05dc }
            java.lang.Long r7 = java.lang.Long.valueOf(r7)     // Catch:{ all -> 0x05dc }
            r6.zzjms = r7     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.na r7 = r32.zzawu()     // Catch:{ all -> 0x05dc }
            java.lang.Object r8 = r2.get(r3)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.mz r8 = (com.google.android.gms.internal.mz) r8     // Catch:{ all -> 0x05dc }
            java.lang.Object r8 = r8.e     // Catch:{ all -> 0x05dc }
            r7.zza((com.google.android.gms.internal.nq) r6, (java.lang.Object) r8)     // Catch:{ all -> 0x05dc }
            int r3 = r3 + 1
            goto L_0x04d2
        L_0x050b:
            com.google.android.gms.internal.id r2 = r32.zzaws()     // Catch:{ IOException -> 0x0577 }
            long r1 = r2.zza((com.google.android.gms.internal.no) r1)     // Catch:{ IOException -> 0x0577 }
            com.google.android.gms.internal.id r3 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.zzcgx r6 = r13.e     // Catch:{ all -> 0x05dc }
            if (r6 == 0) goto L_0x056d
            com.google.android.gms.internal.zzcgx r6 = r13.e     // Catch:{ all -> 0x05dc }
            java.util.Iterator r6 = r6.iterator()     // Catch:{ all -> 0x05dc }
        L_0x0521:
            boolean r7 = r6.hasNext()     // Catch:{ all -> 0x05dc }
            if (r7 == 0) goto L_0x0535
            java.lang.Object r7 = r6.next()     // Catch:{ all -> 0x05dc }
            java.lang.String r7 = (java.lang.String) r7     // Catch:{ all -> 0x05dc }
            boolean r7 = r0.equals(r7)     // Catch:{ all -> 0x05dc }
            if (r7 == 0) goto L_0x0521
        L_0x0533:
            r0 = 1
            goto L_0x056e
        L_0x0535:
            com.google.android.gms.internal.jr r0 = r32.zzawv()     // Catch:{ all -> 0x05dc }
            java.lang.String r6 = r13.f3211a     // Catch:{ all -> 0x05dc }
            java.lang.String r7 = r13.f3212b     // Catch:{ all -> 0x05dc }
            boolean r0 = r0.c(r6, r7)     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.id r14 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            long r15 = r32.j()     // Catch:{ all -> 0x05dc }
            java.lang.String r6 = r13.f3211a     // Catch:{ all -> 0x05dc }
            r18 = 0
            r19 = 0
            r20 = 0
            r21 = 0
            r22 = 0
            r17 = r6
            com.google.android.gms.internal.ie r6 = r14.zza(r15, r17, r18, r19, r20, r21, r22)     // Catch:{ all -> 0x05dc }
            if (r0 == 0) goto L_0x056d
            long r6 = r6.e     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.ic r0 = r11.g     // Catch:{ all -> 0x05dc }
            java.lang.String r8 = r13.f3211a     // Catch:{ all -> 0x05dc }
            int r0 = r0.zzix(r8)     // Catch:{ all -> 0x05dc }
            long r8 = (long) r0     // Catch:{ all -> 0x05dc }
            int r0 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r0 >= 0) goto L_0x056d
            goto L_0x0533
        L_0x056d:
            r0 = 0
        L_0x056e:
            boolean r0 = r3.zza(r13, r1, r0)     // Catch:{ all -> 0x05dc }
            if (r0 == 0) goto L_0x058b
            r11.L = r4     // Catch:{ all -> 0x05dc }
            goto L_0x058b
        L_0x0577:
            r0 = move-exception
            com.google.android.gms.internal.iz r2 = r32.zzawy()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.jb r2 = r2.zzazd()     // Catch:{ all -> 0x05dc }
            java.lang.String r3 = "Data loss. Failed to insert raw event metadata. appId"
            java.lang.String r1 = r1.zzcn     // Catch:{ all -> 0x05dc }
            java.lang.Object r1 = com.google.android.gms.internal.iz.a((java.lang.String) r1)     // Catch:{ all -> 0x05dc }
            r2.zze(r3, r1, r0)     // Catch:{ all -> 0x05dc }
        L_0x058b:
            com.google.android.gms.internal.id r0 = r32.zzaws()     // Catch:{ all -> 0x05dc }
            r0.setTransactionSuccessful()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.iz r0 = r32.zzawy()     // Catch:{ all -> 0x05dc }
            r1 = 2
            boolean r0 = r0.a((int) r1)     // Catch:{ all -> 0x05dc }
            if (r0 == 0) goto L_0x05b2
            com.google.android.gms.internal.iz r0 = r32.zzawy()     // Catch:{ all -> 0x05dc }
            com.google.android.gms.internal.jb r0 = r0.zzazj()     // Catch:{ all -> 0x05dc }
            java.lang.String r1 = "Event recorded"
            com.google.android.gms.internal.ix r2 = r32.zzawt()     // Catch:{ all -> 0x05dc }
            java.lang.String r2 = r2.a((com.google.android.gms.internal.ik) r13)     // Catch:{ all -> 0x05dc }
            r0.zzj(r1, r2)     // Catch:{ all -> 0x05dc }
        L_0x05b2:
            com.google.android.gms.internal.id r0 = r32.zzaws()
            r0.endTransaction()
            r32.l()
            com.google.android.gms.internal.iz r0 = r32.zzawy()
            com.google.android.gms.internal.jb r0 = r0.zzazj()
            long r1 = java.lang.System.nanoTime()
            long r1 = r1 - r30
            r3 = 500000(0x7a120, double:2.47033E-318)
            long r1 = r1 + r3
            r3 = 1000000(0xf4240, double:4.940656E-318)
            long r1 = r1 / r3
            java.lang.Long r1 = java.lang.Long.valueOf(r1)
            java.lang.String r2 = "Background event processing time, ms"
            r0.zzj(r2, r1)
            return
        L_0x05dc:
            r0 = move-exception
            com.google.android.gms.internal.id r1 = r32.zzaws()
            r1.endTransaction()
            goto L_0x05e6
        L_0x05e5:
            throw r0
        L_0x05e6:
            goto L_0x05e5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.jx.b(com.google.android.gms.internal.zzcha, com.google.android.gms.internal.zzcgi):void");
    }

    static void d() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    private final jh g() {
        jh jhVar = this.y;
        if (jhVar != null) {
            return jhVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    private final mw h() {
        a((kw) this.z);
        return this.z;
    }

    private final boolean i() {
        String str;
        jb jbVar;
        zzawx().zzve();
        try {
            this.H = new RandomAccessFile(new File(this.f.getFilesDir(), "google_app_measurement.db"), "rw").getChannel();
            this.G = this.H.tryLock();
            if (this.G != null) {
                zzawy().zzazj().log("Storage concurrent access okay");
                return true;
            }
            zzawy().zzazd().log("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e2) {
            e = e2;
            jbVar = zzawy().zzazd();
            str = "Failed to acquire storage lock";
            jbVar.zzj(str, e);
            return false;
        } catch (IOException e3) {
            e = e3;
            jbVar = zzawy().zzazd();
            str = "Failed to access storage lock file";
            jbVar.zzj(str, e);
            return false;
        }
    }

    private final long j() {
        long currentTimeMillis = this.s.currentTimeMillis();
        jj zzawz = zzawz();
        zzawz.k();
        zzawz.zzve();
        long j2 = zzawz.zzjcv.get();
        if (j2 == 0) {
            j2 = 1 + ((long) zzawz.zzawu().c().nextInt(86400000));
            zzawz.zzjcv.set(j2);
        }
        return ((((currentTimeMillis + j2) / 1000) / 60) / 60) / 24;
    }

    private final boolean k() {
        zzawx().zzve();
        a();
        return zzaws().zzayk() || !TextUtils.isEmpty(zzaws().zzayf());
    }

    /* JADX WARNING: Removed duplicated region for block: B:52:0x0166  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x0182  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void l() {
        /*
            r20 = this;
            r0 = r20
            com.google.android.gms.internal.js r1 = r20.zzawx()
            r1.zzve()
            r20.a()
            boolean r1 = r20.m()
            if (r1 != 0) goto L_0x0013
            return
        L_0x0013:
            long r1 = r0.L
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L_0x0052
            com.google.android.gms.common.util.d r1 = r0.s
            long r1 = r1.elapsedRealtime()
            r5 = 3600000(0x36ee80, double:1.7786363E-317)
            long r7 = r0.L
            long r1 = r1 - r7
            long r1 = java.lang.Math.abs(r1)
            long r5 = r5 - r1
            int r1 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r1 <= 0) goto L_0x0050
            com.google.android.gms.internal.iz r1 = r20.zzawy()
            com.google.android.gms.internal.jb r1 = r1.zzazj()
            java.lang.Long r2 = java.lang.Long.valueOf(r5)
            java.lang.String r3 = "Upload has been suspended. Will update scheduling later in approximately ms"
            r1.zzj(r3, r2)
            com.google.android.gms.internal.jh r1 = r20.g()
            r1.unregister()
            com.google.android.gms.internal.mw r1 = r20.h()
            r1.cancel()
            return
        L_0x0050:
            r0.L = r3
        L_0x0052:
            boolean r1 = r20.b()
            if (r1 == 0) goto L_0x021b
            boolean r1 = r20.k()
            if (r1 != 0) goto L_0x0060
            goto L_0x021b
        L_0x0060:
            com.google.android.gms.common.util.d r1 = r0.s
            long r1 = r1.currentTimeMillis()
            com.google.android.gms.internal.iq<java.lang.Long> r5 = com.google.android.gms.internal.ip.zzjbd
            java.lang.Object r5 = r5.get()
            java.lang.Long r5 = (java.lang.Long) r5
            long r5 = r5.longValue()
            long r5 = java.lang.Math.max(r3, r5)
            com.google.android.gms.internal.id r7 = r20.zzaws()
            boolean r7 = r7.zzayl()
            if (r7 != 0) goto L_0x008d
            com.google.android.gms.internal.id r7 = r20.zzaws()
            boolean r7 = r7.zzayg()
            if (r7 == 0) goto L_0x008b
            goto L_0x008d
        L_0x008b:
            r7 = 0
            goto L_0x008e
        L_0x008d:
            r7 = 1
        L_0x008e:
            if (r7 == 0) goto L_0x00aa
            com.google.android.gms.internal.ic r9 = r0.g
            java.lang.String r9 = r9.zzayd()
            boolean r10 = android.text.TextUtils.isEmpty(r9)
            if (r10 != 0) goto L_0x00a7
            java.lang.String r10 = ".none."
            boolean r9 = r10.equals(r9)
            if (r9 != 0) goto L_0x00a7
            com.google.android.gms.internal.iq<java.lang.Long> r9 = com.google.android.gms.internal.ip.zzjay
            goto L_0x00ac
        L_0x00a7:
            com.google.android.gms.internal.iq<java.lang.Long> r9 = com.google.android.gms.internal.ip.zzjax
            goto L_0x00ac
        L_0x00aa:
            com.google.android.gms.internal.iq<java.lang.Long> r9 = com.google.android.gms.internal.ip.zzjaw
        L_0x00ac:
            java.lang.Object r9 = r9.get()
            java.lang.Long r9 = (java.lang.Long) r9
            long r9 = r9.longValue()
            long r9 = java.lang.Math.max(r3, r9)
            com.google.android.gms.internal.jj r11 = r20.zzawz()
            com.google.android.gms.internal.jl r11 = r11.zzjcr
            long r11 = r11.get()
            com.google.android.gms.internal.jj r13 = r20.zzawz()
            com.google.android.gms.internal.jl r13 = r13.zzjcs
            long r13 = r13.get()
            com.google.android.gms.internal.id r15 = r20.zzaws()
            r16 = r9
            long r8 = r15.zzayi()
            com.google.android.gms.internal.id r10 = r20.zzaws()
            r18 = r5
            long r5 = r10.zzayj()
            long r5 = java.lang.Math.max(r8, r5)
            int r8 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r8 != 0) goto L_0x00ed
        L_0x00ea:
            r8 = r3
            goto L_0x0162
        L_0x00ed:
            long r5 = r5 - r1
            long r5 = java.lang.Math.abs(r5)
            long r5 = r1 - r5
            long r11 = r11 - r1
            long r8 = java.lang.Math.abs(r11)
            long r8 = r1 - r8
            long r13 = r13 - r1
            long r10 = java.lang.Math.abs(r13)
            long r1 = r1 - r10
            long r8 = java.lang.Math.max(r8, r1)
            long r10 = r5 + r18
            if (r7 == 0) goto L_0x0113
            int r7 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r7 <= 0) goto L_0x0113
            long r10 = java.lang.Math.min(r5, r8)
            long r10 = r10 + r16
        L_0x0113:
            com.google.android.gms.internal.na r7 = r20.zzawu()
            r12 = r16
            boolean r7 = r7.zzf(r8, r12)
            if (r7 != 0) goto L_0x0121
            long r8 = r8 + r12
            goto L_0x0122
        L_0x0121:
            r8 = r10
        L_0x0122:
            int r7 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r7 == 0) goto L_0x0162
            int r7 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
            if (r7 < 0) goto L_0x0162
            r5 = 0
        L_0x012b:
            r6 = 20
            com.google.android.gms.internal.iq<java.lang.Integer> r7 = com.google.android.gms.internal.ip.zzjbf
            java.lang.Object r7 = r7.get()
            java.lang.Integer r7 = (java.lang.Integer) r7
            int r7 = r7.intValue()
            r10 = 0
            int r7 = java.lang.Math.max(r10, r7)
            int r6 = java.lang.Math.min(r6, r7)
            if (r5 >= r6) goto L_0x00ea
            r6 = 1
            long r6 = r6 << r5
            com.google.android.gms.internal.iq<java.lang.Long> r11 = com.google.android.gms.internal.ip.zzjbe
            java.lang.Object r11 = r11.get()
            java.lang.Long r11 = (java.lang.Long) r11
            long r11 = r11.longValue()
            long r11 = java.lang.Math.max(r3, r11)
            long r11 = r11 * r6
            long r8 = r8 + r11
            int r6 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
            if (r6 <= 0) goto L_0x015f
            goto L_0x0162
        L_0x015f:
            int r5 = r5 + 1
            goto L_0x012b
        L_0x0162:
            int r1 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r1 != 0) goto L_0x0182
            com.google.android.gms.internal.iz r1 = r20.zzawy()
            com.google.android.gms.internal.jb r1 = r1.zzazj()
            java.lang.String r2 = "Next upload time is 0"
            r1.log(r2)
            com.google.android.gms.internal.jh r1 = r20.g()
            r1.unregister()
            com.google.android.gms.internal.mw r1 = r20.h()
            r1.cancel()
            return
        L_0x0182:
            com.google.android.gms.internal.jd r1 = r20.zzbab()
            boolean r1 = r1.zzzs()
            if (r1 != 0) goto L_0x01a8
            com.google.android.gms.internal.iz r1 = r20.zzawy()
            com.google.android.gms.internal.jb r1 = r1.zzazj()
            java.lang.String r2 = "No network"
            r1.log(r2)
            com.google.android.gms.internal.jh r1 = r20.g()
            r1.zzzp()
            com.google.android.gms.internal.mw r1 = r20.h()
            r1.cancel()
            return
        L_0x01a8:
            com.google.android.gms.internal.jj r1 = r20.zzawz()
            com.google.android.gms.internal.jl r1 = r1.zzjct
            long r1 = r1.get()
            com.google.android.gms.internal.iq<java.lang.Long> r5 = com.google.android.gms.internal.ip.zzjau
            java.lang.Object r5 = r5.get()
            java.lang.Long r5 = (java.lang.Long) r5
            long r5 = r5.longValue()
            long r5 = java.lang.Math.max(r3, r5)
            com.google.android.gms.internal.na r7 = r20.zzawu()
            boolean r7 = r7.zzf(r1, r5)
            if (r7 != 0) goto L_0x01d1
            long r1 = r1 + r5
            long r8 = java.lang.Math.max(r8, r1)
        L_0x01d1:
            com.google.android.gms.internal.jh r1 = r20.g()
            r1.unregister()
            com.google.android.gms.common.util.d r1 = r0.s
            long r1 = r1.currentTimeMillis()
            long r8 = r8 - r1
            int r1 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r1 > 0) goto L_0x0202
            com.google.android.gms.internal.iq<java.lang.Long> r1 = com.google.android.gms.internal.ip.zzjaz
            java.lang.Object r1 = r1.get()
            java.lang.Long r1 = (java.lang.Long) r1
            long r1 = r1.longValue()
            long r8 = java.lang.Math.max(r3, r1)
            com.google.android.gms.internal.jj r1 = r20.zzawz()
            com.google.android.gms.internal.jl r1 = r1.zzjcr
            com.google.android.gms.common.util.d r2 = r0.s
            long r2 = r2.currentTimeMillis()
            r1.set(r2)
        L_0x0202:
            com.google.android.gms.internal.iz r1 = r20.zzawy()
            com.google.android.gms.internal.jb r1 = r1.zzazj()
            java.lang.Long r2 = java.lang.Long.valueOf(r8)
            java.lang.String r3 = "Upload scheduled in approximately ms"
            r1.zzj(r3, r2)
            com.google.android.gms.internal.mw r1 = r20.h()
            r1.zzs(r8)
            return
        L_0x021b:
            com.google.android.gms.internal.iz r1 = r20.zzawy()
            com.google.android.gms.internal.jb r1 = r1.zzazj()
            java.lang.String r2 = "Nothing to upload or uploading impossible"
            r1.log(r2)
            com.google.android.gms.internal.jh r1 = r20.g()
            r1.unregister()
            com.google.android.gms.internal.mw r1 = r20.h()
            r1.cancel()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.jx.l():void");
    }

    private final boolean m() {
        zzawx().zzve();
        a();
        return this.D;
    }

    private final void n() {
        zzawx().zzve();
        if (this.M || this.N || this.O) {
            zzawy().zzazj().zzd("Not stopping services. fetch, network, upload", Boolean.valueOf(this.M), Boolean.valueOf(this.N), Boolean.valueOf(this.O));
            return;
        }
        zzawy().zzazj().log("Stopping uploading service(s)");
        List<Runnable> list = this.f3269b;
        if (list != null) {
            for (Runnable run : list) {
                run.run();
            }
            this.f3269b.clear();
        }
    }

    public static jx zzdx(Context context) {
        ap.checkNotNull(context);
        ap.checkNotNull(context.getApplicationContext());
        if (e == null) {
            synchronized (jx.class) {
                if (e == null) {
                    e = new jx(new kx(context));
                }
            }
        }
        return e;
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        if (!this.C) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
    }

    /* access modifiers changed from: protected */
    public final void a(int i2, Throwable th, byte[] bArr) {
        id zzaws;
        zzawx().zzve();
        a();
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } catch (Throwable th2) {
                this.N = false;
                n();
                throw th2;
            }
        }
        List<Long> list = this.I;
        this.I = null;
        boolean z2 = true;
        if ((i2 == 200 || i2 == 204) && th == null) {
            try {
                zzawz().zzjcr.set(this.s.currentTimeMillis());
                zzawz().zzjcs.set(0);
                l();
                zzawy().zzazj().zze("Successful upload. Got network response. code, size", Integer.valueOf(i2), Integer.valueOf(bArr.length));
                zzaws().beginTransaction();
                try {
                    for (Long longValue : list) {
                        zzaws = zzaws();
                        long longValue2 = longValue.longValue();
                        zzaws.zzve();
                        zzaws.k();
                        if (zzaws.b().delete("queue", "rowid=?", new String[]{String.valueOf(longValue2)}) != 1) {
                            throw new SQLiteException("Deleted fewer rows from queue than expected");
                        }
                    }
                    zzaws().setTransactionSuccessful();
                    zzaws().endTransaction();
                    if (!zzbab().zzzs() || !k()) {
                        this.K = -1;
                        l();
                    } else {
                        zzbah();
                    }
                    this.L = 0;
                } catch (SQLiteException e2) {
                    zzaws.zzawy().zzazd().zzj("Failed to delete a bundle in a queue table", e2);
                    throw e2;
                } catch (Throwable th3) {
                    zzaws().endTransaction();
                    throw th3;
                }
            } catch (SQLiteException e3) {
                zzawy().zzazd().zzj("Database error while trying to delete uploaded bundles", e3);
                this.L = this.s.elapsedRealtime();
                zzawy().zzazj().zzj("Disable upload, time", Long.valueOf(this.L));
            }
        } else {
            zzawy().zzazj().zze("Network upload failed. Will retry later. code, error", Integer.valueOf(i2), th);
            zzawz().zzjcs.set(this.s.currentTimeMillis());
            if (i2 != 503) {
                if (i2 != 429) {
                    z2 = false;
                }
            }
            if (z2) {
                zzawz().zzjct.set(this.s.currentTimeMillis());
            }
            l();
        }
        this.N = false;
        n();
    }

    /* access modifiers changed from: package-private */
    public final void a(zzcgi zzcgi) {
        zzaws().zzjb(zzcgi.packageName);
        id zzaws = zzaws();
        String str = zzcgi.packageName;
        ap.zzgm(str);
        zzaws.zzve();
        zzaws.k();
        try {
            SQLiteDatabase b2 = zzaws.b();
            String[] strArr = {str};
            int delete = b2.delete("apps", "app_id=?", strArr) + 0 + b2.delete("events", "app_id=?", strArr) + b2.delete("user_attributes", "app_id=?", strArr) + b2.delete("conditional_properties", "app_id=?", strArr) + b2.delete("raw_events", "app_id=?", strArr) + b2.delete("raw_events_metadata", "app_id=?", strArr) + b2.delete("queue", "app_id=?", strArr) + b2.delete("audience_filter_values", "app_id=?", strArr);
            if (delete > 0) {
                zzaws.zzawy().zzazj().zze("Reset analytics data. app, records", str, Integer.valueOf(delete));
            }
        } catch (SQLiteException e2) {
            zzaws.zzawy().zzazd().zze("Error resetting analytics data. appId, error", iz.a(str), e2);
        }
        zzf(a(this.f, zzcgi.packageName, zzcgi.zzixs, zzcgi.zzixx, zzcgi.zziye));
    }

    /* access modifiers changed from: package-private */
    public final void a(zzcgl zzcgl) {
        zzcgi a2 = a(zzcgl.packageName);
        if (a2 != null) {
            a(zzcgl, a2);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(zzcgl zzcgl, zzcgi zzcgi) {
        jb zzazd;
        String str;
        Object a2;
        String c2;
        Object value;
        jb zzazd2;
        String str2;
        Object a3;
        String c3;
        Object obj;
        ap.checkNotNull(zzcgl);
        ap.zzgm(zzcgl.packageName);
        ap.checkNotNull(zzcgl.zziyf);
        ap.checkNotNull(zzcgl.zziyg);
        ap.zzgm(zzcgl.zziyg.name);
        zzawx().zzve();
        a();
        if (!TextUtils.isEmpty(zzcgi.zzixs)) {
            if (!zzcgi.zzixx) {
                b(zzcgi);
                return;
            }
            zzcgl zzcgl2 = new zzcgl(zzcgl);
            boolean z2 = false;
            zzcgl2.zziyi = false;
            zzaws().beginTransaction();
            try {
                zzcgl zzah = zzaws().zzah(zzcgl2.packageName, zzcgl2.zziyg.name);
                if (zzah != null && !zzah.zziyf.equals(zzcgl2.zziyf)) {
                    zzawy().zzazf().zzd("Updating a conditional user property with different origin. name, origin, origin (from DB)", zzawt().c(zzcgl2.zziyg.name), zzcgl2.zziyf, zzah.zziyf);
                }
                if (zzah != null && zzah.zziyi) {
                    zzcgl2.zziyf = zzah.zziyf;
                    zzcgl2.zziyh = zzah.zziyh;
                    zzcgl2.zziyl = zzah.zziyl;
                    zzcgl2.zziyj = zzah.zziyj;
                    zzcgl2.zziym = zzah.zziym;
                    zzcgl2.zziyi = zzah.zziyi;
                    zzcln zzcln = new zzcln(zzcgl2.zziyg.name, zzah.zziyg.zzjji, zzcgl2.zziyg.getValue(), zzah.zziyg.zziyf);
                    zzcgl2.zziyg = zzcln;
                } else if (TextUtils.isEmpty(zzcgl2.zziyj)) {
                    zzcln zzcln2 = new zzcln(zzcgl2.zziyg.name, zzcgl2.zziyh, zzcgl2.zziyg.getValue(), zzcgl2.zziyg.zziyf);
                    zzcgl2.zziyg = zzcln2;
                    zzcgl2.zziyi = true;
                    z2 = true;
                }
                if (zzcgl2.zziyi) {
                    zzcln zzcln3 = zzcgl2.zziyg;
                    mz mzVar = new mz(zzcgl2.packageName, zzcgl2.zziyf, zzcln3.name, zzcln3.zzjji, zzcln3.getValue());
                    if (zzaws().zza(mzVar)) {
                        zzazd2 = zzawy().zzazi();
                        str2 = "User property updated immediately";
                        a3 = zzcgl2.packageName;
                        c3 = zzawt().c(mzVar.c);
                        obj = mzVar.e;
                    } else {
                        zzazd2 = zzawy().zzazd();
                        str2 = "(2)Too many active user properties, ignoring";
                        a3 = iz.a(zzcgl2.packageName);
                        c3 = zzawt().c(mzVar.c);
                        obj = mzVar.e;
                    }
                    zzazd2.zzd(str2, a3, c3, obj);
                    if (z2 && zzcgl2.zziym != null) {
                        b(new zzcha(zzcgl2.zziym, zzcgl2.zziyh), zzcgi);
                    }
                }
                if (zzaws().zza(zzcgl2)) {
                    zzazd = zzawy().zzazi();
                    str = "Conditional property added";
                    a2 = zzcgl2.packageName;
                    c2 = zzawt().c(zzcgl2.zziyg.name);
                    value = zzcgl2.zziyg.getValue();
                } else {
                    zzazd = zzawy().zzazd();
                    str = "Too many conditional properties, ignoring";
                    a2 = iz.a(zzcgl2.packageName);
                    c2 = zzawt().c(zzcgl2.zziyg.name);
                    value = zzcgl2.zziyg.getValue();
                }
                zzazd.zzd(str, a2, c2, value);
                zzaws().setTransactionSuccessful();
            } finally {
                zzaws().endTransaction();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(zzcha zzcha, zzcgi zzcgi) {
        List<zzcgl> list;
        List<zzcgl> list2;
        List<zzcgl> list3;
        jb zzazd;
        String str;
        Object a2;
        String c2;
        Object obj;
        zzcha zzcha2 = zzcha;
        zzcgi zzcgi2 = zzcgi;
        ap.checkNotNull(zzcgi);
        ap.zzgm(zzcgi2.packageName);
        zzawx().zzve();
        a();
        String str2 = zzcgi2.packageName;
        long j2 = zzcha2.zzizu;
        zzawu();
        if (na.a(zzcha, zzcgi)) {
            if (!zzcgi2.zzixx) {
                b(zzcgi2);
                return;
            }
            zzaws().beginTransaction();
            try {
                id zzaws = zzaws();
                ap.zzgm(str2);
                zzaws.zzve();
                zzaws.k();
                if (j2 < 0) {
                    zzaws.zzawy().zzazf().zze("Invalid time querying timed out conditional properties", iz.a(str2), Long.valueOf(j2));
                    list = Collections.emptyList();
                } else {
                    list = zzaws.zzc("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j2)});
                }
                for (zzcgl next : list) {
                    if (next != null) {
                        zzawy().zzazi().zzd("User property timed out", next.packageName, zzawt().c(next.zziyg.name), next.zziyg.getValue());
                        if (next.zziyk != null) {
                            b(new zzcha(next.zziyk, j2), zzcgi2);
                        }
                        zzaws().zzai(str2, next.zziyg.name);
                    }
                }
                id zzaws2 = zzaws();
                ap.zzgm(str2);
                zzaws2.zzve();
                zzaws2.k();
                if (j2 < 0) {
                    zzaws2.zzawy().zzazf().zze("Invalid time querying expired conditional properties", iz.a(str2), Long.valueOf(j2));
                    list2 = Collections.emptyList();
                } else {
                    list2 = zzaws2.zzc("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j2)});
                }
                ArrayList arrayList = new ArrayList(list2.size());
                for (zzcgl next2 : list2) {
                    if (next2 != null) {
                        zzawy().zzazi().zzd("User property expired", next2.packageName, zzawt().c(next2.zziyg.name), next2.zziyg.getValue());
                        zzaws().zzaf(str2, next2.zziyg.name);
                        if (next2.zziyo != null) {
                            arrayList.add(next2.zziyo);
                        }
                        zzaws().zzai(str2, next2.zziyg.name);
                    }
                }
                ArrayList arrayList2 = arrayList;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj2 = arrayList2.get(i2);
                    i2++;
                    b(new zzcha((zzcha) obj2, j2), zzcgi2);
                }
                id zzaws3 = zzaws();
                String str3 = zzcha2.name;
                ap.zzgm(str2);
                ap.zzgm(str3);
                zzaws3.zzve();
                zzaws3.k();
                if (j2 < 0) {
                    zzaws3.zzawy().zzazf().zzd("Invalid time querying triggered conditional properties", iz.a(str2), zzaws3.zzawt().a(str3), Long.valueOf(j2));
                    list3 = Collections.emptyList();
                } else {
                    list3 = zzaws3.zzc("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str3, String.valueOf(j2)});
                }
                ArrayList arrayList3 = new ArrayList(list3.size());
                for (zzcgl next3 : list3) {
                    if (next3 != null) {
                        zzcln zzcln = next3.zziyg;
                        mz mzVar = r4;
                        mz mzVar2 = new mz(next3.packageName, next3.zziyf, zzcln.name, j2, zzcln.getValue());
                        if (zzaws().zza(mzVar)) {
                            zzazd = zzawy().zzazi();
                            str = "User property triggered";
                            a2 = next3.packageName;
                            c2 = zzawt().c(mzVar.c);
                            obj = mzVar.e;
                        } else {
                            zzazd = zzawy().zzazd();
                            str = "Too many active user properties, ignoring";
                            a2 = iz.a(next3.packageName);
                            c2 = zzawt().c(mzVar.c);
                            obj = mzVar.e;
                        }
                        zzazd.zzd(str, a2, c2, obj);
                        if (next3.zziym != null) {
                            arrayList3.add(next3.zziym);
                        }
                        next3.zziyg = new zzcln(mzVar);
                        next3.zziyi = true;
                        zzaws().zza(next3);
                    }
                }
                b(zzcha, zzcgi);
                ArrayList arrayList4 = arrayList3;
                int size2 = arrayList4.size();
                int i3 = 0;
                while (i3 < size2) {
                    Object obj3 = arrayList4.get(i3);
                    i3++;
                    b(new zzcha((zzcha) obj3, j2), zzcgi2);
                }
                zzaws().setTransactionSuccessful();
            } finally {
                zzaws().endTransaction();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(zzcha zzcha, String str) {
        zzcha zzcha2 = zzcha;
        String str2 = str;
        hy zzjb = zzaws().zzjb(str2);
        if (zzjb == null || TextUtils.isEmpty(zzjb.zzvj())) {
            zzawy().zzazi().zzj("No app data available; dropping event", str2);
            return;
        }
        try {
            String str3 = fr.zzdb(this.f).getPackageInfo(str2, 0).versionName;
            if (zzjb.zzvj() != null && !zzjb.zzvj().equals(str3)) {
                zzawy().zzazf().zzj("App version does not match; dropping event. appId", iz.a(str));
                return;
            }
        } catch (PackageManager.NameNotFoundException unused) {
            if (!"_ui".equals(zzcha2.name)) {
                zzawy().zzazf().zzj("Could not find package. appId", iz.a(str));
            }
        }
        zzcgi zzcgi = r2;
        zzcgi zzcgi2 = new zzcgi(str, zzjb.getGmpAppId(), zzjb.zzvj(), zzjb.zzaxg(), zzjb.zzaxh(), zzjb.zzaxi(), zzjb.zzaxj(), (String) null, zzjb.zzaxk(), false, zzjb.zzaxd(), zzjb.zzaxx(), 0, 0, zzjb.zzaxy());
        a(zzcha2, zzcgi);
    }

    /* access modifiers changed from: package-private */
    public final void a(zzcln zzcln, zzcgi zzcgi) {
        zzawx().zzve();
        a();
        if (!TextUtils.isEmpty(zzcgi.zzixs)) {
            if (!zzcgi.zzixx) {
                b(zzcgi);
                return;
            }
            int zzkd = zzawu().zzkd(zzcln.name);
            if (zzkd != 0) {
                zzawu();
                zzawu().zza(zzcgi.packageName, zzkd, "_ev", na.zza(zzcln.name, 24, true), zzcln.name != null ? zzcln.name.length() : 0);
                return;
            }
            int zzl = zzawu().zzl(zzcln.name, zzcln.getValue());
            if (zzl != 0) {
                zzawu();
                String zza = na.zza(zzcln.name, 24, true);
                Object value = zzcln.getValue();
                zzawu().zza(zzcgi.packageName, zzl, "_ev", zza, (value == null || (!(value instanceof String) && !(value instanceof CharSequence))) ? 0 : String.valueOf(value).length());
                return;
            }
            Object zzm = zzawu().zzm(zzcln.name, zzcln.getValue());
            if (zzm != null) {
                mz mzVar = new mz(zzcgi.packageName, zzcln.zziyf, zzcln.name, zzcln.zzjji, zzm);
                zzawy().zzazi().zze("Setting user property", zzawt().c(mzVar.c), zzm);
                zzaws().beginTransaction();
                try {
                    b(zzcgi);
                    boolean zza2 = zzaws().zza(mzVar);
                    zzaws().setTransactionSuccessful();
                    if (zza2) {
                        zzawy().zzazi().zze("User property set", zzawt().c(mzVar.c), mzVar.e);
                    } else {
                        zzawy().zzazd().zze("Too many unique user properties are set. Ignoring user property", zzawt().c(mzVar.c), mzVar.e);
                        zzawu().zza(zzcgi.packageName, 9, (String) null, (String) null, 0);
                    }
                } finally {
                    zzaws().endTransaction();
                }
            }
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:47:0x0105 A[Catch:{ all -> 0x0150, all -> 0x0159 }] */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0113 A[Catch:{ all -> 0x0150, all -> 0x0159 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void a(java.lang.String r7, int r8, java.lang.Throwable r9, byte[] r10, java.util.Map<java.lang.String, java.util.List<java.lang.String>> r11) {
        /*
            r6 = this;
            com.google.android.gms.internal.js r0 = r6.zzawx()
            r0.zzve()
            r6.a()
            com.google.android.gms.common.internal.ap.zzgm(r7)
            r0 = 0
            if (r10 != 0) goto L_0x0012
            byte[] r10 = new byte[r0]     // Catch:{ all -> 0x0159 }
        L_0x0012:
            com.google.android.gms.internal.iz r1 = r6.zzawy()     // Catch:{ all -> 0x0159 }
            com.google.android.gms.internal.jb r1 = r1.zzazj()     // Catch:{ all -> 0x0159 }
            java.lang.String r2 = "onConfigFetched. Response size"
            int r3 = r10.length     // Catch:{ all -> 0x0159 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ all -> 0x0159 }
            r1.zzj(r2, r3)     // Catch:{ all -> 0x0159 }
            com.google.android.gms.internal.id r1 = r6.zzaws()     // Catch:{ all -> 0x0159 }
            r1.beginTransaction()     // Catch:{ all -> 0x0159 }
            com.google.android.gms.internal.id r1 = r6.zzaws()     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.hy r1 = r1.zzjb(r7)     // Catch:{ all -> 0x0150 }
            r2 = 200(0xc8, float:2.8E-43)
            r3 = 304(0x130, float:4.26E-43)
            r4 = 1
            if (r8 == r2) goto L_0x0040
            r2 = 204(0xcc, float:2.86E-43)
            if (r8 == r2) goto L_0x0040
            if (r8 != r3) goto L_0x0044
        L_0x0040:
            if (r9 != 0) goto L_0x0044
            r2 = 1
            goto L_0x0045
        L_0x0044:
            r2 = 0
        L_0x0045:
            if (r1 != 0) goto L_0x005a
            com.google.android.gms.internal.iz r8 = r6.zzawy()     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.jb r8 = r8.zzazf()     // Catch:{ all -> 0x0150 }
            java.lang.String r9 = "App does not exist in onConfigFetched. appId"
            java.lang.Object r7 = com.google.android.gms.internal.iz.a((java.lang.String) r7)     // Catch:{ all -> 0x0150 }
            r8.zzj(r9, r7)     // Catch:{ all -> 0x0150 }
            goto L_0x013c
        L_0x005a:
            r5 = 404(0x194, float:5.66E-43)
            if (r2 != 0) goto L_0x00b8
            if (r8 != r5) goto L_0x0061
            goto L_0x00b8
        L_0x0061:
            com.google.android.gms.common.util.d r10 = r6.s     // Catch:{ all -> 0x0150 }
            long r10 = r10.currentTimeMillis()     // Catch:{ all -> 0x0150 }
            r1.zzas(r10)     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.id r10 = r6.zzaws()     // Catch:{ all -> 0x0150 }
            r10.zza((com.google.android.gms.internal.hy) r1)     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.iz r10 = r6.zzawy()     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.jb r10 = r10.zzazj()     // Catch:{ all -> 0x0150 }
            java.lang.String r11 = "Fetching config failed. code, error"
            java.lang.Integer r1 = java.lang.Integer.valueOf(r8)     // Catch:{ all -> 0x0150 }
            r10.zze(r11, r1, r9)     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.jr r9 = r6.zzawv()     // Catch:{ all -> 0x0150 }
            r9.c(r7)     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.jj r7 = r6.zzawz()     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.jl r7 = r7.zzjcs     // Catch:{ all -> 0x0150 }
            com.google.android.gms.common.util.d r9 = r6.s     // Catch:{ all -> 0x0150 }
            long r9 = r9.currentTimeMillis()     // Catch:{ all -> 0x0150 }
            r7.set(r9)     // Catch:{ all -> 0x0150 }
            r7 = 503(0x1f7, float:7.05E-43)
            if (r8 == r7) goto L_0x00a2
            r7 = 429(0x1ad, float:6.01E-43)
            if (r8 != r7) goto L_0x00a1
            goto L_0x00a2
        L_0x00a1:
            r4 = 0
        L_0x00a2:
            if (r4 == 0) goto L_0x00b3
            com.google.android.gms.internal.jj r7 = r6.zzawz()     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.jl r7 = r7.zzjct     // Catch:{ all -> 0x0150 }
            com.google.android.gms.common.util.d r8 = r6.s     // Catch:{ all -> 0x0150 }
            long r8 = r8.currentTimeMillis()     // Catch:{ all -> 0x0150 }
            r7.set(r8)     // Catch:{ all -> 0x0150 }
        L_0x00b3:
            r6.l()     // Catch:{ all -> 0x0150 }
            goto L_0x013c
        L_0x00b8:
            r9 = 0
            if (r11 == 0) goto L_0x00c4
            java.lang.String r2 = "Last-Modified"
            java.lang.Object r11 = r11.get(r2)     // Catch:{ all -> 0x0150 }
            java.util.List r11 = (java.util.List) r11     // Catch:{ all -> 0x0150 }
            goto L_0x00c5
        L_0x00c4:
            r11 = r9
        L_0x00c5:
            if (r11 == 0) goto L_0x00d4
            int r2 = r11.size()     // Catch:{ all -> 0x0150 }
            if (r2 <= 0) goto L_0x00d4
            java.lang.Object r11 = r11.get(r0)     // Catch:{ all -> 0x0150 }
            java.lang.String r11 = (java.lang.String) r11     // Catch:{ all -> 0x0150 }
            goto L_0x00d5
        L_0x00d4:
            r11 = r9
        L_0x00d5:
            if (r8 == r5) goto L_0x00e2
            if (r8 != r3) goto L_0x00da
            goto L_0x00e2
        L_0x00da:
            com.google.android.gms.internal.jr r9 = r6.zzawv()     // Catch:{ all -> 0x0150 }
            r9.a(r7, r10, r11)     // Catch:{ all -> 0x0150 }
            goto L_0x00f3
        L_0x00e2:
            com.google.android.gms.internal.jr r11 = r6.zzawv()     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.ni r11 = r11.a((java.lang.String) r7)     // Catch:{ all -> 0x0150 }
            if (r11 != 0) goto L_0x00f3
            com.google.android.gms.internal.jr r11 = r6.zzawv()     // Catch:{ all -> 0x0150 }
            r11.a(r7, r9, r9)     // Catch:{ all -> 0x0150 }
        L_0x00f3:
            com.google.android.gms.common.util.d r9 = r6.s     // Catch:{ all -> 0x0150 }
            long r2 = r9.currentTimeMillis()     // Catch:{ all -> 0x0150 }
            r1.zzar(r2)     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.id r9 = r6.zzaws()     // Catch:{ all -> 0x0150 }
            r9.zza((com.google.android.gms.internal.hy) r1)     // Catch:{ all -> 0x0150 }
            if (r8 != r5) goto L_0x0113
            com.google.android.gms.internal.iz r8 = r6.zzawy()     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.jb r8 = r8.zzazg()     // Catch:{ all -> 0x0150 }
            java.lang.String r9 = "Config not found. Using empty config. appId"
            r8.zzj(r9, r7)     // Catch:{ all -> 0x0150 }
            goto L_0x0129
        L_0x0113:
            com.google.android.gms.internal.iz r7 = r6.zzawy()     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.jb r7 = r7.zzazj()     // Catch:{ all -> 0x0150 }
            java.lang.String r9 = "Successfully fetched config. Got network response. code, size"
            java.lang.Integer r8 = java.lang.Integer.valueOf(r8)     // Catch:{ all -> 0x0150 }
            int r10 = r10.length     // Catch:{ all -> 0x0150 }
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch:{ all -> 0x0150 }
            r7.zze(r9, r8, r10)     // Catch:{ all -> 0x0150 }
        L_0x0129:
            com.google.android.gms.internal.jd r7 = r6.zzbab()     // Catch:{ all -> 0x0150 }
            boolean r7 = r7.zzzs()     // Catch:{ all -> 0x0150 }
            if (r7 == 0) goto L_0x00b3
            boolean r7 = r6.k()     // Catch:{ all -> 0x0150 }
            if (r7 == 0) goto L_0x00b3
            r6.zzbah()     // Catch:{ all -> 0x0150 }
        L_0x013c:
            com.google.android.gms.internal.id r7 = r6.zzaws()     // Catch:{ all -> 0x0150 }
            r7.setTransactionSuccessful()     // Catch:{ all -> 0x0150 }
            com.google.android.gms.internal.id r7 = r6.zzaws()     // Catch:{ all -> 0x0159 }
            r7.endTransaction()     // Catch:{ all -> 0x0159 }
            r6.M = r0
            r6.n()
            return
        L_0x0150:
            r7 = move-exception
            com.google.android.gms.internal.id r8 = r6.zzaws()     // Catch:{ all -> 0x0159 }
            r8.endTransaction()     // Catch:{ all -> 0x0159 }
            throw r7     // Catch:{ all -> 0x0159 }
        L_0x0159:
            r7 = move-exception
            r6.M = r0
            r6.n()
            goto L_0x0161
        L_0x0160:
            throw r7
        L_0x0161:
            goto L_0x0160
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.jx.a(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Removed duplicated region for block: B:30:0x00ca  */
    /* JADX WARNING: Removed duplicated region for block: B:38:0x00f0  */
    /* JADX WARNING: Removed duplicated region for block: B:41:0x00fe  */
    /* JADX WARNING: Removed duplicated region for block: B:49:0x0128  */
    /* JADX WARNING: Removed duplicated region for block: B:52:0x0136  */
    /* JADX WARNING: Removed duplicated region for block: B:54:0x013e  */
    /* JADX WARNING: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void b(com.google.android.gms.internal.zzcgi r9) {
        /*
            r8 = this;
            com.google.android.gms.internal.js r0 = r8.zzawx()
            r0.zzve()
            r8.a()
            com.google.android.gms.common.internal.ap.checkNotNull(r9)
            java.lang.String r0 = r9.packageName
            com.google.android.gms.common.internal.ap.zzgm(r0)
            com.google.android.gms.internal.id r0 = r8.zzaws()
            java.lang.String r1 = r9.packageName
            com.google.android.gms.internal.hy r0 = r0.zzjb(r1)
            com.google.android.gms.internal.jj r1 = r8.zzawz()
            java.lang.String r2 = r9.packageName
            java.lang.String r1 = r1.b((java.lang.String) r2)
            r2 = 1
            if (r0 != 0) goto L_0x0040
            com.google.android.gms.internal.hy r0 = new com.google.android.gms.internal.hy
            java.lang.String r3 = r9.packageName
            r0.<init>(r8, r3)
            com.google.android.gms.internal.iu r3 = r8.zzawn()
            java.lang.String r3 = r3.c()
            r0.zzir(r3)
            r0.zzit(r1)
        L_0x003e:
            r1 = 1
            goto L_0x005a
        L_0x0040:
            java.lang.String r3 = r0.zzaxc()
            boolean r3 = r1.equals(r3)
            if (r3 != 0) goto L_0x0059
            r0.zzit(r1)
            com.google.android.gms.internal.iu r1 = r8.zzawn()
            java.lang.String r1 = r1.c()
            r0.zzir(r1)
            goto L_0x003e
        L_0x0059:
            r1 = 0
        L_0x005a:
            java.lang.String r3 = r9.zzixs
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto L_0x0074
            java.lang.String r3 = r9.zzixs
            java.lang.String r4 = r0.getGmpAppId()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x0074
            java.lang.String r1 = r9.zzixs
            r0.zzis(r1)
            r1 = 1
        L_0x0074:
            java.lang.String r3 = r9.zziya
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto L_0x008e
            java.lang.String r3 = r9.zziya
            java.lang.String r4 = r0.zzaxd()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x008e
            java.lang.String r1 = r9.zziya
            r0.zziu(r1)
            r1 = 1
        L_0x008e:
            long r3 = r9.zzixu
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x00a6
            long r3 = r9.zzixu
            long r5 = r0.zzaxi()
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x00a6
            long r3 = r9.zzixu
            r0.zzao(r3)
            r1 = 1
        L_0x00a6:
            java.lang.String r3 = r9.zzifm
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto L_0x00c0
            java.lang.String r3 = r9.zzifm
            java.lang.String r4 = r0.zzvj()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x00c0
            java.lang.String r1 = r9.zzifm
            r0.setAppVersion(r1)
            r1 = 1
        L_0x00c0:
            long r3 = r9.zzixz
            long r5 = r0.zzaxg()
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x00d0
            long r3 = r9.zzixz
            r0.zzan(r3)
            r1 = 1
        L_0x00d0:
            java.lang.String r3 = r9.zzixt
            if (r3 == 0) goto L_0x00e6
            java.lang.String r3 = r9.zzixt
            java.lang.String r4 = r0.zzaxh()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x00e6
            java.lang.String r1 = r9.zzixt
            r0.zziv(r1)
            r1 = 1
        L_0x00e6:
            long r3 = r9.zzixv
            long r5 = r0.zzaxj()
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x00f6
            long r3 = r9.zzixv
            r0.zzap(r3)
            r1 = 1
        L_0x00f6:
            boolean r3 = r9.zzixx
            boolean r4 = r0.zzaxk()
            if (r3 == r4) goto L_0x0104
            boolean r1 = r9.zzixx
            r0.setMeasurementEnabled(r1)
            r1 = 1
        L_0x0104:
            java.lang.String r3 = r9.zzixw
            boolean r3 = android.text.TextUtils.isEmpty(r3)
            if (r3 != 0) goto L_0x011e
            java.lang.String r3 = r9.zzixw
            java.lang.String r4 = r0.zzaxv()
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L_0x011e
            java.lang.String r1 = r9.zzixw
            r0.zziw(r1)
            r1 = 1
        L_0x011e:
            long r3 = r9.zziyb
            long r5 = r0.zzaxx()
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 == 0) goto L_0x012e
            long r3 = r9.zziyb
            r0.zzaz(r3)
            r1 = 1
        L_0x012e:
            boolean r3 = r9.zziye
            boolean r4 = r0.zzaxy()
            if (r3 == r4) goto L_0x013c
            boolean r9 = r9.zziye
            r0.zzbl(r9)
            r1 = 1
        L_0x013c:
            if (r1 == 0) goto L_0x0145
            com.google.android.gms.internal.id r9 = r8.zzaws()
            r9.zza((com.google.android.gms.internal.hy) r0)
        L_0x0145:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.jx.b(com.google.android.gms.internal.zzcgi):void");
    }

    /* access modifiers changed from: package-private */
    public final void b(zzcgl zzcgl) {
        zzcgi a2 = a(zzcgl.packageName);
        if (a2 != null) {
            b(zzcgl, a2);
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(zzcgl zzcgl, zzcgi zzcgi) {
        ap.checkNotNull(zzcgl);
        ap.zzgm(zzcgl.packageName);
        ap.checkNotNull(zzcgl.zziyg);
        ap.zzgm(zzcgl.zziyg.name);
        zzawx().zzve();
        a();
        if (!TextUtils.isEmpty(zzcgi.zzixs)) {
            if (!zzcgi.zzixx) {
                b(zzcgi);
                return;
            }
            zzaws().beginTransaction();
            try {
                b(zzcgi);
                zzcgl zzah = zzaws().zzah(zzcgl.packageName, zzcgl.zziyg.name);
                if (zzah != null) {
                    zzawy().zzazi().zze("Removing conditional user property", zzcgl.packageName, zzawt().c(zzcgl.zziyg.name));
                    zzaws().zzai(zzcgl.packageName, zzcgl.zziyg.name);
                    if (zzah.zziyi) {
                        zzaws().zzaf(zzcgl.packageName, zzcgl.zziyg.name);
                    }
                    if (zzcgl.zziyo != null) {
                        Bundle bundle = null;
                        if (zzcgl.zziyo.zzizt != null) {
                            bundle = zzcgl.zziyo.zzizt.zzayx();
                        }
                        Bundle bundle2 = bundle;
                        b(zzawu().a(zzcgl.zziyo.name, bundle2, zzah.zziyf, zzcgl.zziyo.zzizu), zzcgi);
                    }
                } else {
                    zzawy().zzazf().zze("Conditional user property doesn't exist", iz.a(zzcgl.packageName), zzawt().c(zzcgl.zziyg.name));
                }
                zzaws().setTransactionSuccessful();
            } finally {
                zzaws().endTransaction();
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void b(zzcln zzcln, zzcgi zzcgi) {
        zzawx().zzve();
        a();
        if (!TextUtils.isEmpty(zzcgi.zzixs)) {
            if (!zzcgi.zzixx) {
                b(zzcgi);
                return;
            }
            zzawy().zzazi().zzj("Removing user property", zzawt().c(zzcln.name));
            zzaws().beginTransaction();
            try {
                b(zzcgi);
                zzaws().zzaf(zzcgi.packageName, zzcln.name);
                zzaws().setTransactionSuccessful();
                zzawy().zzazi().zzj("User property removed", zzawt().c(zzcln.name));
            } finally {
                zzaws().endTransaction();
            }
        }
    }

    /* access modifiers changed from: protected */
    public final boolean b() {
        a();
        zzawx().zzve();
        Boolean bool = this.E;
        if (bool == null || this.F == 0 || (bool != null && !bool.booleanValue() && Math.abs(this.s.elapsedRealtime() - this.F) > 1000)) {
            this.F = this.s.elapsedRealtime();
            boolean z2 = false;
            if (zzawu().zzeb("android.permission.INTERNET") && zzawu().zzeb("android.permission.ACCESS_NETWORK_STATE") && (fr.zzdb(this.f).zzamu() || (jo.zzbk(this.f) && ml.zzk(this.f, false)))) {
                z2 = true;
            }
            this.E = Boolean.valueOf(z2);
            if (this.E.booleanValue()) {
                this.E = Boolean.valueOf(zzawu().zzkg(zzawn().e()));
            }
        }
        return this.E.booleanValue();
    }

    /* access modifiers changed from: protected */
    public final void c() {
        zzawx().zzve();
        zzaws().c();
        if (zzawz().zzjcr.get() == 0) {
            zzawz().zzjcr.set(this.s.currentTimeMillis());
        }
        if (zzawz().zzjcw.get() == 0) {
            zzawy().zzazj().zzj("Persisting first open", Long.valueOf(this.d));
            zzawz().zzjcw.set(this.d);
        }
        if (b()) {
            if (!TextUtils.isEmpty(zzawn().e())) {
                String c2 = zzawz().c();
                if (c2 == null) {
                    zzawz().c(zzawn().e());
                } else if (!c2.equals(zzawn().e())) {
                    zzawy().zzazh().log("Rechecking which service to use due to a GMP App Id change");
                    zzawz().f();
                    this.u.disconnect();
                    this.u.g();
                    zzawz().c(zzawn().e());
                    zzawz().zzjcw.set(this.d);
                    zzawz().zzjcx.zzjq(null);
                }
            }
            zzawm().a(zzawz().zzjcx.zzazr());
            if (!TextUtils.isEmpty(zzawn().e())) {
                ky zzawm = zzawm();
                zzawm.zzve();
                zzawm.k();
                if (zzawm.e.b()) {
                    zzawm.zzawp().e();
                    String g2 = zzawm.zzawz().g();
                    if (!TextUtils.isEmpty(g2)) {
                        zzawm.zzawo().k();
                        if (!g2.equals(Build.VERSION.RELEASE)) {
                            Bundle bundle = new Bundle();
                            bundle.putString("_po", g2);
                            zzawm.zzc("auto", "_ou", bundle);
                        }
                    }
                }
                zzawp().zza(new AtomicReference());
            }
        } else if (isEnabled()) {
            if (!zzawu().zzeb("android.permission.INTERNET")) {
                zzawy().zzazd().log("App is missing INTERNET permission");
            }
            if (!zzawu().zzeb("android.permission.ACCESS_NETWORK_STATE")) {
                zzawy().zzazd().log("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!fr.zzdb(this.f).zzamu()) {
                if (!jo.zzbk(this.f)) {
                    zzawy().zzazd().log("AppMeasurementReceiver not registered/enabled");
                }
                if (!ml.zzk(this.f, false)) {
                    zzawy().zzazd().log("AppMeasurementService not registered/enabled");
                }
            }
            zzawy().zzazd().log("Uploading is not possible. App measurement disabled");
        }
        l();
    }

    /* access modifiers changed from: package-private */
    public final void e() {
        this.J++;
    }

    /* access modifiers changed from: package-private */
    public final void f() {
        jb zzazd;
        Integer valueOf;
        Integer valueOf2;
        String str;
        zzawx().zzve();
        a();
        if (!this.D) {
            zzawy().zzazh().log("This instance being marked as an uploader");
            zzawx().zzve();
            a();
            if (m() && i()) {
                int a2 = a(this.H);
                int f2 = zzawn().f();
                zzawx().zzve();
                if (a2 > f2) {
                    zzazd = zzawy().zzazd();
                    valueOf = Integer.valueOf(a2);
                    valueOf2 = Integer.valueOf(f2);
                    str = "Panic: can't downgrade version. Previous, current version";
                } else if (a2 < f2) {
                    if (a(f2, this.H)) {
                        zzazd = zzawy().zzazj();
                        valueOf = Integer.valueOf(a2);
                        valueOf2 = Integer.valueOf(f2);
                        str = "Storage version upgraded. Previous, current version";
                    } else {
                        zzazd = zzawy().zzazd();
                        valueOf = Integer.valueOf(a2);
                        valueOf2 = Integer.valueOf(f2);
                        str = "Storage version upgrade failed. Previous, current version";
                    }
                }
                zzazd.zze(str, valueOf, valueOf2);
            }
            this.D = true;
            l();
        }
    }

    public final Context getContext() {
        return this.f;
    }

    public final boolean isEnabled() {
        zzawx().zzve();
        a();
        boolean z2 = false;
        if (this.g.zzaya()) {
            return false;
        }
        Boolean a2 = this.g.a("firebase_analytics_collection_enabled");
        if (a2 != null) {
            z2 = a2.booleanValue();
        } else if (!ay.zzaji()) {
            z2 = true;
        }
        return zzawz().c(z2);
    }

    public final byte[] zza(zzcha zzcha, String str) {
        long j2;
        zzcha zzcha2 = zzcha;
        String str2 = str;
        a();
        zzawx().zzve();
        d();
        ap.checkNotNull(zzcha);
        ap.zzgm(str);
        nn nnVar = new nn();
        zzaws().beginTransaction();
        try {
            hy zzjb = zzaws().zzjb(str2);
            if (zzjb == null) {
                zzawy().zzazi().zzj("Log and bundle not available. package_name", str2);
            } else if (!zzjb.zzaxk()) {
                zzawy().zzazi().zzj("Log and bundle disabled. package_name", str2);
            } else {
                if (("_iap".equals(zzcha2.name) || FirebaseAnalytics.a.ECOMMERCE_PURCHASE.equals(zzcha2.name)) && !a(str2, zzcha2)) {
                    zzawy().zzazf().zzj("Failed to handle purchase event at single event bundle creation. appId", iz.a(str));
                }
                no noVar = new no();
                nnVar.zzjlm = new no[]{noVar};
                noVar.zzjlo = 1;
                noVar.zzjlw = io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE;
                noVar.zzcn = zzjb.getAppId();
                noVar.zzixt = zzjb.zzaxh();
                noVar.zzifm = zzjb.zzvj();
                long zzaxg = zzjb.zzaxg();
                noVar.zzjmj = zzaxg == -2147483648L ? null : Integer.valueOf((int) zzaxg);
                noVar.zzjma = Long.valueOf(zzjb.zzaxi());
                noVar.zzixs = zzjb.getGmpAppId();
                noVar.zzjmf = Long.valueOf(zzjb.zzaxj());
                if (isEnabled() && ic.zzaye() && this.g.zziz(noVar.zzcn)) {
                    zzawn();
                    noVar.zzjmo = null;
                }
                Pair<String, Boolean> a2 = zzawz().a(zzjb.getAppId());
                if (zzjb.zzaxy() && !TextUtils.isEmpty((CharSequence) a2.first)) {
                    noVar.zzjmc = (String) a2.first;
                    noVar.zzjmd = (Boolean) a2.second;
                }
                zzawo().k();
                noVar.zzjlx = Build.MODEL;
                zzawo().k();
                noVar.zzdb = Build.VERSION.RELEASE;
                noVar.zzjlz = Integer.valueOf((int) zzawo().zzayu());
                noVar.zzjly = zzawo().zzayv();
                noVar.zzjme = zzjb.getAppInstanceId();
                noVar.zziya = zzjb.zzaxd();
                List<mz> zzja = zzaws().zzja(zzjb.getAppId());
                noVar.zzjlq = new nq[zzja.size()];
                for (int i2 = 0; i2 < zzja.size(); i2++) {
                    nq nqVar = new nq();
                    noVar.zzjlq[i2] = nqVar;
                    nqVar.name = zzja.get(i2).c;
                    nqVar.zzjms = Long.valueOf(zzja.get(i2).d);
                    zzawu().zza(nqVar, zzja.get(i2).e);
                }
                Bundle zzayx = zzcha2.zzizt.zzayx();
                if ("_iap".equals(zzcha2.name)) {
                    zzayx.putLong("_c", 1);
                    zzawy().zzazi().log("Marking in-app purchase as real-time");
                    zzayx.putLong("_r", 1);
                }
                zzayx.putString("_o", zzcha2.zziyf);
                if (zzawu().zzkj(noVar.zzcn)) {
                    zzawu().zza(zzayx, "_dbg", (Object) 1L);
                    zzawu().zza(zzayx, "_r", (Object) 1L);
                }
                il zzae = zzaws().zzae(str2, zzcha2.name);
                if (zzae == null) {
                    il ilVar = new il(str, zzcha2.name, 1, 0, zzcha2.zzizu, 0, null, null, null);
                    zzaws().zza(ilVar);
                    j2 = 0;
                } else {
                    j2 = zzae.e;
                    zzaws().zza(zzae.a(zzcha2.zzizu).a());
                }
                String str3 = zzcha2.zziyf;
                String str4 = zzcha2.name;
                long j3 = zzcha2.zzizu;
                no noVar2 = noVar;
                long j4 = j3;
                nn nnVar2 = nnVar;
                hy hyVar = zzjb;
                ik ikVar = new ik(this, str3, str, str4, j4, j2, zzayx);
                nl nlVar = new nl();
                noVar2.zzjlp = new nl[]{nlVar};
                nlVar.zzjli = Long.valueOf(ikVar.c);
                nlVar.name = ikVar.f3212b;
                nlVar.zzjlj = Long.valueOf(ikVar.d);
                nlVar.zzjlh = new nm[ikVar.e.size()];
                Iterator<String> it = ikVar.e.iterator();
                int i3 = 0;
                while (it.hasNext()) {
                    String next = it.next();
                    nm nmVar = new nm();
                    nlVar.zzjlh[i3] = nmVar;
                    nmVar.name = next;
                    zzawu().zza(nmVar, ikVar.e.a(next));
                    i3++;
                }
                noVar2.zzjmi = a(hyVar.getAppId(), noVar2.zzjlq, noVar2.zzjlp);
                noVar2.zzjls = nlVar.zzjli;
                noVar2.zzjlt = nlVar.zzjli;
                long zzaxf = hyVar.zzaxf();
                noVar2.zzjlv = zzaxf != 0 ? Long.valueOf(zzaxf) : null;
                long zzaxe = hyVar.zzaxe();
                if (zzaxe != 0) {
                    zzaxf = zzaxe;
                }
                noVar2.zzjlu = zzaxf != 0 ? Long.valueOf(zzaxf) : null;
                hyVar.zzaxo();
                noVar2.zzjmg = Integer.valueOf((int) hyVar.zzaxl());
                noVar2.zzjmb = 11910L;
                noVar2.zzjlr = Long.valueOf(this.s.currentTimeMillis());
                noVar2.zzjmh = Boolean.TRUE;
                hy hyVar2 = hyVar;
                hyVar2.zzal(noVar2.zzjls.longValue());
                hyVar2.zzam(noVar2.zzjlt.longValue());
                zzaws().zza(hyVar2);
                zzaws().setTransactionSuccessful();
                zzaws().endTransaction();
                try {
                    byte[] bArr = new byte[nnVar2.zzho()];
                    sp zzo = sp.zzo(bArr, 0, bArr.length);
                    nnVar2.zza(zzo);
                    zzo.zzcwt();
                    return zzawu().zzq(bArr);
                } catch (IOException e2) {
                    zzawy().zzazd().zze("Data loss. Failed to bundle and serialize. appId", iz.a(str), e2);
                    return null;
                }
            }
            return new byte[0];
        } finally {
            zzaws().endTransaction();
        }
    }

    public final hu zzawk() {
        a((kv) this.B);
        return this.B;
    }

    public final ia zzawl() {
        a((kw) this.A);
        return this.A;
    }

    public final ky zzawm() {
        a((kw) this.w);
        return this.w;
    }

    public final iu zzawn() {
        a((kw) this.x);
        return this.x;
    }

    public final ij zzawo() {
        a((kw) this.v);
        return this.v;
    }

    public final lr zzawp() {
        a((kw) this.u);
        return this.u;
    }

    public final ln zzawq() {
        a((kw) this.t);
        return this.t;
    }

    public final iv zzawr() {
        a((kw) this.q);
        return this.q;
    }

    public final id zzaws() {
        a((kw) this.p);
        return this.p;
    }

    public final ix zzawt() {
        a((kv) this.o);
        return this.o;
    }

    public final na zzawu() {
        a((kv) this.n);
        return this.n;
    }

    public final jr zzawv() {
        a((kw) this.k);
        return this.k;
    }

    public final mq zzaww() {
        a((kw) this.j);
        return this.j;
    }

    public final js zzawx() {
        a((kw) this.f3268a);
        return this.f3268a;
    }

    public final iz zzawy() {
        a((kw) this.i);
        return this.i;
    }

    public final jj zzawz() {
        a((kv) this.h);
        return this.h;
    }

    public final ic zzaxa() {
        return this.g;
    }

    public final iz zzazx() {
        iz izVar = this.i;
        if (izVar == null || !izVar.j()) {
            return null;
        }
        return this.i;
    }

    public final AppMeasurement zzazz() {
        return this.l;
    }

    public final FirebaseAnalytics zzbaa() {
        return this.m;
    }

    public final jd zzbab() {
        a((kw) this.r);
        return this.r;
    }

    public final void zzbo(boolean z2) {
        l();
    }

    public final String zzjx(String str) {
        try {
            return (String) zzawx().zzc(new jz(this, str)).get(IonBitmapCache.DEFAULT_ERROR_CACHE_DURATION, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            zzawy().zzazd().zze("Failed to get app instance id. appId", iz.a(str), e2);
            return null;
        }
    }

    public final d zzws() {
        return this.s;
    }

    private final boolean a(String str, zzcha zzcha) {
        long j2;
        mz mzVar;
        String string = zzcha.zzizt.f3602a.getString(FirebaseAnalytics.b.CURRENCY);
        if (FirebaseAnalytics.a.ECOMMERCE_PURCHASE.equals(zzcha.name)) {
            double d2 = zzcha.zzizt.f3602a.getDouble(FirebaseAnalytics.b.VALUE) * 1000000.0d;
            if (d2 == 0.0d) {
                double longValue = (double) zzcha.zzizt.b(FirebaseAnalytics.b.VALUE).longValue();
                Double.isNaN(longValue);
                d2 = longValue * 1000000.0d;
            }
            if (d2 > 9.223372036854776E18d || d2 < -9.223372036854776E18d) {
                zzawy().zzazf().zze("Data lost. Currency value is too big. appId", iz.a(str), Double.valueOf(d2));
                return false;
            }
            j2 = Math.round(d2);
        } else {
            j2 = zzcha.zzizt.b(FirebaseAnalytics.b.VALUE).longValue();
        }
        if (!TextUtils.isEmpty(string)) {
            String upperCase = string.toUpperCase(Locale.US);
            if (upperCase.matches("[A-Z]{3}")) {
                String valueOf = String.valueOf(upperCase);
                String concat = valueOf.length() != 0 ? "_ltv_".concat(valueOf) : new String("_ltv_");
                mz zzag = zzaws().zzag(str, concat);
                if (zzag == null || !(zzag.e instanceof Long)) {
                    id zzaws = zzaws();
                    int zzb = this.g.zzb(str, ip.zzjbh) - 1;
                    ap.zzgm(str);
                    zzaws.zzve();
                    zzaws.k();
                    try {
                        zzaws.b().execSQL("delete from user_attributes where app_id=? and name in (select name from user_attributes where app_id=? and name like '_ltv_%' order by set_timestamp desc limit ?,10);", new String[]{str, str, String.valueOf(zzb)});
                    } catch (SQLiteException e2) {
                        zzaws.zzawy().zzazd().zze("Error pruning currencies. appId", iz.a(str), e2);
                    }
                    mzVar = new mz(str, zzcha.zziyf, concat, this.s.currentTimeMillis(), Long.valueOf(j2));
                } else {
                    mz mzVar2 = new mz(str, zzcha.zziyf, concat, this.s.currentTimeMillis(), Long.valueOf(((Long) zzag.e).longValue() + j2));
                    mzVar = mzVar2;
                }
                if (!zzaws().zza(mzVar)) {
                    zzawy().zzazd().zzd("Too many unique user properties are set. Ignoring user property. appId", iz.a(str), zzawt().c(mzVar.c), mzVar.e);
                    zzawu().zza(str, 9, (String) null, (String) null, 0);
                }
            }
        }
        return true;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(2:81|82) */
    /* JADX WARNING: Code restructure failed: missing block: B:82:?, code lost:
        zzawy().zzazd().zze("Failed to parse upload URL. Not uploading. appId", com.google.android.gms.internal.iz.a(r4), r12);
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:81:0x024f */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzbah() {
        /*
            r14 = this;
            com.google.android.gms.internal.js r0 = r14.zzawx()
            r0.zzve()
            r14.a()
            r0 = 1
            r14.O = r0
            r1 = 0
            com.google.android.gms.internal.lr r2 = r14.zzawp()     // Catch:{ all -> 0x0286 }
            java.lang.Boolean r2 = r2.c     // Catch:{ all -> 0x0286 }
            if (r2 != 0) goto L_0x0029
            com.google.android.gms.internal.iz r0 = r14.zzawy()     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.jb r0 = r0.zzazf()     // Catch:{ all -> 0x0286 }
            java.lang.String r2 = "Upload data called on the client side before use of service was decided"
        L_0x0020:
            r0.log(r2)     // Catch:{ all -> 0x0286 }
        L_0x0023:
            r14.O = r1
            r14.n()
            return
        L_0x0029:
            boolean r2 = r2.booleanValue()     // Catch:{ all -> 0x0286 }
            if (r2 == 0) goto L_0x003a
            com.google.android.gms.internal.iz r0 = r14.zzawy()     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.jb r0 = r0.zzazd()     // Catch:{ all -> 0x0286 }
            java.lang.String r2 = "Upload called in the client side when service should be used"
            goto L_0x0020
        L_0x003a:
            long r2 = r14.L     // Catch:{ all -> 0x0286 }
            r4 = 0
            int r6 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r6 <= 0) goto L_0x0046
        L_0x0042:
            r14.l()     // Catch:{ all -> 0x0286 }
            goto L_0x0023
        L_0x0046:
            com.google.android.gms.internal.js r2 = r14.zzawx()     // Catch:{ all -> 0x0286 }
            r2.zzve()     // Catch:{ all -> 0x0286 }
            java.util.List<java.lang.Long> r2 = r14.I     // Catch:{ all -> 0x0286 }
            if (r2 == 0) goto L_0x0053
            r2 = 1
            goto L_0x0054
        L_0x0053:
            r2 = 0
        L_0x0054:
            if (r2 == 0) goto L_0x0061
            com.google.android.gms.internal.iz r0 = r14.zzawy()     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.jb r0 = r0.zzazj()     // Catch:{ all -> 0x0286 }
            java.lang.String r2 = "Uploading requested multiple times"
            goto L_0x0020
        L_0x0061:
            com.google.android.gms.internal.jd r2 = r14.zzbab()     // Catch:{ all -> 0x0286 }
            boolean r2 = r2.zzzs()     // Catch:{ all -> 0x0286 }
            if (r2 != 0) goto L_0x0079
            com.google.android.gms.internal.iz r0 = r14.zzawy()     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.jb r0 = r0.zzazj()     // Catch:{ all -> 0x0286 }
            java.lang.String r2 = "Network not connected, ignoring upload request"
            r0.log(r2)     // Catch:{ all -> 0x0286 }
            goto L_0x0042
        L_0x0079:
            com.google.android.gms.common.util.d r2 = r14.s     // Catch:{ all -> 0x0286 }
            long r2 = r2.currentTimeMillis()     // Catch:{ all -> 0x0286 }
            long r6 = com.google.android.gms.internal.ic.zzayc()     // Catch:{ all -> 0x0286 }
            long r6 = r2 - r6
            r14.a((long) r6)     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.jj r6 = r14.zzawz()     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.jl r6 = r6.zzjcr     // Catch:{ all -> 0x0286 }
            long r6 = r6.get()     // Catch:{ all -> 0x0286 }
            int r8 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            if (r8 == 0) goto L_0x00ad
            com.google.android.gms.internal.iz r4 = r14.zzawy()     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.jb r4 = r4.zzazi()     // Catch:{ all -> 0x0286 }
            java.lang.String r5 = "Uploading events. Elapsed time since last upload attempt (ms)"
            long r6 = r2 - r6
            long r6 = java.lang.Math.abs(r6)     // Catch:{ all -> 0x0286 }
            java.lang.Long r6 = java.lang.Long.valueOf(r6)     // Catch:{ all -> 0x0286 }
            r4.zzj(r5, r6)     // Catch:{ all -> 0x0286 }
        L_0x00ad:
            com.google.android.gms.internal.id r4 = r14.zzaws()     // Catch:{ all -> 0x0286 }
            java.lang.String r4 = r4.zzayf()     // Catch:{ all -> 0x0286 }
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch:{ all -> 0x0286 }
            r6 = -1
            if (r5 != 0) goto L_0x0262
            long r8 = r14.K     // Catch:{ all -> 0x0286 }
            int r5 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r5 != 0) goto L_0x00cd
            com.google.android.gms.internal.id r5 = r14.zzaws()     // Catch:{ all -> 0x0286 }
            long r5 = r5.zzaym()     // Catch:{ all -> 0x0286 }
            r14.K = r5     // Catch:{ all -> 0x0286 }
        L_0x00cd:
            com.google.android.gms.internal.ic r5 = r14.g     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.iq<java.lang.Integer> r6 = com.google.android.gms.internal.ip.zzjaj     // Catch:{ all -> 0x0286 }
            int r5 = r5.zzb(r4, r6)     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.ic r6 = r14.g     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.iq<java.lang.Integer> r7 = com.google.android.gms.internal.ip.zzjak     // Catch:{ all -> 0x0286 }
            int r6 = r6.zzb(r4, r7)     // Catch:{ all -> 0x0286 }
            int r6 = java.lang.Math.max(r1, r6)     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.id r7 = r14.zzaws()     // Catch:{ all -> 0x0286 }
            java.util.List r5 = r7.zzl(r4, r5, r6)     // Catch:{ all -> 0x0286 }
            boolean r6 = r5.isEmpty()     // Catch:{ all -> 0x0286 }
            if (r6 != 0) goto L_0x0023
            java.util.Iterator r6 = r5.iterator()     // Catch:{ all -> 0x0286 }
        L_0x00f3:
            boolean r7 = r6.hasNext()     // Catch:{ all -> 0x0286 }
            r8 = 0
            if (r7 == 0) goto L_0x010f
            java.lang.Object r7 = r6.next()     // Catch:{ all -> 0x0286 }
            android.util.Pair r7 = (android.util.Pair) r7     // Catch:{ all -> 0x0286 }
            java.lang.Object r7 = r7.first     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.no r7 = (com.google.android.gms.internal.no) r7     // Catch:{ all -> 0x0286 }
            java.lang.String r9 = r7.zzjmc     // Catch:{ all -> 0x0286 }
            boolean r9 = android.text.TextUtils.isEmpty(r9)     // Catch:{ all -> 0x0286 }
            if (r9 != 0) goto L_0x00f3
            java.lang.String r6 = r7.zzjmc     // Catch:{ all -> 0x0286 }
            goto L_0x0110
        L_0x010f:
            r6 = r8
        L_0x0110:
            if (r6 == 0) goto L_0x013b
            r7 = 0
        L_0x0113:
            int r9 = r5.size()     // Catch:{ all -> 0x0286 }
            if (r7 >= r9) goto L_0x013b
            java.lang.Object r9 = r5.get(r7)     // Catch:{ all -> 0x0286 }
            android.util.Pair r9 = (android.util.Pair) r9     // Catch:{ all -> 0x0286 }
            java.lang.Object r9 = r9.first     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.no r9 = (com.google.android.gms.internal.no) r9     // Catch:{ all -> 0x0286 }
            java.lang.String r10 = r9.zzjmc     // Catch:{ all -> 0x0286 }
            boolean r10 = android.text.TextUtils.isEmpty(r10)     // Catch:{ all -> 0x0286 }
            if (r10 != 0) goto L_0x0138
            java.lang.String r9 = r9.zzjmc     // Catch:{ all -> 0x0286 }
            boolean r9 = r9.equals(r6)     // Catch:{ all -> 0x0286 }
            if (r9 != 0) goto L_0x0138
            java.util.List r5 = r5.subList(r1, r7)     // Catch:{ all -> 0x0286 }
            goto L_0x013b
        L_0x0138:
            int r7 = r7 + 1
            goto L_0x0113
        L_0x013b:
            com.google.android.gms.internal.nn r6 = new com.google.android.gms.internal.nn     // Catch:{ all -> 0x0286 }
            r6.<init>()     // Catch:{ all -> 0x0286 }
            int r7 = r5.size()     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.no[] r7 = new com.google.android.gms.internal.no[r7]     // Catch:{ all -> 0x0286 }
            r6.zzjlm = r7     // Catch:{ all -> 0x0286 }
            java.util.ArrayList r7 = new java.util.ArrayList     // Catch:{ all -> 0x0286 }
            int r9 = r5.size()     // Catch:{ all -> 0x0286 }
            r7.<init>(r9)     // Catch:{ all -> 0x0286 }
            boolean r9 = com.google.android.gms.internal.ic.zzaye()     // Catch:{ all -> 0x0286 }
            if (r9 == 0) goto L_0x0161
            com.google.android.gms.internal.ic r9 = r14.g     // Catch:{ all -> 0x0286 }
            boolean r9 = r9.zziz(r4)     // Catch:{ all -> 0x0286 }
            if (r9 == 0) goto L_0x0161
            r9 = 1
            goto L_0x0162
        L_0x0161:
            r9 = 0
        L_0x0162:
            r10 = 0
        L_0x0163:
            com.google.android.gms.internal.no[] r11 = r6.zzjlm     // Catch:{ all -> 0x0286 }
            int r11 = r11.length     // Catch:{ all -> 0x0286 }
            if (r10 >= r11) goto L_0x01ac
            com.google.android.gms.internal.no[] r11 = r6.zzjlm     // Catch:{ all -> 0x0286 }
            java.lang.Object r12 = r5.get(r10)     // Catch:{ all -> 0x0286 }
            android.util.Pair r12 = (android.util.Pair) r12     // Catch:{ all -> 0x0286 }
            java.lang.Object r12 = r12.first     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.no r12 = (com.google.android.gms.internal.no) r12     // Catch:{ all -> 0x0286 }
            r11[r10] = r12     // Catch:{ all -> 0x0286 }
            java.lang.Object r11 = r5.get(r10)     // Catch:{ all -> 0x0286 }
            android.util.Pair r11 = (android.util.Pair) r11     // Catch:{ all -> 0x0286 }
            java.lang.Object r11 = r11.second     // Catch:{ all -> 0x0286 }
            java.lang.Long r11 = (java.lang.Long) r11     // Catch:{ all -> 0x0286 }
            r7.add(r11)     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.no[] r11 = r6.zzjlm     // Catch:{ all -> 0x0286 }
            r11 = r11[r10]     // Catch:{ all -> 0x0286 }
            r12 = 11910(0x2e86, double:5.8843E-320)
            java.lang.Long r12 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x0286 }
            r11.zzjmb = r12     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.no[] r11 = r6.zzjlm     // Catch:{ all -> 0x0286 }
            r11 = r11[r10]     // Catch:{ all -> 0x0286 }
            java.lang.Long r12 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x0286 }
            r11.zzjlr = r12     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.no[] r11 = r6.zzjlm     // Catch:{ all -> 0x0286 }
            r11 = r11[r10]     // Catch:{ all -> 0x0286 }
            java.lang.Boolean r12 = java.lang.Boolean.FALSE     // Catch:{ all -> 0x0286 }
            r11.zzjmh = r12     // Catch:{ all -> 0x0286 }
            if (r9 != 0) goto L_0x01a9
            com.google.android.gms.internal.no[] r11 = r6.zzjlm     // Catch:{ all -> 0x0286 }
            r11 = r11[r10]     // Catch:{ all -> 0x0286 }
            r11.zzjmo = r8     // Catch:{ all -> 0x0286 }
        L_0x01a9:
            int r10 = r10 + 1
            goto L_0x0163
        L_0x01ac:
            com.google.android.gms.internal.iz r5 = r14.zzawy()     // Catch:{ all -> 0x0286 }
            r9 = 2
            boolean r5 = r5.a((int) r9)     // Catch:{ all -> 0x0286 }
            if (r5 == 0) goto L_0x01bf
            com.google.android.gms.internal.ix r5 = r14.zzawt()     // Catch:{ all -> 0x0286 }
            java.lang.String r8 = r5.a((com.google.android.gms.internal.nn) r6)     // Catch:{ all -> 0x0286 }
        L_0x01bf:
            com.google.android.gms.internal.na r5 = r14.zzawu()     // Catch:{ all -> 0x0286 }
            byte[] r9 = r5.zzb(r6)     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.iq<java.lang.String> r5 = com.google.android.gms.internal.ip.zzjat     // Catch:{ all -> 0x0286 }
            java.lang.Object r5 = r5.get()     // Catch:{ all -> 0x0286 }
            r12 = r5
            java.lang.String r12 = (java.lang.String) r12     // Catch:{ all -> 0x0286 }
            java.net.URL r10 = new java.net.URL     // Catch:{ MalformedURLException -> 0x024f }
            r10.<init>(r12)     // Catch:{ MalformedURLException -> 0x024f }
            boolean r5 = r7.isEmpty()     // Catch:{ MalformedURLException -> 0x024f }
            if (r5 != 0) goto L_0x01dd
            r5 = 1
            goto L_0x01de
        L_0x01dd:
            r5 = 0
        L_0x01de:
            com.google.android.gms.common.internal.ap.checkArgument(r5)     // Catch:{ MalformedURLException -> 0x024f }
            java.util.List<java.lang.Long> r5 = r14.I     // Catch:{ MalformedURLException -> 0x024f }
            if (r5 == 0) goto L_0x01f3
            com.google.android.gms.internal.iz r5 = r14.zzawy()     // Catch:{ MalformedURLException -> 0x024f }
            com.google.android.gms.internal.jb r5 = r5.zzazd()     // Catch:{ MalformedURLException -> 0x024f }
            java.lang.String r7 = "Set uploading progress before finishing the previous upload"
            r5.log(r7)     // Catch:{ MalformedURLException -> 0x024f }
            goto L_0x01fa
        L_0x01f3:
            java.util.ArrayList r5 = new java.util.ArrayList     // Catch:{ MalformedURLException -> 0x024f }
            r5.<init>(r7)     // Catch:{ MalformedURLException -> 0x024f }
            r14.I = r5     // Catch:{ MalformedURLException -> 0x024f }
        L_0x01fa:
            com.google.android.gms.internal.jj r5 = r14.zzawz()     // Catch:{ MalformedURLException -> 0x024f }
            com.google.android.gms.internal.jl r5 = r5.zzjcs     // Catch:{ MalformedURLException -> 0x024f }
            r5.set(r2)     // Catch:{ MalformedURLException -> 0x024f }
            java.lang.String r2 = "?"
            com.google.android.gms.internal.no[] r3 = r6.zzjlm     // Catch:{ MalformedURLException -> 0x024f }
            int r3 = r3.length     // Catch:{ MalformedURLException -> 0x024f }
            if (r3 <= 0) goto L_0x0210
            com.google.android.gms.internal.no[] r2 = r6.zzjlm     // Catch:{ MalformedURLException -> 0x024f }
            r2 = r2[r1]     // Catch:{ MalformedURLException -> 0x024f }
            java.lang.String r2 = r2.zzcn     // Catch:{ MalformedURLException -> 0x024f }
        L_0x0210:
            com.google.android.gms.internal.iz r3 = r14.zzawy()     // Catch:{ MalformedURLException -> 0x024f }
            com.google.android.gms.internal.jb r3 = r3.zzazj()     // Catch:{ MalformedURLException -> 0x024f }
            java.lang.String r5 = "Uploading data. app, uncompressed size, data"
            int r6 = r9.length     // Catch:{ MalformedURLException -> 0x024f }
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)     // Catch:{ MalformedURLException -> 0x024f }
            r3.zzd(r5, r2, r6, r8)     // Catch:{ MalformedURLException -> 0x024f }
            r14.N = r0     // Catch:{ MalformedURLException -> 0x024f }
            com.google.android.gms.internal.jd r6 = r14.zzbab()     // Catch:{ MalformedURLException -> 0x024f }
            com.google.android.gms.internal.ka r11 = new com.google.android.gms.internal.ka     // Catch:{ MalformedURLException -> 0x024f }
            r11.<init>(r14)     // Catch:{ MalformedURLException -> 0x024f }
            r6.zzve()     // Catch:{ MalformedURLException -> 0x024f }
            r6.k()     // Catch:{ MalformedURLException -> 0x024f }
            com.google.android.gms.common.internal.ap.checkNotNull(r10)     // Catch:{ MalformedURLException -> 0x024f }
            com.google.android.gms.common.internal.ap.checkNotNull(r9)     // Catch:{ MalformedURLException -> 0x024f }
            com.google.android.gms.common.internal.ap.checkNotNull(r11)     // Catch:{ MalformedURLException -> 0x024f }
            com.google.android.gms.internal.js r0 = r6.zzawx()     // Catch:{ MalformedURLException -> 0x024f }
            com.google.android.gms.internal.jg r2 = new com.google.android.gms.internal.jg     // Catch:{ MalformedURLException -> 0x024f }
            r3 = 0
            r5 = r2
            r7 = r4
            r8 = r10
            r10 = r3
            r5.<init>(r6, r7, r8, r9, r10, r11)     // Catch:{ MalformedURLException -> 0x024f }
            r0.zzh(r2)     // Catch:{ MalformedURLException -> 0x024f }
            goto L_0x0023
        L_0x024f:
            com.google.android.gms.internal.iz r0 = r14.zzawy()     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.jb r0 = r0.zzazd()     // Catch:{ all -> 0x0286 }
            java.lang.String r2 = "Failed to parse upload URL. Not uploading. appId"
            java.lang.Object r3 = com.google.android.gms.internal.iz.a((java.lang.String) r4)     // Catch:{ all -> 0x0286 }
            r0.zze(r2, r3, r12)     // Catch:{ all -> 0x0286 }
            goto L_0x0023
        L_0x0262:
            r14.K = r6     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.id r0 = r14.zzaws()     // Catch:{ all -> 0x0286 }
            long r4 = com.google.android.gms.internal.ic.zzayc()     // Catch:{ all -> 0x0286 }
            long r2 = r2 - r4
            java.lang.String r0 = r0.zzba(r2)     // Catch:{ all -> 0x0286 }
            boolean r2 = android.text.TextUtils.isEmpty(r0)     // Catch:{ all -> 0x0286 }
            if (r2 != 0) goto L_0x0023
            com.google.android.gms.internal.id r2 = r14.zzaws()     // Catch:{ all -> 0x0286 }
            com.google.android.gms.internal.hy r0 = r2.zzjb(r0)     // Catch:{ all -> 0x0286 }
            if (r0 == 0) goto L_0x0023
            r14.a((com.google.android.gms.internal.hy) r0)     // Catch:{ all -> 0x0286 }
            goto L_0x0023
        L_0x0286:
            r0 = move-exception
            r14.O = r1
            r14.n()
            goto L_0x028e
        L_0x028d:
            throw r0
        L_0x028e:
            goto L_0x028d
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.jx.zzbah():void");
    }

    /* JADX WARNING: Removed duplicated region for block: B:105:0x032b A[Catch:{ SQLiteException -> 0x013b, all -> 0x0357 }] */
    /* JADX WARNING: Removed duplicated region for block: B:53:0x01a7 A[Catch:{ SQLiteException -> 0x013b, all -> 0x0357 }] */
    /* JADX WARNING: Removed duplicated region for block: B:71:0x0234 A[Catch:{ SQLiteException -> 0x013b, all -> 0x0357 }] */
    /* JADX WARNING: Removed duplicated region for block: B:89:0x028a A[Catch:{ SQLiteException -> 0x013b, all -> 0x0357 }] */
    /* JADX WARNING: Removed duplicated region for block: B:97:0x02b7 A[Catch:{ SQLiteException -> 0x013b, all -> 0x0357 }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void zzf(com.google.android.gms.internal.zzcgi r21) {
        /*
            r20 = this;
            r1 = r20
            r2 = r21
            java.lang.String r3 = "_sysu"
            java.lang.String r4 = "_sys"
            java.lang.String r5 = "_pfo"
            java.lang.String r6 = "_uwa"
            java.lang.String r0 = "app_id=?"
            com.google.android.gms.internal.js r7 = r20.zzawx()
            r7.zzve()
            r20.a()
            com.google.android.gms.common.internal.ap.checkNotNull(r21)
            java.lang.String r7 = r2.packageName
            com.google.android.gms.common.internal.ap.zzgm(r7)
            java.lang.String r7 = r2.zzixs
            boolean r7 = android.text.TextUtils.isEmpty(r7)
            if (r7 == 0) goto L_0x0029
            return
        L_0x0029:
            com.google.android.gms.internal.id r7 = r20.zzaws()
            java.lang.String r8 = r2.packageName
            com.google.android.gms.internal.hy r7 = r7.zzjb(r8)
            r8 = 0
            if (r7 == 0) goto L_0x0061
            java.lang.String r10 = r7.getGmpAppId()
            boolean r10 = android.text.TextUtils.isEmpty(r10)
            if (r10 == 0) goto L_0x0061
            java.lang.String r10 = r2.zzixs
            boolean r10 = android.text.TextUtils.isEmpty(r10)
            if (r10 != 0) goto L_0x0061
            r7.zzar(r8)
            com.google.android.gms.internal.id r10 = r20.zzaws()
            r10.zza((com.google.android.gms.internal.hy) r7)
            com.google.android.gms.internal.jr r7 = r20.zzawv()
            java.lang.String r10 = r2.packageName
            r7.zzve()
            java.util.Map<java.lang.String, com.google.android.gms.internal.ni> r7 = r7.f3259a
            r7.remove(r10)
        L_0x0061:
            boolean r7 = r2.zzixx
            if (r7 != 0) goto L_0x0069
            r20.b((com.google.android.gms.internal.zzcgi) r21)
            return
        L_0x0069:
            long r10 = r2.zziyc
            int r7 = (r10 > r8 ? 1 : (r10 == r8 ? 0 : -1))
            if (r7 != 0) goto L_0x0075
            com.google.android.gms.common.util.d r7 = r1.s
            long r10 = r7.currentTimeMillis()
        L_0x0075:
            int r7 = r2.zziyd
            r15 = 0
            r14 = 1
            if (r7 == 0) goto L_0x0095
            if (r7 == r14) goto L_0x0095
            com.google.android.gms.internal.iz r12 = r20.zzawy()
            com.google.android.gms.internal.jb r12 = r12.zzazf()
            java.lang.String r13 = r2.packageName
            java.lang.Object r13 = com.google.android.gms.internal.iz.a((java.lang.String) r13)
            java.lang.Integer r7 = java.lang.Integer.valueOf(r7)
            java.lang.String r8 = "Incorrect app type, assuming installed app. appId, appType"
            r12.zze(r8, r13, r7)
            r7 = 0
        L_0x0095:
            com.google.android.gms.internal.id r8 = r20.zzaws()
            r8.beginTransaction()
            com.google.android.gms.internal.id r8 = r20.zzaws()     // Catch:{ all -> 0x0357 }
            java.lang.String r9 = r2.packageName     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.hy r8 = r8.zzjb(r9)     // Catch:{ all -> 0x0357 }
            if (r8 == 0) goto L_0x014e
            java.lang.String r12 = r8.getGmpAppId()     // Catch:{ all -> 0x0357 }
            if (r12 == 0) goto L_0x014e
            java.lang.String r12 = r8.getGmpAppId()     // Catch:{ all -> 0x0357 }
            java.lang.String r13 = r2.zzixs     // Catch:{ all -> 0x0357 }
            boolean r12 = r12.equals(r13)     // Catch:{ all -> 0x0357 }
            if (r12 != 0) goto L_0x014e
            com.google.android.gms.internal.iz r12 = r20.zzawy()     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.jb r12 = r12.zzazf()     // Catch:{ all -> 0x0357 }
            java.lang.String r13 = "New GMP App Id passed in. Removing cached database data. appId"
            java.lang.String r16 = r8.getAppId()     // Catch:{ all -> 0x0357 }
            java.lang.Object r9 = com.google.android.gms.internal.iz.a((java.lang.String) r16)     // Catch:{ all -> 0x0357 }
            r12.zzj(r13, r9)     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.id r9 = r20.zzaws()     // Catch:{ all -> 0x0357 }
            java.lang.String r8 = r8.getAppId()     // Catch:{ all -> 0x0357 }
            r9.k()     // Catch:{ all -> 0x0357 }
            r9.zzve()     // Catch:{ all -> 0x0357 }
            com.google.android.gms.common.internal.ap.zzgm(r8)     // Catch:{ all -> 0x0357 }
            android.database.sqlite.SQLiteDatabase r12 = r9.b()     // Catch:{ SQLiteException -> 0x013b }
            java.lang.String[] r13 = new java.lang.String[r14]     // Catch:{ SQLiteException -> 0x013b }
            r13[r15] = r8     // Catch:{ SQLiteException -> 0x013b }
            java.lang.String r14 = "events"
            int r14 = r12.delete(r14, r0, r13)     // Catch:{ SQLiteException -> 0x013b }
            int r14 = r14 + r15
            java.lang.String r15 = "user_attributes"
            int r15 = r12.delete(r15, r0, r13)     // Catch:{ SQLiteException -> 0x013b }
            int r14 = r14 + r15
            java.lang.String r15 = "conditional_properties"
            int r15 = r12.delete(r15, r0, r13)     // Catch:{ SQLiteException -> 0x013b }
            int r14 = r14 + r15
            java.lang.String r15 = "apps"
            int r15 = r12.delete(r15, r0, r13)     // Catch:{ SQLiteException -> 0x013b }
            int r14 = r14 + r15
            java.lang.String r15 = "raw_events"
            int r15 = r12.delete(r15, r0, r13)     // Catch:{ SQLiteException -> 0x013b }
            int r14 = r14 + r15
            java.lang.String r15 = "raw_events_metadata"
            int r15 = r12.delete(r15, r0, r13)     // Catch:{ SQLiteException -> 0x013b }
            int r14 = r14 + r15
            java.lang.String r15 = "event_filters"
            int r15 = r12.delete(r15, r0, r13)     // Catch:{ SQLiteException -> 0x013b }
            int r14 = r14 + r15
            java.lang.String r15 = "property_filters"
            int r15 = r12.delete(r15, r0, r13)     // Catch:{ SQLiteException -> 0x013b }
            int r14 = r14 + r15
            java.lang.String r15 = "audience_filter_values"
            int r0 = r12.delete(r15, r0, r13)     // Catch:{ SQLiteException -> 0x013b }
            int r14 = r14 + r0
            if (r14 <= 0) goto L_0x014d
            com.google.android.gms.internal.iz r0 = r9.zzawy()     // Catch:{ SQLiteException -> 0x013b }
            com.google.android.gms.internal.jb r0 = r0.zzazj()     // Catch:{ SQLiteException -> 0x013b }
            java.lang.String r12 = "Deleted application data. app, records"
            java.lang.Integer r13 = java.lang.Integer.valueOf(r14)     // Catch:{ SQLiteException -> 0x013b }
            r0.zze(r12, r8, r13)     // Catch:{ SQLiteException -> 0x013b }
            goto L_0x014d
        L_0x013b:
            r0 = move-exception
            com.google.android.gms.internal.iz r9 = r9.zzawy()     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.jb r9 = r9.zzazd()     // Catch:{ all -> 0x0357 }
            java.lang.String r12 = "Error deleting application data. appId, error"
            java.lang.Object r8 = com.google.android.gms.internal.iz.a((java.lang.String) r8)     // Catch:{ all -> 0x0357 }
            r9.zze(r12, r8, r0)     // Catch:{ all -> 0x0357 }
        L_0x014d:
            r8 = 0
        L_0x014e:
            if (r8 == 0) goto L_0x0186
            java.lang.String r0 = r8.zzvj()     // Catch:{ all -> 0x0357 }
            if (r0 == 0) goto L_0x0186
            java.lang.String r0 = r8.zzvj()     // Catch:{ all -> 0x0357 }
            java.lang.String r9 = r2.zzifm     // Catch:{ all -> 0x0357 }
            boolean r0 = r0.equals(r9)     // Catch:{ all -> 0x0357 }
            if (r0 != 0) goto L_0x0186
            android.os.Bundle r0 = new android.os.Bundle     // Catch:{ all -> 0x0357 }
            r0.<init>()     // Catch:{ all -> 0x0357 }
            java.lang.String r9 = "_pv"
            java.lang.String r8 = r8.zzvj()     // Catch:{ all -> 0x0357 }
            r0.putString(r9, r8)     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.zzcha r8 = new com.google.android.gms.internal.zzcha     // Catch:{ all -> 0x0357 }
            java.lang.String r13 = "_au"
            com.google.android.gms.internal.zzcgx r14 = new com.google.android.gms.internal.zzcgx     // Catch:{ all -> 0x0357 }
            r14.<init>(r0)     // Catch:{ all -> 0x0357 }
            java.lang.String r15 = "auto"
            r12 = r8
            r9 = 1
            r16 = r10
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x0357 }
            r1.a((com.google.android.gms.internal.zzcha) r8, (com.google.android.gms.internal.zzcgi) r2)     // Catch:{ all -> 0x0357 }
            goto L_0x0187
        L_0x0186:
            r9 = 1
        L_0x0187:
            r20.b((com.google.android.gms.internal.zzcgi) r21)     // Catch:{ all -> 0x0357 }
            if (r7 != 0) goto L_0x0199
            com.google.android.gms.internal.id r0 = r20.zzaws()     // Catch:{ all -> 0x0357 }
            java.lang.String r8 = r2.packageName     // Catch:{ all -> 0x0357 }
            java.lang.String r12 = "_f"
        L_0x0194:
            com.google.android.gms.internal.il r0 = r0.zzae(r8, r12)     // Catch:{ all -> 0x0357 }
            goto L_0x01a5
        L_0x0199:
            if (r7 != r9) goto L_0x01a4
            com.google.android.gms.internal.id r0 = r20.zzaws()     // Catch:{ all -> 0x0357 }
            java.lang.String r8 = r2.packageName     // Catch:{ all -> 0x0357 }
            java.lang.String r12 = "_v"
            goto L_0x0194
        L_0x01a4:
            r0 = 0
        L_0x01a5:
            if (r0 != 0) goto L_0x032b
            r12 = 3600000(0x36ee80, double:1.7786363E-317)
            long r14 = r10 / r12
            r18 = r10
            r9 = 1
            long r14 = r14 + r9
            long r14 = r14 * r12
            java.lang.String r0 = "_r"
            java.lang.String r11 = "_c"
            if (r7 != 0) goto L_0x02cf
            com.google.android.gms.internal.zzcln r7 = new com.google.android.gms.internal.zzcln     // Catch:{ all -> 0x0357 }
            java.lang.String r13 = "_fot"
            java.lang.Long r16 = java.lang.Long.valueOf(r14)     // Catch:{ all -> 0x0357 }
            java.lang.String r17 = "auto"
            r12 = r7
            r14 = r18
            r12.<init>(r13, r14, r16, r17)     // Catch:{ all -> 0x0357 }
            r1.a((com.google.android.gms.internal.zzcln) r7, (com.google.android.gms.internal.zzcgi) r2)     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.js r7 = r20.zzawx()     // Catch:{ all -> 0x0357 }
            r7.zzve()     // Catch:{ all -> 0x0357 }
            r20.a()     // Catch:{ all -> 0x0357 }
            android.os.Bundle r7 = new android.os.Bundle     // Catch:{ all -> 0x0357 }
            r7.<init>()     // Catch:{ all -> 0x0357 }
            r7.putLong(r11, r9)     // Catch:{ all -> 0x0357 }
            r7.putLong(r0, r9)     // Catch:{ all -> 0x0357 }
            r11 = 0
            r7.putLong(r6, r11)     // Catch:{ all -> 0x0357 }
            r7.putLong(r5, r11)     // Catch:{ all -> 0x0357 }
            r7.putLong(r4, r11)     // Catch:{ all -> 0x0357 }
            r7.putLong(r3, r11)     // Catch:{ all -> 0x0357 }
            android.content.Context r0 = r1.f     // Catch:{ all -> 0x0357 }
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch:{ all -> 0x0357 }
            if (r0 != 0) goto L_0x020c
            com.google.android.gms.internal.iz r0 = r20.zzawy()     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.jb r0 = r0.zzazd()     // Catch:{ all -> 0x0357 }
            java.lang.String r3 = "PackageManager is null, first open report might be inaccurate. appId"
            java.lang.String r4 = r2.packageName     // Catch:{ all -> 0x0357 }
            java.lang.Object r4 = com.google.android.gms.internal.iz.a((java.lang.String) r4)     // Catch:{ all -> 0x0357 }
            r0.zzj(r3, r4)     // Catch:{ all -> 0x0357 }
            goto L_0x029c
        L_0x020c:
            android.content.Context r0 = r1.f     // Catch:{ NameNotFoundException -> 0x021c }
            com.google.android.gms.internal.fq r0 = com.google.android.gms.internal.fr.zzdb(r0)     // Catch:{ NameNotFoundException -> 0x021c }
            java.lang.String r11 = r2.packageName     // Catch:{ NameNotFoundException -> 0x021c }
            r14 = 0
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r11, r14)     // Catch:{ NameNotFoundException -> 0x021a }
            goto L_0x0232
        L_0x021a:
            r0 = move-exception
            goto L_0x021e
        L_0x021c:
            r0 = move-exception
            r14 = 0
        L_0x021e:
            com.google.android.gms.internal.iz r11 = r20.zzawy()     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.jb r11 = r11.zzazd()     // Catch:{ all -> 0x0357 }
            java.lang.String r12 = "Package info is null, first open report might be inaccurate. appId"
            java.lang.String r13 = r2.packageName     // Catch:{ all -> 0x0357 }
            java.lang.Object r13 = com.google.android.gms.internal.iz.a((java.lang.String) r13)     // Catch:{ all -> 0x0357 }
            r11.zze(r12, r13, r0)     // Catch:{ all -> 0x0357 }
            r0 = 0
        L_0x0232:
            if (r0 == 0) goto L_0x0265
            long r11 = r0.firstInstallTime     // Catch:{ all -> 0x0357 }
            r15 = 0
            int r13 = (r11 > r15 ? 1 : (r11 == r15 ? 0 : -1))
            if (r13 == 0) goto L_0x0265
            long r11 = r0.firstInstallTime     // Catch:{ all -> 0x0357 }
            long r14 = r0.lastUpdateTime     // Catch:{ all -> 0x0357 }
            int r0 = (r11 > r14 ? 1 : (r11 == r14 ? 0 : -1))
            if (r0 == 0) goto L_0x0249
            r7.putLong(r6, r9)     // Catch:{ all -> 0x0357 }
            r0 = 0
            goto L_0x024a
        L_0x0249:
            r0 = 1
        L_0x024a:
            com.google.android.gms.internal.zzcln r6 = new com.google.android.gms.internal.zzcln     // Catch:{ all -> 0x0357 }
            java.lang.String r13 = "_fi"
            if (r0 == 0) goto L_0x0252
            r11 = r9
            goto L_0x0254
        L_0x0252:
            r11 = 0
        L_0x0254:
            java.lang.Long r16 = java.lang.Long.valueOf(r11)     // Catch:{ all -> 0x0357 }
            java.lang.String r17 = "auto"
            r12 = r6
            r11 = 0
            r14 = r18
            r12.<init>(r13, r14, r16, r17)     // Catch:{ all -> 0x0357 }
            r1.a((com.google.android.gms.internal.zzcln) r6, (com.google.android.gms.internal.zzcgi) r2)     // Catch:{ all -> 0x0357 }
            goto L_0x0266
        L_0x0265:
            r11 = 0
        L_0x0266:
            android.content.Context r0 = r1.f     // Catch:{ NameNotFoundException -> 0x0273 }
            com.google.android.gms.internal.fq r0 = com.google.android.gms.internal.fr.zzdb(r0)     // Catch:{ NameNotFoundException -> 0x0273 }
            java.lang.String r6 = r2.packageName     // Catch:{ NameNotFoundException -> 0x0273 }
            android.content.pm.ApplicationInfo r0 = r0.getApplicationInfo(r6, r11)     // Catch:{ NameNotFoundException -> 0x0273 }
            goto L_0x0288
        L_0x0273:
            r0 = move-exception
            com.google.android.gms.internal.iz r6 = r20.zzawy()     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.jb r6 = r6.zzazd()     // Catch:{ all -> 0x0357 }
            java.lang.String r11 = "Application info is null, first open report might be inaccurate. appId"
            java.lang.String r12 = r2.packageName     // Catch:{ all -> 0x0357 }
            java.lang.Object r12 = com.google.android.gms.internal.iz.a((java.lang.String) r12)     // Catch:{ all -> 0x0357 }
            r6.zze(r11, r12, r0)     // Catch:{ all -> 0x0357 }
            r0 = 0
        L_0x0288:
            if (r0 == 0) goto L_0x029c
            int r6 = r0.flags     // Catch:{ all -> 0x0357 }
            r8 = 1
            r6 = r6 & r8
            if (r6 == 0) goto L_0x0293
            r7.putLong(r4, r9)     // Catch:{ all -> 0x0357 }
        L_0x0293:
            int r0 = r0.flags     // Catch:{ all -> 0x0357 }
            r0 = r0 & 128(0x80, float:1.794E-43)
            if (r0 == 0) goto L_0x029c
            r7.putLong(r3, r9)     // Catch:{ all -> 0x0357 }
        L_0x029c:
            com.google.android.gms.internal.id r0 = r20.zzaws()     // Catch:{ all -> 0x0357 }
            java.lang.String r3 = r2.packageName     // Catch:{ all -> 0x0357 }
            com.google.android.gms.common.internal.ap.zzgm(r3)     // Catch:{ all -> 0x0357 }
            r0.zzve()     // Catch:{ all -> 0x0357 }
            r0.k()     // Catch:{ all -> 0x0357 }
            java.lang.String r4 = "first_open_count"
            long r3 = r0.c(r3, r4)     // Catch:{ all -> 0x0357 }
            r11 = 0
            int r0 = (r3 > r11 ? 1 : (r3 == r11 ? 0 : -1))
            if (r0 < 0) goto L_0x02ba
            r7.putLong(r5, r3)     // Catch:{ all -> 0x0357 }
        L_0x02ba:
            com.google.android.gms.internal.zzcha r0 = new com.google.android.gms.internal.zzcha     // Catch:{ all -> 0x0357 }
            java.lang.String r13 = "_f"
            com.google.android.gms.internal.zzcgx r14 = new com.google.android.gms.internal.zzcgx     // Catch:{ all -> 0x0357 }
            r14.<init>(r7)     // Catch:{ all -> 0x0357 }
            java.lang.String r15 = "auto"
            r12 = r0
            r16 = r18
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x0357 }
        L_0x02cb:
            r1.a((com.google.android.gms.internal.zzcha) r0, (com.google.android.gms.internal.zzcgi) r2)     // Catch:{ all -> 0x0357 }
            goto L_0x030c
        L_0x02cf:
            r3 = 1
            if (r7 != r3) goto L_0x030c
            com.google.android.gms.internal.zzcln r3 = new com.google.android.gms.internal.zzcln     // Catch:{ all -> 0x0357 }
            java.lang.String r13 = "_fvt"
            java.lang.Long r16 = java.lang.Long.valueOf(r14)     // Catch:{ all -> 0x0357 }
            java.lang.String r17 = "auto"
            r12 = r3
            r14 = r18
            r12.<init>(r13, r14, r16, r17)     // Catch:{ all -> 0x0357 }
            r1.a((com.google.android.gms.internal.zzcln) r3, (com.google.android.gms.internal.zzcgi) r2)     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.js r3 = r20.zzawx()     // Catch:{ all -> 0x0357 }
            r3.zzve()     // Catch:{ all -> 0x0357 }
            r20.a()     // Catch:{ all -> 0x0357 }
            android.os.Bundle r3 = new android.os.Bundle     // Catch:{ all -> 0x0357 }
            r3.<init>()     // Catch:{ all -> 0x0357 }
            r3.putLong(r11, r9)     // Catch:{ all -> 0x0357 }
            r3.putLong(r0, r9)     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.zzcha r0 = new com.google.android.gms.internal.zzcha     // Catch:{ all -> 0x0357 }
            java.lang.String r13 = "_v"
            com.google.android.gms.internal.zzcgx r14 = new com.google.android.gms.internal.zzcgx     // Catch:{ all -> 0x0357 }
            r14.<init>(r3)     // Catch:{ all -> 0x0357 }
            java.lang.String r15 = "auto"
            r12 = r0
            r16 = r18
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x0357 }
            goto L_0x02cb
        L_0x030c:
            android.os.Bundle r0 = new android.os.Bundle     // Catch:{ all -> 0x0357 }
            r0.<init>()     // Catch:{ all -> 0x0357 }
            java.lang.String r3 = "_et"
            r0.putLong(r3, r9)     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.zzcha r3 = new com.google.android.gms.internal.zzcha     // Catch:{ all -> 0x0357 }
            java.lang.String r13 = "_e"
            com.google.android.gms.internal.zzcgx r14 = new com.google.android.gms.internal.zzcgx     // Catch:{ all -> 0x0357 }
            r14.<init>(r0)     // Catch:{ all -> 0x0357 }
            java.lang.String r15 = "auto"
            r12 = r3
            r16 = r18
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x0357 }
        L_0x0327:
            r1.a((com.google.android.gms.internal.zzcha) r3, (com.google.android.gms.internal.zzcgi) r2)     // Catch:{ all -> 0x0357 }
            goto L_0x0348
        L_0x032b:
            r18 = r10
            boolean r0 = r2.zzixy     // Catch:{ all -> 0x0357 }
            if (r0 == 0) goto L_0x0348
            android.os.Bundle r0 = new android.os.Bundle     // Catch:{ all -> 0x0357 }
            r0.<init>()     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.zzcha r3 = new com.google.android.gms.internal.zzcha     // Catch:{ all -> 0x0357 }
            java.lang.String r13 = "_cd"
            com.google.android.gms.internal.zzcgx r14 = new com.google.android.gms.internal.zzcgx     // Catch:{ all -> 0x0357 }
            r14.<init>(r0)     // Catch:{ all -> 0x0357 }
            java.lang.String r15 = "auto"
            r12 = r3
            r16 = r18
            r12.<init>(r13, r14, r15, r16)     // Catch:{ all -> 0x0357 }
            goto L_0x0327
        L_0x0348:
            com.google.android.gms.internal.id r0 = r20.zzaws()     // Catch:{ all -> 0x0357 }
            r0.setTransactionSuccessful()     // Catch:{ all -> 0x0357 }
            com.google.android.gms.internal.id r0 = r20.zzaws()
            r0.endTransaction()
            return
        L_0x0357:
            r0 = move-exception
            com.google.android.gms.internal.id r2 = r20.zzaws()
            r2.endTransaction()
            goto L_0x0361
        L_0x0360:
            throw r0
        L_0x0361:
            goto L_0x0360
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.jx.zzf(com.google.android.gms.internal.zzcgi):void");
    }

    static /* synthetic */ void a(jx jxVar) {
        jb jbVar;
        String str;
        jxVar.zzawx().zzve();
        jxVar.n.zzazw();
        jxVar.h.zzazw();
        jxVar.x.zzazw();
        jxVar.zzawy().zzazh().zzj("App measurement is starting up, version", 11910L);
        jxVar.zzawy().zzazh().log("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String d2 = jxVar.x.d();
        if (jxVar.zzawu().zzkj(d2)) {
            jbVar = jxVar.zzawy().zzazh();
            str = "Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.";
        } else {
            jbVar = jxVar.zzawy().zzazh();
            String valueOf = String.valueOf(d2);
            str = valueOf.length() != 0 ? "To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(valueOf) : new String("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ");
        }
        jbVar.log(str);
        jxVar.zzawy().zzazi().log("Debug-level message logging enabled");
        if (jxVar.c != jxVar.J) {
            jxVar.zzawy().zzazd().zze("Not all components initialized", Integer.valueOf(jxVar.c), Integer.valueOf(jxVar.J));
        }
        jxVar.C = true;
    }
}
