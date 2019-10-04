package androidx.activity;

import android.app.Activity;
import android.view.inputmethod.InputMethodManager;
import b.r.C0303i;
import java.lang.reflect.Field;

public final class ImmLeaksCleaner implements C0303i {

    /* renamed from: a  reason: collision with root package name */
    public static int f215a;

    /* renamed from: b  reason: collision with root package name */
    public static Field f216b;

    /* renamed from: c  reason: collision with root package name */
    public static Field f217c;

    /* renamed from: d  reason: collision with root package name */
    public static Field f218d;

    /* renamed from: e  reason: collision with root package name */
    public Activity f219e;

    public ImmLeaksCleaner(Activity activity) {
        this.f219e = activity;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(3:29|30|31) */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0040, code lost:
        r3.isActive();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0045, code lost:
        return;
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:29:0x0044 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(b.r.k r3, androidx.lifecycle.Lifecycle.Event r4) {
        /*
            r2 = this;
            androidx.lifecycle.Lifecycle$Event r3 = androidx.lifecycle.Lifecycle.Event.ON_DESTROY
            if (r4 == r3) goto L_0x0005
            return
        L_0x0005:
            int r3 = f215a
            if (r3 != 0) goto L_0x000c
            a()
        L_0x000c:
            int r3 = f215a
            r4 = 1
            if (r3 != r4) goto L_0x004e
            android.app.Activity r3 = r2.f219e
            java.lang.String r4 = "input_method"
            java.lang.Object r3 = r3.getSystemService(r4)
            android.view.inputmethod.InputMethodManager r3 = (android.view.inputmethod.InputMethodManager) r3
            java.lang.reflect.Field r4 = f216b     // Catch:{ IllegalAccessException -> 0x004e }
            java.lang.Object r4 = r4.get(r3)     // Catch:{ IllegalAccessException -> 0x004e }
            if (r4 != 0) goto L_0x0024
            return
        L_0x0024:
            monitor-enter(r4)
            java.lang.reflect.Field r0 = f217c     // Catch:{ IllegalAccessException -> 0x004a, ClassCastException -> 0x0048 }
            java.lang.Object r0 = r0.get(r3)     // Catch:{ IllegalAccessException -> 0x004a, ClassCastException -> 0x0048 }
            android.view.View r0 = (android.view.View) r0     // Catch:{ IllegalAccessException -> 0x004a, ClassCastException -> 0x0048 }
            if (r0 != 0) goto L_0x0031
            monitor-exit(r4)     // Catch:{ all -> 0x0046 }
            return
        L_0x0031:
            boolean r0 = r0.isAttachedToWindow()     // Catch:{ all -> 0x0046 }
            if (r0 == 0) goto L_0x0039
            monitor-exit(r4)     // Catch:{ all -> 0x0046 }
            return
        L_0x0039:
            java.lang.reflect.Field r0 = f218d     // Catch:{ IllegalAccessException -> 0x0044 }
            r1 = 0
            r0.set(r3, r1)     // Catch:{ IllegalAccessException -> 0x0044 }
            monitor-exit(r4)     // Catch:{ all -> 0x0046 }
            r3.isActive()
            goto L_0x004e
        L_0x0044:
            monitor-exit(r4)     // Catch:{ all -> 0x0046 }
            return
        L_0x0046:
            r3 = move-exception
            goto L_0x004c
        L_0x0048:
            monitor-exit(r4)     // Catch:{ all -> 0x0046 }
            return
        L_0x004a:
            monitor-exit(r4)     // Catch:{ all -> 0x0046 }
            return
        L_0x004c:
            monitor-exit(r4)     // Catch:{ all -> 0x0046 }
            throw r3
        L_0x004e:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.activity.ImmLeaksCleaner.a(b.r.k, androidx.lifecycle.Lifecycle$Event):void");
    }

    public static void a() {
        try {
            f215a = 2;
            f217c = InputMethodManager.class.getDeclaredField("mServedView");
            f217c.setAccessible(true);
            f218d = InputMethodManager.class.getDeclaredField("mNextServedView");
            f218d.setAccessible(true);
            f216b = InputMethodManager.class.getDeclaredField("mH");
            f216b.setAccessible(true);
            f215a = 1;
        } catch (NoSuchFieldException unused) {
        }
    }
}
