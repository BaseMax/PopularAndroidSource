package c.e.c.d;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import com.google.firebase.iid.FirebaseInstanceId;
import java.io.IOException;

public final class B implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final long f11582a;

    /* renamed from: b  reason: collision with root package name */
    public final PowerManager.WakeLock f11583b = ((PowerManager) a().getSystemService("power")).newWakeLock(1, "fiid-sync");

    /* renamed from: c  reason: collision with root package name */
    public final FirebaseInstanceId f11584c;

    /* renamed from: d  reason: collision with root package name */
    public final D f11585d;

    public B(FirebaseInstanceId firebaseInstanceId, C0995o oVar, D d2, long j2) {
        this.f11584c = firebaseInstanceId;
        this.f11585d = d2;
        this.f11582a = j2;
        this.f11583b.setReferenceCounted(false);
    }

    public final Context a() {
        return this.f11584c.e().c();
    }

    public final boolean b() {
        C1004y g2 = this.f11584c.g();
        if (!this.f11584c.m() && !this.f11584c.a(g2)) {
            return true;
        }
        try {
            String h2 = this.f11584c.h();
            if (h2 == null) {
                Log.e("FirebaseInstanceId", "Token retrieval failed: null");
                return false;
            }
            if (Log.isLoggable("FirebaseInstanceId", 3)) {
                Log.d("FirebaseInstanceId", "Token successfully retrieved");
            }
            if (g2 == null || (g2 != null && !h2.equals(g2.f11691b))) {
                Context a2 = a();
                Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
                intent.putExtra("token", h2);
                C1002w.b(a2, intent);
                C1002w.a(a2, new Intent("com.google.firebase.iid.TOKEN_REFRESH"));
            }
            return true;
        } catch (IOException | SecurityException e2) {
            String valueOf = String.valueOf(e2.getMessage());
            Log.e("FirebaseInstanceId", valueOf.length() != 0 ? "Token retrieval failed: ".concat(valueOf) : new String("Token retrieval failed: "));
            return false;
        }
    }

    public final boolean c() {
        ConnectivityManager connectivityManager = (ConnectivityManager) a().getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    @SuppressLint({"Wakelock"})
    public final void run() {
        try {
            if (C1002w.a().a(a())) {
                this.f11583b.acquire();
            }
            this.f11584c.a(true);
            if (!this.f11584c.k()) {
                this.f11584c.a(false);
            } else if (!C1002w.a().b(a()) || c()) {
                if (!b() || !this.f11585d.a(this.f11584c)) {
                    this.f11584c.a(this.f11582a);
                } else {
                    this.f11584c.a(false);
                }
                if (C1002w.a().a(a())) {
                    this.f11583b.release();
                }
            } else {
                new A(this).a();
                if (C1002w.a().a(a())) {
                    this.f11583b.release();
                }
            }
        } finally {
            if (C1002w.a().a(a())) {
                this.f11583b.release();
            }
        }
    }
}
