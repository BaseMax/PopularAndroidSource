package c.b.a.d;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import android.view.View;
import androidx.fragment.app.Fragment;
import b.f.C0243b;
import b.o.a.C;
import b.o.a.C0285i;
import b.o.a.C0290n;
import c.b.a.e;
import c.b.a.i.k;
import java.util.HashMap;
import java.util.Map;

/* compiled from: RequestManagerRetriever */
public class n implements Handler.Callback {

    /* renamed from: a  reason: collision with root package name */
    public static final a f4295a = new m();

    /* renamed from: b  reason: collision with root package name */
    public volatile c.b.a.n f4296b;

    /* renamed from: c  reason: collision with root package name */
    public final Map<FragmentManager, l> f4297c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    public final Map<C0290n, q> f4298d = new HashMap();

    /* renamed from: e  reason: collision with root package name */
    public final Handler f4299e;

    /* renamed from: f  reason: collision with root package name */
    public final a f4300f;

    /* renamed from: g  reason: collision with root package name */
    public final C0243b<View, Fragment> f4301g = new C0243b<>();

    /* renamed from: h  reason: collision with root package name */
    public final C0243b<View, android.app.Fragment> f4302h = new C0243b<>();

    /* renamed from: i  reason: collision with root package name */
    public final Bundle f4303i = new Bundle();

    /* compiled from: RequestManagerRetriever */
    public interface a {
        c.b.a.n a(e eVar, i iVar, o oVar, Context context);
    }

    public n(a aVar) {
        this.f4300f = aVar == null ? f4295a : aVar;
        this.f4299e = new Handler(Looper.getMainLooper(), this);
    }

    public static boolean d(Activity activity) {
        return !activity.isFinishing();
    }

    public c.b.a.n a(Context context) {
        if (context != null) {
            if (k.d() && !(context instanceof Application)) {
                if (context instanceof C0285i) {
                    return a((C0285i) context);
                }
                if (context instanceof Activity) {
                    return b((Activity) context);
                }
                if (context instanceof ContextWrapper) {
                    return a(((ContextWrapper) context).getBaseContext());
                }
            }
            return b(context);
        }
        throw new IllegalArgumentException("You cannot start a load on a null Context");
    }

    public final c.b.a.n b(Context context) {
        if (this.f4296b == null) {
            synchronized (this) {
                if (this.f4296b == null) {
                    this.f4296b = this.f4300f.a(e.b(context.getApplicationContext()), new b(), new h(), context.getApplicationContext());
                }
            }
        }
        return this.f4296b;
    }

    @Deprecated
    public l c(Activity activity) {
        return a(activity.getFragmentManager(), (android.app.Fragment) null, d(activity));
    }

    public boolean handleMessage(Message message) {
        Object obj;
        int i2 = message.what;
        Object obj2 = null;
        boolean z = true;
        if (i2 == 1) {
            obj2 = (FragmentManager) message.obj;
            obj = this.f4297c.remove(obj2);
        } else if (i2 != 2) {
            z = false;
            obj = null;
        } else {
            obj2 = (C0290n) message.obj;
            obj = this.f4298d.remove(obj2);
        }
        if (z && obj == null && Log.isLoggable("RMRetriever", 5)) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj2);
        }
        return z;
    }

    public c.b.a.n a(C0285i iVar) {
        if (k.c()) {
            return a(iVar.getApplicationContext());
        }
        a((Activity) iVar);
        return a((Context) iVar, iVar.r(), (Fragment) null, d(iVar));
    }

    public c.b.a.n b(Activity activity) {
        if (k.c()) {
            return a(activity.getApplicationContext());
        }
        a(activity);
        return a((Context) activity, activity.getFragmentManager(), (android.app.Fragment) null, d(activity));
    }

    @TargetApi(17)
    public static void a(Activity activity) {
        if (Build.VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    public q b(C0285i iVar) {
        return a(iVar.r(), (Fragment) null, d(iVar));
    }

    public final l a(FragmentManager fragmentManager, android.app.Fragment fragment, boolean z) {
        l lVar = (l) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (lVar == null) {
            lVar = this.f4297c.get(fragmentManager);
            if (lVar == null) {
                lVar = new l();
                lVar.a(fragment);
                if (z) {
                    lVar.a().b();
                }
                this.f4297c.put(fragmentManager, lVar);
                fragmentManager.beginTransaction().add(lVar, "com.bumptech.glide.manager").commitAllowingStateLoss();
                this.f4299e.obtainMessage(1, fragmentManager).sendToTarget();
            }
        }
        return lVar;
    }

    @Deprecated
    public final c.b.a.n a(Context context, FragmentManager fragmentManager, android.app.Fragment fragment, boolean z) {
        l a2 = a(fragmentManager, fragment, z);
        c.b.a.n c2 = a2.c();
        if (c2 != null) {
            return c2;
        }
        c.b.a.n a3 = this.f4300f.a(e.b(context), a2.a(), a2.d(), context);
        a2.a(a3);
        return a3;
    }

    public final q a(C0290n nVar, Fragment fragment, boolean z) {
        q qVar = (q) nVar.a("com.bumptech.glide.manager");
        if (qVar == null) {
            qVar = this.f4298d.get(nVar);
            if (qVar == null) {
                qVar = new q();
                qVar.b(fragment);
                if (z) {
                    qVar.La().b();
                }
                this.f4298d.put(nVar, qVar);
                C a2 = nVar.a();
                a2.a((Fragment) qVar, "com.bumptech.glide.manager");
                a2.b();
                this.f4299e.obtainMessage(2, nVar).sendToTarget();
            }
        }
        return qVar;
    }

    public final c.b.a.n a(Context context, C0290n nVar, Fragment fragment, boolean z) {
        q a2 = a(nVar, fragment, z);
        c.b.a.n Na = a2.Na();
        if (Na != null) {
            return Na;
        }
        c.b.a.n a3 = this.f4300f.a(e.b(context), a2.La(), a2.Oa(), context);
        a2.a(a3);
        return a3;
    }
}
