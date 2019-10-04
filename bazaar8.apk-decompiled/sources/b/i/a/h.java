package b.i.a;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* compiled from: ActivityRecreator */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public static final Class<?> f2511a = a();

    /* renamed from: b  reason: collision with root package name */
    public static final Field f2512b = b();

    /* renamed from: c  reason: collision with root package name */
    public static final Field f2513c = c();

    /* renamed from: d  reason: collision with root package name */
    public static final Method f2514d = b(f2511a);

    /* renamed from: e  reason: collision with root package name */
    public static final Method f2515e = a(f2511a);

    /* renamed from: f  reason: collision with root package name */
    public static final Method f2516f = c(f2511a);

    /* renamed from: g  reason: collision with root package name */
    public static final Handler f2517g = new Handler(Looper.getMainLooper());

    /* compiled from: ActivityRecreator */
    private static final class a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: a  reason: collision with root package name */
        public Object f2518a;

        /* renamed from: b  reason: collision with root package name */
        public Activity f2519b;

        /* renamed from: c  reason: collision with root package name */
        public boolean f2520c = false;

        /* renamed from: d  reason: collision with root package name */
        public boolean f2521d = false;

        /* renamed from: e  reason: collision with root package name */
        public boolean f2522e = false;

        public a(Activity activity) {
            this.f2519b = activity;
        }

        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public void onActivityDestroyed(Activity activity) {
            if (this.f2519b == activity) {
                this.f2519b = null;
                this.f2521d = true;
            }
        }

        public void onActivityPaused(Activity activity) {
            if (this.f2521d && !this.f2522e && !this.f2520c && h.a(this.f2518a, activity)) {
                this.f2522e = true;
                this.f2518a = null;
            }
        }

        public void onActivityResumed(Activity activity) {
        }

        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public void onActivityStarted(Activity activity) {
            if (this.f2519b == activity) {
                this.f2520c = true;
            }
        }

        public void onActivityStopped(Activity activity) {
        }
    }

    public static boolean a(Activity activity) {
        Application application;
        a aVar;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (d() && f2516f == null) {
            return false;
        } else {
            if (f2515e == null && f2514d == null) {
                return false;
            }
            try {
                Object obj = f2513c.get(activity);
                if (obj == null) {
                    return false;
                }
                Object obj2 = f2512b.get(activity);
                if (obj2 == null) {
                    return false;
                }
                application = activity.getApplication();
                aVar = new a(activity);
                application.registerActivityLifecycleCallbacks(aVar);
                f2517g.post(new e(aVar, obj));
                if (d()) {
                    f2516f.invoke(obj2, new Object[]{obj, null, null, 0, false, null, null, false, false});
                } else {
                    activity.recreate();
                }
                f2517g.post(new f(application, aVar));
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
    }

    public static Method b(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", new Class[]{IBinder.class, Boolean.TYPE, String.class});
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Method c(Class<?> cls) {
        if (d() && cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", new Class[]{IBinder.class, List.class, List.class, Integer.TYPE, Boolean.TYPE, Configuration.class, Configuration.class, Boolean.TYPE, Boolean.TYPE});
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    public static boolean d() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 == 26 || i2 == 27;
    }

    public static Field b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Field c() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static boolean a(Object obj, Activity activity) {
        try {
            Object obj2 = f2513c.get(activity);
            if (obj2 != obj) {
                return false;
            }
            f2517g.postAtFrontOfQueue(new g(f2512b.get(activity), obj2));
            return true;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    public static Method a(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", new Class[]{IBinder.class, Boolean.TYPE});
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Class<?> a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            return null;
        }
    }
}
