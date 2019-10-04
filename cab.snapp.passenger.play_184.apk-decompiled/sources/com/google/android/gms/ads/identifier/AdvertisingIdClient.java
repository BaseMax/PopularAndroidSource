package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.SystemClock;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.ap;
import com.google.android.gms.common.j;
import com.google.android.gms.internal.tj;
import com.google.android.gms.internal.tk;
import com.koushikdutta.ion.bitmap.IonBitmapCache;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

public class AdvertisingIdClient {
    private final Context mContext;
    private f zzamu;
    private tj zzamv;
    private boolean zzamw;
    private Object zzamx;
    private a zzamy;
    private boolean zzamz;
    private long zzana;

    public static final class Info {
        private final String zzang;
        private final boolean zzanh;

        public Info(String str, boolean z) {
            this.zzang = str;
            this.zzanh = z;
        }

        public final String getId() {
            return this.zzang;
        }

        public final boolean isLimitAdTrackingEnabled() {
            return this.zzanh;
        }

        public final String toString() {
            String str = this.zzang;
            boolean z = this.zzanh;
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 7);
            sb.append("{");
            sb.append(str);
            sb.append("}");
            sb.append(z);
            return sb.toString();
        }
    }

    static class a extends Thread {

        /* renamed from: a  reason: collision with root package name */
        CountDownLatch f2560a = new CountDownLatch(1);

        /* renamed from: b  reason: collision with root package name */
        boolean f2561b = false;
        private WeakReference<AdvertisingIdClient> c;
        private long d;

        public a(AdvertisingIdClient advertisingIdClient, long j) {
            this.c = new WeakReference<>(advertisingIdClient);
            this.d = j;
            start();
        }

        private final void a() {
            AdvertisingIdClient advertisingIdClient = (AdvertisingIdClient) this.c.get();
            if (advertisingIdClient != null) {
                advertisingIdClient.finish();
                this.f2561b = true;
            }
        }

        public final void run() {
            try {
                if (!this.f2560a.await(this.d, TimeUnit.MILLISECONDS)) {
                    a();
                }
            } catch (InterruptedException unused) {
                a();
            }
        }
    }

    public AdvertisingIdClient(Context context) {
        this(context, IonBitmapCache.DEFAULT_ERROR_CACHE_DURATION, false, false);
    }

    public AdvertisingIdClient(Context context, long j, boolean z, boolean z2) {
        this.zzamx = new Object();
        ap.checkNotNull(context);
        if (z) {
            Context applicationContext = context.getApplicationContext();
            if (applicationContext != null) {
                context = applicationContext;
            }
        }
        this.mContext = context;
        this.zzamw = false;
        this.zzana = j;
        this.zzamz = z2;
    }

    public static Info getAdvertisingIdInfo(Context context) throws IOException, IllegalStateException, c, d {
        b bVar = new b(context);
        boolean z = bVar.getBoolean("gads:ad_id_app_context:enabled", false);
        float a2 = bVar.a("gads:ad_id_app_context:ping_ratio");
        String a3 = bVar.a("gads:ad_id_use_shared_preference:experiment_id", "");
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1, z, bVar.getBoolean("gads:ad_id_use_persistent_service:enabled", false));
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            advertisingIdClient.start(false);
            Info info = advertisingIdClient.getInfo();
            advertisingIdClient.zza(info, z, a2, SystemClock.elapsedRealtime() - elapsedRealtime, a3, null);
            advertisingIdClient.finish();
            return info;
        } catch (Throwable th) {
            advertisingIdClient.finish();
            throw th;
        }
    }

    public static boolean getIsAdIdFakeForDebugLogging(Context context) throws IOException, c, d {
        b bVar = new b(context);
        AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(context, -1, bVar.getBoolean("gads:ad_id_app_context:enabled", false), bVar.getBoolean("com.google.android.gms.ads.identifier.service.PERSISTENT_START", false));
        try {
            advertisingIdClient.start(false);
            return advertisingIdClient.getIsAdIdFakeForDebugLogging();
        } finally {
            advertisingIdClient.finish();
        }
    }

    public static void setShouldSkipGmsCoreVersionCheck(boolean z) {
    }

    private final void start(boolean z) throws IOException, IllegalStateException, c, d {
        ap.zzgn("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.zzamw) {
                finish();
            }
            this.zzamu = zzc(this.mContext, this.zzamz);
            this.zzamv = zza(this.mContext, this.zzamu);
            this.zzamw = true;
            if (z) {
                zzbo();
            }
        }
    }

    private static tj zza(Context context, f fVar) throws IOException {
        try {
            return tk.zzc(fVar.zza(10000, TimeUnit.MILLISECONDS));
        } catch (InterruptedException unused) {
            throw new IOException("Interrupted exception");
        } catch (Throwable th) {
            throw new IOException(th);
        }
    }

    private final boolean zza(Info info, boolean z, float f, long j, String str, Throwable th) {
        if (Math.random() > ((double) f)) {
            return false;
        }
        HashMap hashMap = new HashMap();
        String str2 = "1";
        hashMap.put("app_context", z ? str2 : "0");
        if (info != null) {
            if (!info.isLimitAdTrackingEnabled()) {
                str2 = "0";
            }
            hashMap.put("limit_ad_tracking", str2);
        }
        if (!(info == null || info.getId() == null)) {
            hashMap.put("ad_id_size", Integer.toString(info.getId().length()));
        }
        if (th != null) {
            hashMap.put("error", th.getClass().getName());
        }
        if (str != null && !str.isEmpty()) {
            hashMap.put("experiment_id", str);
        }
        hashMap.put("tag", "AdvertisingIdClient");
        hashMap.put("time_spent", Long.toString(j));
        new a(hashMap).start();
        return true;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(7:2|3|(3:5|6|7)|8|9|(1:11)|12) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:8:0x0013 */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x001b  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private final void zzbo() {
        /*
            r6 = this;
            java.lang.Object r0 = r6.zzamx
            monitor-enter(r0)
            com.google.android.gms.ads.identifier.AdvertisingIdClient$a r1 = r6.zzamy     // Catch:{ all -> 0x0026 }
            if (r1 == 0) goto L_0x0013
            com.google.android.gms.ads.identifier.AdvertisingIdClient$a r1 = r6.zzamy     // Catch:{ all -> 0x0026 }
            java.util.concurrent.CountDownLatch r1 = r1.f2560a     // Catch:{ all -> 0x0026 }
            r1.countDown()     // Catch:{ all -> 0x0026 }
            com.google.android.gms.ads.identifier.AdvertisingIdClient$a r1 = r6.zzamy     // Catch:{ InterruptedException -> 0x0013 }
            r1.join()     // Catch:{ InterruptedException -> 0x0013 }
        L_0x0013:
            long r1 = r6.zzana     // Catch:{ all -> 0x0026 }
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L_0x0024
            com.google.android.gms.ads.identifier.AdvertisingIdClient$a r1 = new com.google.android.gms.ads.identifier.AdvertisingIdClient$a     // Catch:{ all -> 0x0026 }
            long r2 = r6.zzana     // Catch:{ all -> 0x0026 }
            r1.<init>(r6, r2)     // Catch:{ all -> 0x0026 }
            r6.zzamy = r1     // Catch:{ all -> 0x0026 }
        L_0x0024:
            monitor-exit(r0)     // Catch:{ all -> 0x0026 }
            return
        L_0x0026:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0026 }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.identifier.AdvertisingIdClient.zzbo():void");
    }

    private static f zzc(Context context, boolean z) throws IOException, c, d {
        try {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
            int isGooglePlayServicesAvailable = j.zzafy().isGooglePlayServicesAvailable(context);
            if (isGooglePlayServicesAvailable == 0 || isGooglePlayServicesAvailable == 2) {
                String str = z ? "com.google.android.gms.ads.identifier.service.PERSISTENT_START" : e.GOOGLE_PLAY_SERVICES_INTENT;
                f fVar = new f();
                Intent intent = new Intent(str);
                intent.setPackage("com.google.android.gms");
                try {
                    if (com.google.android.gms.common.stats.a.zzamc().zza(context, intent, fVar, 1)) {
                        return fVar;
                    }
                    throw new IOException("Connection failure");
                } catch (Throwable th) {
                    throw new IOException(th);
                }
            } else {
                throw new IOException("Google Play services not available");
            }
        } catch (PackageManager.NameNotFoundException unused) {
            throw new c(9);
        }
    }

    /* access modifiers changed from: protected */
    public void finalize() throws Throwable {
        finish();
        super.finalize();
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0028, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void finish() {
        /*
            r2 = this;
            java.lang.String r0 = "Calling this from your main thread can lead to deadlock"
            com.google.android.gms.common.internal.ap.zzgn(r0)
            monitor-enter(r2)
            android.content.Context r0 = r2.mContext     // Catch:{ all -> 0x0029 }
            if (r0 == 0) goto L_0x0027
            com.google.android.gms.common.f r0 = r2.zzamu     // Catch:{ all -> 0x0029 }
            if (r0 != 0) goto L_0x000f
            goto L_0x0027
        L_0x000f:
            boolean r0 = r2.zzamw     // Catch:{ all -> 0x001d }
            if (r0 == 0) goto L_0x001d
            com.google.android.gms.common.stats.a.zzamc()     // Catch:{ all -> 0x001d }
            android.content.Context r0 = r2.mContext     // Catch:{ all -> 0x001d }
            com.google.android.gms.common.f r1 = r2.zzamu     // Catch:{ all -> 0x001d }
            r0.unbindService(r1)     // Catch:{ all -> 0x001d }
        L_0x001d:
            r0 = 0
            r2.zzamw = r0     // Catch:{ all -> 0x0029 }
            r0 = 0
            r2.zzamv = r0     // Catch:{ all -> 0x0029 }
            r2.zzamu = r0     // Catch:{ all -> 0x0029 }
            monitor-exit(r2)     // Catch:{ all -> 0x0029 }
            return
        L_0x0027:
            monitor-exit(r2)     // Catch:{ all -> 0x0029 }
            return
        L_0x0029:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0029 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.identifier.AdvertisingIdClient.finish():void");
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:39|40|41) */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0065, code lost:
        throw new java.io.IOException("Remote exception");
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:39:0x005e */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public com.google.android.gms.ads.identifier.AdvertisingIdClient.Info getInfo() throws java.io.IOException {
        /*
            r4 = this;
            java.lang.String r0 = "Calling this from your main thread can lead to deadlock"
            com.google.android.gms.common.internal.ap.zzgn(r0)
            monitor-enter(r4)
            boolean r0 = r4.zzamw     // Catch:{ all -> 0x0066 }
            if (r0 != 0) goto L_0x003d
            java.lang.Object r0 = r4.zzamx     // Catch:{ all -> 0x0066 }
            monitor-enter(r0)     // Catch:{ all -> 0x0066 }
            com.google.android.gms.ads.identifier.AdvertisingIdClient$a r1 = r4.zzamy     // Catch:{ all -> 0x003a }
            if (r1 == 0) goto L_0x0032
            com.google.android.gms.ads.identifier.AdvertisingIdClient$a r1 = r4.zzamy     // Catch:{ all -> 0x003a }
            boolean r1 = r1.f2561b     // Catch:{ all -> 0x003a }
            if (r1 == 0) goto L_0x0032
            monitor-exit(r0)     // Catch:{ all -> 0x003a }
            r0 = 0
            r4.start(r0)     // Catch:{ Exception -> 0x0029 }
            boolean r0 = r4.zzamw     // Catch:{ all -> 0x0066 }
            if (r0 == 0) goto L_0x0021
            goto L_0x003d
        L_0x0021:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0066 }
            java.lang.String r1 = "AdvertisingIdClient cannot reconnect."
            r0.<init>(r1)     // Catch:{ all -> 0x0066 }
            throw r0     // Catch:{ all -> 0x0066 }
        L_0x0029:
            r0 = move-exception
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x0066 }
            java.lang.String r2 = "AdvertisingIdClient cannot reconnect."
            r1.<init>(r2, r0)     // Catch:{ all -> 0x0066 }
            throw r1     // Catch:{ all -> 0x0066 }
        L_0x0032:
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x003a }
            java.lang.String r2 = "AdvertisingIdClient is not connected."
            r1.<init>(r2)     // Catch:{ all -> 0x003a }
            throw r1     // Catch:{ all -> 0x003a }
        L_0x003a:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x003a }
            throw r1     // Catch:{ all -> 0x0066 }
        L_0x003d:
            com.google.android.gms.common.f r0 = r4.zzamu     // Catch:{ all -> 0x0066 }
            com.google.android.gms.common.internal.ap.checkNotNull(r0)     // Catch:{ all -> 0x0066 }
            com.google.android.gms.internal.tj r0 = r4.zzamv     // Catch:{ all -> 0x0066 }
            com.google.android.gms.common.internal.ap.checkNotNull(r0)     // Catch:{ all -> 0x0066 }
            com.google.android.gms.ads.identifier.AdvertisingIdClient$Info r0 = new com.google.android.gms.ads.identifier.AdvertisingIdClient$Info     // Catch:{ RemoteException -> 0x005e }
            com.google.android.gms.internal.tj r1 = r4.zzamv     // Catch:{ RemoteException -> 0x005e }
            java.lang.String r1 = r1.getId()     // Catch:{ RemoteException -> 0x005e }
            com.google.android.gms.internal.tj r2 = r4.zzamv     // Catch:{ RemoteException -> 0x005e }
            r3 = 1
            boolean r2 = r2.zzb(r3)     // Catch:{ RemoteException -> 0x005e }
            r0.<init>(r1, r2)     // Catch:{ RemoteException -> 0x005e }
            monitor-exit(r4)     // Catch:{ all -> 0x0066 }
            r4.zzbo()
            return r0
        L_0x005e:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x0066 }
            java.lang.String r1 = "Remote exception"
            r0.<init>(r1)     // Catch:{ all -> 0x0066 }
            throw r0     // Catch:{ all -> 0x0066 }
        L_0x0066:
            r0 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x0066 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.identifier.AdvertisingIdClient.getInfo():com.google.android.gms.ads.identifier.AdvertisingIdClient$Info");
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:39|40|41) */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0059, code lost:
        throw new java.io.IOException("Remote exception");
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:39:0x0052 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean getIsAdIdFakeForDebugLogging() throws java.io.IOException {
        /*
            r3 = this;
            java.lang.String r0 = "Calling this from your main thread can lead to deadlock"
            com.google.android.gms.common.internal.ap.zzgn(r0)
            monitor-enter(r3)
            boolean r0 = r3.zzamw     // Catch:{ all -> 0x005a }
            if (r0 != 0) goto L_0x003d
            java.lang.Object r0 = r3.zzamx     // Catch:{ all -> 0x005a }
            monitor-enter(r0)     // Catch:{ all -> 0x005a }
            com.google.android.gms.ads.identifier.AdvertisingIdClient$a r1 = r3.zzamy     // Catch:{ all -> 0x003a }
            if (r1 == 0) goto L_0x0032
            com.google.android.gms.ads.identifier.AdvertisingIdClient$a r1 = r3.zzamy     // Catch:{ all -> 0x003a }
            boolean r1 = r1.f2561b     // Catch:{ all -> 0x003a }
            if (r1 == 0) goto L_0x0032
            monitor-exit(r0)     // Catch:{ all -> 0x003a }
            r0 = 0
            r3.start(r0)     // Catch:{ Exception -> 0x0029 }
            boolean r0 = r3.zzamw     // Catch:{ all -> 0x005a }
            if (r0 == 0) goto L_0x0021
            goto L_0x003d
        L_0x0021:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x005a }
            java.lang.String r1 = "AdvertisingIdClient cannot reconnect."
            r0.<init>(r1)     // Catch:{ all -> 0x005a }
            throw r0     // Catch:{ all -> 0x005a }
        L_0x0029:
            r0 = move-exception
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x005a }
            java.lang.String r2 = "AdvertisingIdClient cannot reconnect."
            r1.<init>(r2, r0)     // Catch:{ all -> 0x005a }
            throw r1     // Catch:{ all -> 0x005a }
        L_0x0032:
            java.io.IOException r1 = new java.io.IOException     // Catch:{ all -> 0x003a }
            java.lang.String r2 = "AdvertisingIdClient is not connected."
            r1.<init>(r2)     // Catch:{ all -> 0x003a }
            throw r1     // Catch:{ all -> 0x003a }
        L_0x003a:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x003a }
            throw r1     // Catch:{ all -> 0x005a }
        L_0x003d:
            com.google.android.gms.common.f r0 = r3.zzamu     // Catch:{ all -> 0x005a }
            com.google.android.gms.common.internal.ap.checkNotNull(r0)     // Catch:{ all -> 0x005a }
            com.google.android.gms.internal.tj r0 = r3.zzamv     // Catch:{ all -> 0x005a }
            com.google.android.gms.common.internal.ap.checkNotNull(r0)     // Catch:{ all -> 0x005a }
            com.google.android.gms.internal.tj r0 = r3.zzamv     // Catch:{ RemoteException -> 0x0052 }
            boolean r0 = r0.zzbp()     // Catch:{ RemoteException -> 0x0052 }
            monitor-exit(r3)     // Catch:{ all -> 0x005a }
            r3.zzbo()
            return r0
        L_0x0052:
            java.io.IOException r0 = new java.io.IOException     // Catch:{ all -> 0x005a }
            java.lang.String r1 = "Remote exception"
            r0.<init>(r1)     // Catch:{ all -> 0x005a }
            throw r0     // Catch:{ all -> 0x005a }
        L_0x005a:
            r0 = move-exception
            monitor-exit(r3)     // Catch:{ all -> 0x005a }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.identifier.AdvertisingIdClient.getIsAdIdFakeForDebugLogging():boolean");
    }

    public void start() throws IOException, IllegalStateException, c, d {
        start(true);
    }
}
