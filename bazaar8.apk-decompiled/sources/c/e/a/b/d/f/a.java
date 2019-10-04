package c.e.a.b.d.f;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.util.Log;
import c.e.a.b.d.g.d;
import java.util.Collections;
import java.util.List;

public class a {

    /* renamed from: a  reason: collision with root package name */
    public static final Object f10043a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public static volatile a f10044b;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f10045c = false;

    /* renamed from: d  reason: collision with root package name */
    public final List<String> f10046d;

    /* renamed from: e  reason: collision with root package name */
    public final List<String> f10047e;

    /* renamed from: f  reason: collision with root package name */
    public final List<String> f10048f;

    /* renamed from: g  reason: collision with root package name */
    public final List<String> f10049g;

    public a() {
        List<String> list = Collections.EMPTY_LIST;
        this.f10046d = list;
        this.f10047e = list;
        this.f10048f = list;
        this.f10049g = list;
    }

    public static a a() {
        if (f10044b == null) {
            synchronized (f10043a) {
                if (f10044b == null) {
                    f10044b = new a();
                }
            }
        }
        return f10044b;
    }

    public final boolean a(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i2) {
        boolean z;
        ComponentName component = intent.getComponent();
        if (component == null) {
            z = false;
        } else {
            z = d.c(context, component.getPackageName());
        }
        if (!z) {
            return context.bindService(intent, serviceConnection, i2);
        }
        Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
        return false;
    }

    public boolean a(Context context, Intent intent, ServiceConnection serviceConnection, int i2) {
        return a(context, context.getClass().getName(), intent, serviceConnection, i2);
    }

    @SuppressLint({"UntrackedBindService"})
    public void a(Context context, ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
    }
}
