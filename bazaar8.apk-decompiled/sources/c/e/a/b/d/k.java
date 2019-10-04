package c.e.a.b.d;

import android.content.Context;
import android.os.RemoteException;
import android.os.StrictMode;
import android.util.Log;
import c.e.a.b.d.d.O;
import c.e.a.b.d.d.P;
import c.e.a.b.d.d.r;
import c.e.a.b.e.b;
import com.google.android.gms.common.zzk;
import com.google.android.gms.dynamite.DynamiteModule;
import java.util.concurrent.Callable;

public final class k {

    /* renamed from: a  reason: collision with root package name */
    public static volatile O f10077a;

    /* renamed from: b  reason: collision with root package name */
    public static final Object f10078b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public static Context f10079c;

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0019, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static synchronized void a(android.content.Context r2) {
        /*
            java.lang.Class<c.e.a.b.d.k> r0 = c.e.a.b.d.k.class
            monitor-enter(r0)
            android.content.Context r1 = f10079c     // Catch:{ all -> 0x001a }
            if (r1 != 0) goto L_0x0011
            if (r2 == 0) goto L_0x0018
            android.content.Context r2 = r2.getApplicationContext()     // Catch:{ all -> 0x001a }
            f10079c = r2     // Catch:{ all -> 0x001a }
            monitor-exit(r0)
            return
        L_0x0011:
            java.lang.String r2 = "GoogleCertificates"
            java.lang.String r1 = "GoogleCertificates has been initialized already"
            android.util.Log.w(r2, r1)     // Catch:{ all -> 0x001a }
        L_0x0018:
            monitor-exit(r0)
            return
        L_0x001a:
            r2 = move-exception
            monitor-exit(r0)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.d.k.a(android.content.Context):void");
    }

    public static t b(String str, m mVar, boolean z, boolean z2) {
        try {
            if (f10077a == null) {
                r.a(f10079c);
                synchronized (f10078b) {
                    if (f10077a == null) {
                        f10077a = P.a(DynamiteModule.a(f10079c, DynamiteModule.f13155k, "com.google.android.gms.googlecertificates").a("com.google.android.gms.common.GoogleCertificatesImpl"));
                    }
                }
            }
            r.a(f10079c);
            try {
                if (f10077a.a(new zzk(str, mVar, z, z2), b.a(f10079c.getPackageManager()))) {
                    return t.b();
                }
                return t.a((Callable<String>) new l(z, str, mVar));
            } catch (RemoteException e2) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e2);
                return t.a("module call", e2);
            }
        } catch (DynamiteModule.LoadingException e3) {
            Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e3);
            String valueOf = String.valueOf(e3.getMessage());
            return t.a(valueOf.length() != 0 ? "module init: ".concat(valueOf) : new String("module init: "), e3);
        }
    }

    public static t a(String str, m mVar, boolean z, boolean z2) {
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            return b(str, mVar, z, z2);
        } finally {
            StrictMode.setThreadPolicy(allowThreadDiskReads);
        }
    }

    public static final /* synthetic */ String a(boolean z, String str, m mVar) {
        boolean z2 = true;
        if (z || !b(str, mVar, true, false).f10089b) {
            z2 = false;
        }
        return t.a(str, mVar, z, z2);
    }
}
