package b.D;

import android.animation.LayoutTransition;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: ViewGroupUtilsApi14 */
public class U {

    /* renamed from: a  reason: collision with root package name */
    public static LayoutTransition f1116a;

    /* renamed from: b  reason: collision with root package name */
    public static Field f1117b;

    /* renamed from: c  reason: collision with root package name */
    public static boolean f1118c;

    /* renamed from: d  reason: collision with root package name */
    public static Method f1119d;

    /* renamed from: e  reason: collision with root package name */
    public static boolean f1120e;

    /* JADX WARNING: Removed duplicated region for block: B:34:0x0085  */
    /* JADX WARNING: Removed duplicated region for block: B:37:0x0092  */
    /* JADX WARNING: Removed duplicated region for block: B:40:? A[RETURN, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public static void a(android.view.ViewGroup r5, boolean r6) {
        /*
            android.animation.LayoutTransition r0 = f1116a
            r1 = 1
            r2 = 0
            r3 = 0
            if (r0 != 0) goto L_0x002a
            b.D.T r0 = new b.D.T
            r0.<init>()
            f1116a = r0
            android.animation.LayoutTransition r0 = f1116a
            r4 = 2
            r0.setAnimator(r4, r3)
            android.animation.LayoutTransition r0 = f1116a
            r0.setAnimator(r2, r3)
            android.animation.LayoutTransition r0 = f1116a
            r0.setAnimator(r1, r3)
            android.animation.LayoutTransition r0 = f1116a
            r4 = 3
            r0.setAnimator(r4, r3)
            android.animation.LayoutTransition r0 = f1116a
            r4 = 4
            r0.setAnimator(r4, r3)
        L_0x002a:
            if (r6 == 0) goto L_0x004a
            android.animation.LayoutTransition r6 = r5.getLayoutTransition()
            if (r6 == 0) goto L_0x0044
            boolean r0 = r6.isRunning()
            if (r0 == 0) goto L_0x003b
            a(r6)
        L_0x003b:
            android.animation.LayoutTransition r0 = f1116a
            if (r6 == r0) goto L_0x0044
            int r0 = b.D.C0178y.transition_layout_save
            r5.setTag(r0, r6)
        L_0x0044:
            android.animation.LayoutTransition r6 = f1116a
            r5.setLayoutTransition(r6)
            goto L_0x009a
        L_0x004a:
            r5.setLayoutTransition(r3)
            boolean r6 = f1118c
            java.lang.String r0 = "ViewGroupUtilsApi14"
            if (r6 != 0) goto L_0x006a
            java.lang.Class<android.view.ViewGroup> r6 = android.view.ViewGroup.class
            java.lang.String r4 = "mLayoutSuppressed"
            java.lang.reflect.Field r6 = r6.getDeclaredField(r4)     // Catch:{ NoSuchFieldException -> 0x0063 }
            f1117b = r6     // Catch:{ NoSuchFieldException -> 0x0063 }
            java.lang.reflect.Field r6 = f1117b     // Catch:{ NoSuchFieldException -> 0x0063 }
            r6.setAccessible(r1)     // Catch:{ NoSuchFieldException -> 0x0063 }
            goto L_0x0068
        L_0x0063:
            java.lang.String r6 = "Failed to access mLayoutSuppressed field by reflection"
            android.util.Log.i(r0, r6)
        L_0x0068:
            f1118c = r1
        L_0x006a:
            java.lang.reflect.Field r6 = f1117b
            if (r6 == 0) goto L_0x0083
            boolean r6 = r6.getBoolean(r5)     // Catch:{ IllegalAccessException -> 0x007e }
            if (r6 == 0) goto L_0x007c
            java.lang.reflect.Field r1 = f1117b     // Catch:{ IllegalAccessException -> 0x007a }
            r1.setBoolean(r5, r2)     // Catch:{ IllegalAccessException -> 0x007a }
            goto L_0x007c
        L_0x007a:
            r2 = r6
            goto L_0x007e
        L_0x007c:
            r2 = r6
            goto L_0x0083
        L_0x007e:
            java.lang.String r6 = "Failed to get mLayoutSuppressed field by reflection"
            android.util.Log.i(r0, r6)
        L_0x0083:
            if (r2 == 0) goto L_0x0088
            r5.requestLayout()
        L_0x0088:
            int r6 = b.D.C0178y.transition_layout_save
            java.lang.Object r6 = r5.getTag(r6)
            android.animation.LayoutTransition r6 = (android.animation.LayoutTransition) r6
            if (r6 == 0) goto L_0x009a
            int r0 = b.D.C0178y.transition_layout_save
            r5.setTag(r0, r3)
            r5.setLayoutTransition(r6)
        L_0x009a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: b.D.U.a(android.view.ViewGroup, boolean):void");
    }

    public static void a(LayoutTransition layoutTransition) {
        if (!f1120e) {
            try {
                f1119d = LayoutTransition.class.getDeclaredMethod("cancel", new Class[0]);
                f1119d.setAccessible(true);
            } catch (NoSuchMethodException unused) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            }
            f1120e = true;
        }
        Method method = f1119d;
        if (method != null) {
            try {
                method.invoke(layoutTransition, new Object[0]);
            } catch (IllegalAccessException unused2) {
                Log.i("ViewGroupUtilsApi14", "Failed to access cancel method by reflection");
            } catch (InvocationTargetException unused3) {
                Log.i("ViewGroupUtilsApi14", "Failed to invoke cancel method by reflection");
            }
        }
    }
}
