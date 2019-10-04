package c.e.c.g;

import android.app.ActivityManager;
import android.app.KeyguardManager;
import android.app.NotificationManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import b.i.a.n;
import c.e.a.b.d.g.n;
import c.e.a.b.j.j;
import com.crashlytics.android.answers.SessionEvent;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final Executor f11703a;

    /* renamed from: b  reason: collision with root package name */
    public final Context f11704b;

    /* renamed from: c  reason: collision with root package name */
    public final c f11705c;

    /* renamed from: d  reason: collision with root package name */
    public final Bundle f11706d;

    public d(Context context, Bundle bundle, Executor executor) {
        this.f11703a = executor;
        this.f11704b = context;
        this.f11706d = bundle;
        this.f11705c = new c(context, context.getPackageName());
    }

    public final boolean a() {
        boolean z;
        if ("1".equals(c.a(this.f11706d, "gcm.n.noui"))) {
            return true;
        }
        if (!((KeyguardManager) this.f11704b.getSystemService("keyguard")).inKeyguardRestrictedInputMode()) {
            if (!n.g()) {
                SystemClock.sleep(10);
            }
            int myPid = Process.myPid();
            List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) this.f11704b.getSystemService(SessionEvent.ACTIVITY_KEY)).getRunningAppProcesses();
            if (runningAppProcesses != null) {
                Iterator<ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    ActivityManager.RunningAppProcessInfo next = it.next();
                    if (next.pid == myPid) {
                        if (next.importance == 100) {
                            z = true;
                        }
                    }
                }
            }
        }
        z = false;
        if (z) {
            return false;
        }
        g e2 = g.e(c.a(this.f11706d, "gcm.n.image"));
        if (e2 != null) {
            e2.a(this.f11703a);
        }
        e a2 = this.f11705c.a(this.f11706d);
        n.d dVar = a2.f11707a;
        if (e2 != null) {
            try {
                Bitmap bitmap = (Bitmap) j.a(e2.s(), 5, TimeUnit.SECONDS);
                dVar.b(bitmap);
                n.b bVar = new n.b();
                bVar.b(bitmap);
                bVar.a((Bitmap) null);
                dVar.a((n.e) bVar);
            } catch (ExecutionException unused) {
            } catch (InterruptedException unused2) {
                Log.w("FirebaseMessaging", "Interrupted while downloading image, showing notification without it");
                e2.close();
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused3) {
                Log.w("FirebaseMessaging", "Failed to download image in time, showing notification without it");
                e2.close();
            }
        }
        if (Log.isLoggable("FirebaseMessaging", 3)) {
            Log.d("FirebaseMessaging", "Showing notification");
        }
        ((NotificationManager) this.f11704b.getSystemService("notification")).notify(a2.f11708b, 0, a2.f11707a.a());
        return true;
    }
}
