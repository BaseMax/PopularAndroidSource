package com.google.firebase.iid;

import android.os.Build;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.collection.ArrayMap;
import com.google.firebase.b;
import java.io.IOException;
import java.security.KeyPair;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class FirebaseInstanceId {

    /* renamed from: a  reason: collision with root package name */
    static z f4050a;
    private static final long d = TimeUnit.HOURS.toSeconds(8);
    private static Map<String, FirebaseInstanceId> e = new ArrayMap();
    private static ScheduledThreadPoolExecutor f;

    /* renamed from: b  reason: collision with root package name */
    final b f4051b;
    final v c;
    private final w g;
    private KeyPair h;
    private boolean i = false;

    private FirebaseInstanceId(b bVar) {
        this.f4051b = bVar;
        if (v.zzf(bVar) != null) {
            this.c = new v(bVar.getApplicationContext());
            this.g = new w(bVar.getApplicationContext(), this.c);
            aa b2 = b();
            if (b2 == null || b2.b(this.c.zzcjg()) || f4050a.zzcjm() != null) {
                a();
                return;
            }
            return;
        }
        throw new IllegalStateException("FirebaseInstanceId failed to initialize, FirebaseApp is missing project ID");
    }

    static void a(Runnable runnable, long j) {
        synchronized (FirebaseInstanceId.class) {
            if (f == null) {
                f = new ScheduledThreadPoolExecutor(1);
            }
            f.schedule(runnable, j, TimeUnit.SECONDS);
        }
    }

    static z c() {
        return f4050a;
    }

    static boolean d() {
        return Log.isLoggable("FirebaseInstanceId", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseInstanceId", 3));
    }

    private final void f() {
        f4050a.b("");
        this.h = null;
    }

    public static FirebaseInstanceId getInstance() {
        return getInstance(b.getInstance());
    }

    public static synchronized FirebaseInstanceId getInstance(b bVar) {
        FirebaseInstanceId firebaseInstanceId;
        synchronized (FirebaseInstanceId.class) {
            firebaseInstanceId = e.get(bVar.getOptions().getApplicationId());
            if (firebaseInstanceId == null) {
                if (f4050a == null) {
                    f4050a = new z(bVar.getApplicationContext());
                }
                firebaseInstanceId = new FirebaseInstanceId(bVar);
                e.put(bVar.getOptions().getApplicationId(), firebaseInstanceId);
            }
        }
        return firebaseInstanceId;
    }

    /* access modifiers changed from: package-private */
    public final String a(String str, String str2, Bundle bundle) throws IOException {
        bundle.putString("scope", str2);
        bundle.putString("sender", str);
        bundle.putString("subtype", str);
        bundle.putString("appid", getId());
        bundle.putString("gmp_app_id", this.f4051b.getOptions().getApplicationId());
        bundle.putString("gmsv", Integer.toString(this.c.zzcji()));
        bundle.putString("osv", Integer.toString(Build.VERSION.SDK_INT));
        bundle.putString("app_ver", this.c.zzcjg());
        bundle.putString("app_ver_name", this.c.zzcjh());
        bundle.putString("cliv", "fiid-11910000");
        Bundle a2 = this.g.a(bundle);
        if (a2 != null) {
            String string = a2.getString("registration_id");
            if (string == null) {
                string = a2.getString("unregistered");
                if (string == null) {
                    String string2 = a2.getString("error");
                    if (string2 != null) {
                        throw new IOException(string2);
                    }
                    String valueOf = String.valueOf(a2);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
                    sb.append("Unexpected response ");
                    sb.append(valueOf);
                    new Throwable();
                    throw new IOException("SERVICE_NOT_AVAILABLE");
                }
            }
            if (!"RST".equals(string) && !string.startsWith("RST|")) {
                return string;
            }
            e();
            throw new IOException("SERVICE_NOT_AVAILABLE");
        }
        throw new IOException("SERVICE_NOT_AVAILABLE");
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a() {
        if (!this.i) {
            a(0);
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(long j) {
        a(new b(this, this.c, Math.min(Math.max(30, j << 1), d)), j);
        this.i = true;
    }

    /* access modifiers changed from: package-private */
    public final synchronized void a(boolean z) {
        this.i = z;
    }

    /* access modifiers changed from: package-private */
    public final aa b() {
        return f4050a.zzp("", v.zzf(this.f4051b), "*");
    }

    public void deleteInstanceId() throws IOException {
        deleteToken("*", "*");
        f();
    }

    public void deleteToken(String str, String str2) throws IOException {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            Bundle bundle = new Bundle();
            bundle.putString("delete", "1");
            a(str, str2, bundle);
            f4050a.zzf("", str, str2);
            return;
        }
        throw new IOException("MAIN_THREAD");
    }

    /* access modifiers changed from: package-private */
    public final void e() {
        f4050a.zzavj();
        f();
        a();
    }

    public long getCreationTime() {
        return f4050a.zzrj("");
    }

    public String getId() {
        if (this.h == null) {
            this.h = f4050a.zzrm("");
        }
        if (this.h == null) {
            this.h = f4050a.a("");
        }
        return v.zzb(this.h);
    }

    public String getToken() {
        aa b2 = b();
        if (b2 == null || b2.b(this.c.zzcjg())) {
            a();
        }
        if (b2 != null) {
            return b2.f4055a;
        }
        return null;
    }

    public String getToken(String str, String str2) throws IOException {
        if (Looper.getMainLooper() != Looper.myLooper()) {
            aa zzp = f4050a.zzp("", str, str2);
            if (zzp != null && !zzp.b(this.c.zzcjg())) {
                return zzp.f4055a;
            }
            String a2 = a(str, str2, new Bundle());
            if (a2 != null) {
                f4050a.zza("", str, str2, a2, this.c.zzcjg());
            }
            return a2;
        }
        throw new IOException("MAIN_THREAD");
    }

    public final synchronized void zzrf(String str) {
        f4050a.zzrf(str);
        a();
    }
}
