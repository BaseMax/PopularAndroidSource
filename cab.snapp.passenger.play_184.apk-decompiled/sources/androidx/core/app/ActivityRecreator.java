package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

final class ActivityRecreator {
    private static final String LOG_TAG = "ActivityRecreator";
    protected static final Class<?> activityThreadClass = getActivityThreadClass();
    private static final Handler mainHandler = new Handler(Looper.getMainLooper());
    protected static final Field mainThreadField = getMainThreadField();
    protected static final Method performStopActivity2ParamsMethod = getPerformStopActivity2Params(activityThreadClass);
    protected static final Method performStopActivity3ParamsMethod = getPerformStopActivity3Params(activityThreadClass);
    protected static final Method requestRelaunchActivityMethod = getRequestRelaunchActivityMethod(activityThreadClass);
    protected static final Field tokenField = getTokenField();

    static final class LifecycleCheckCallbacks implements Application.ActivityLifecycleCallbacks {
        Object currentlyRecreatingToken;
        private Activity mActivity;
        private boolean mDestroyed = false;
        private boolean mStarted = false;
        private boolean mStopQueued = false;

        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        public final void onActivityResumed(Activity activity) {
        }

        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        public final void onActivityStopped(Activity activity) {
        }

        LifecycleCheckCallbacks(Activity activity) {
            this.mActivity = activity;
        }

        public final void onActivityStarted(Activity activity) {
            if (this.mActivity == activity) {
                this.mStarted = true;
            }
        }

        public final void onActivityPaused(Activity activity) {
            if (this.mDestroyed && !this.mStopQueued && !this.mStarted && ActivityRecreator.queueOnStopIfNecessary(this.currentlyRecreatingToken, activity)) {
                this.mStopQueued = true;
                this.currentlyRecreatingToken = null;
            }
        }

        public final void onActivityDestroyed(Activity activity) {
            if (this.mActivity == activity) {
                this.mActivity = null;
                this.mDestroyed = true;
            }
        }
    }

    private ActivityRecreator() {
    }

    static boolean recreate(Activity activity) {
        final Application application;
        final LifecycleCheckCallbacks lifecycleCheckCallbacks;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        } else if (needsRelaunchCall() && requestRelaunchActivityMethod == null) {
            return false;
        } else {
            if (performStopActivity2ParamsMethod == null && performStopActivity3ParamsMethod == null) {
                return false;
            }
            try {
                final Object obj = tokenField.get(activity);
                if (obj == null) {
                    return false;
                }
                Object obj2 = mainThreadField.get(activity);
                if (obj2 == null) {
                    return false;
                }
                application = activity.getApplication();
                lifecycleCheckCallbacks = new LifecycleCheckCallbacks(activity);
                application.registerActivityLifecycleCallbacks(lifecycleCheckCallbacks);
                mainHandler.post(new Runnable() {
                    public final void run() {
                        lifecycleCheckCallbacks.currentlyRecreatingToken = obj;
                    }
                });
                if (needsRelaunchCall()) {
                    requestRelaunchActivityMethod.invoke(obj2, new Object[]{obj, null, null, 0, Boolean.FALSE, null, null, Boolean.FALSE, Boolean.FALSE});
                } else {
                    activity.recreate();
                }
                mainHandler.post(new Runnable() {
                    public final void run() {
                        application.unregisterActivityLifecycleCallbacks(lifecycleCheckCallbacks);
                    }
                });
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
    }

    protected static boolean queueOnStopIfNecessary(Object obj, Activity activity) {
        try {
            final Object obj2 = tokenField.get(activity);
            if (obj2 != obj) {
                return false;
            }
            final Object obj3 = mainThreadField.get(activity);
            mainHandler.postAtFrontOfQueue(new Runnable() {
                public final void run() {
                    try {
                        if (ActivityRecreator.performStopActivity3ParamsMethod != null) {
                            ActivityRecreator.performStopActivity3ParamsMethod.invoke(obj3, new Object[]{obj2, Boolean.FALSE, "AppCompat recreation"});
                            return;
                        }
                        ActivityRecreator.performStopActivity2ParamsMethod.invoke(obj3, new Object[]{obj2, Boolean.FALSE});
                    } catch (RuntimeException e) {
                        if (e.getClass() == RuntimeException.class && e.getMessage() != null && e.getMessage().startsWith("Unable to stop")) {
                            throw e;
                        }
                    } catch (Throwable unused) {
                    }
                }
            });
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static Method getPerformStopActivity3Params(Class<?> cls) {
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

    private static Method getPerformStopActivity2Params(Class<?> cls) {
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

    private static boolean needsRelaunchCall() {
        return Build.VERSION.SDK_INT == 26 || Build.VERSION.SDK_INT == 27;
    }

    private static Method getRequestRelaunchActivityMethod(Class<?> cls) {
        if (needsRelaunchCall() && cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", new Class[]{IBinder.class, List.class, List.class, Integer.TYPE, Boolean.TYPE, Configuration.class, Configuration.class, Boolean.TYPE, Boolean.TYPE});
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static Field getMainThreadField() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Field getTokenField() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> getActivityThreadClass() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            return null;
        }
    }
}
