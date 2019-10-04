package e.a.a.a.a.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;

/* compiled from: DataCollectionArbiter */
public class n {

    /* renamed from: a  reason: collision with root package name */
    public static n f13685a;

    /* renamed from: b  reason: collision with root package name */
    public static Object f13686b = new Object();

    /* renamed from: c  reason: collision with root package name */
    public final SharedPreferences f13687c;

    /* renamed from: d  reason: collision with root package name */
    public volatile boolean f13688d;

    /* renamed from: e  reason: collision with root package name */
    public volatile boolean f13689e;

    /* renamed from: f  reason: collision with root package name */
    public final t f13690f;

    /* renamed from: g  reason: collision with root package name */
    public boolean f13691g = false;

    /* JADX WARNING: Removed duplicated region for block: B:21:0x0066  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public n(android.content.Context r7) {
        /*
            r6 = this;
            r6.<init>()
            r0 = 0
            r6.f13691g = r0
            if (r7 == 0) goto L_0x006a
            java.lang.String r1 = "com.google.firebase.crashlytics.prefs"
            android.content.SharedPreferences r1 = r7.getSharedPreferences(r1, r0)
            r6.f13687c = r1
            e.a.a.a.a.b.t r1 = e.a.a.a.a.b.u.a(r7)
            r6.f13690f = r1
            android.content.SharedPreferences r1 = r6.f13687c
            java.lang.String r2 = "firebase_crashlytics_collection_enabled"
            boolean r1 = r1.contains(r2)
            r3 = 1
            if (r1 == 0) goto L_0x0029
            android.content.SharedPreferences r1 = r6.f13687c
            boolean r1 = r1.getBoolean(r2, r3)
        L_0x0027:
            r2 = 1
            goto L_0x005c
        L_0x0029:
            android.content.pm.PackageManager r1 = r7.getPackageManager()     // Catch:{ NameNotFoundException -> 0x004e }
            if (r1 == 0) goto L_0x005a
            java.lang.String r4 = r7.getPackageName()     // Catch:{ NameNotFoundException -> 0x004e }
            r5 = 128(0x80, float:1.794E-43)
            android.content.pm.ApplicationInfo r1 = r1.getApplicationInfo(r4, r5)     // Catch:{ NameNotFoundException -> 0x004e }
            if (r1 == 0) goto L_0x005a
            android.os.Bundle r4 = r1.metaData     // Catch:{ NameNotFoundException -> 0x004e }
            if (r4 == 0) goto L_0x005a
            android.os.Bundle r4 = r1.metaData     // Catch:{ NameNotFoundException -> 0x004e }
            boolean r4 = r4.containsKey(r2)     // Catch:{ NameNotFoundException -> 0x004e }
            if (r4 == 0) goto L_0x005a
            android.os.Bundle r1 = r1.metaData     // Catch:{ NameNotFoundException -> 0x004e }
            boolean r1 = r1.getBoolean(r2)     // Catch:{ NameNotFoundException -> 0x004e }
            goto L_0x0027
        L_0x004e:
            r1 = move-exception
            e.a.a.a.o r2 = e.a.a.a.f.e()
            java.lang.String r4 = "Fabric"
            java.lang.String r5 = "Unable to get PackageManager. Falling through"
            r2.c(r4, r5, r1)
        L_0x005a:
            r1 = 1
            r2 = 0
        L_0x005c:
            r6.f13689e = r1
            r6.f13688d = r2
            java.lang.String r7 = io.fabric.sdk.android.services.common.CommonUtils.o(r7)
            if (r7 == 0) goto L_0x0067
            r0 = 1
        L_0x0067:
            r6.f13691g = r0
            return
        L_0x006a:
            java.lang.RuntimeException r7 = new java.lang.RuntimeException
            java.lang.String r0 = "null context"
            r7.<init>(r0)
            goto L_0x0073
        L_0x0072:
            throw r7
        L_0x0073:
            goto L_0x0072
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a.a.a.a.b.n.<init>(android.content.Context):void");
    }

    public static n a(Context context) {
        n nVar;
        synchronized (f13686b) {
            if (f13685a == null) {
                f13685a = new n(context);
            }
            nVar = f13685a;
        }
        return nVar;
    }

    public boolean b() {
        return this.f13689e;
    }

    public boolean a() {
        if (this.f13691g && this.f13688d) {
            return this.f13689e;
        }
        t tVar = this.f13690f;
        if (tVar != null) {
            return tVar.a();
        }
        return true;
    }

    @SuppressLint({"CommitPrefEdits", "ApplySharedPref"})
    public void a(boolean z) {
        this.f13689e = z;
        this.f13688d = true;
        this.f13687c.edit().putBoolean("firebase_crashlytics_collection_enabled", z).commit();
    }
}
