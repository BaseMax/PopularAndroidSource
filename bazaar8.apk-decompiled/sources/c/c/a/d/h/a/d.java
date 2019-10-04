package c.c.a.d.h.a;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import h.a.u;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CustomTabsPackageHelper.kt */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public static String f4824a;

    /* renamed from: b  reason: collision with root package name */
    public static final d f4825b = new d();

    public static final String a(Context context) {
        j.b(context, "context");
        String str = f4824a;
        if (str != null) {
            return str;
        }
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("https://www.cafebazaar.ir/"));
        String a2 = c.c.a.d.b.d.a(context, intent);
        boolean z = false;
        List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(intent, 0);
        ArrayList arrayList = new ArrayList();
        for (ResolveInfo next : queryIntentActivities) {
            Intent intent2 = new Intent();
            intent2.setAction("android.support.customtabs.action.CustomTabsService");
            intent2.setPackage(next.activityInfo.packageName);
            if (packageManager.resolveService(intent2, 0) != null) {
                String str2 = next.activityInfo.packageName;
                j.a((Object) str2, "info.activityInfo.packageName");
                arrayList.add(str2);
            }
        }
        if (arrayList.isEmpty()) {
            f4824a = null;
        } else if (arrayList.size() == 1) {
            f4824a = (String) u.f(arrayList);
        } else {
            if (a2 == null || a2.length() == 0) {
                z = true;
            }
            if (!z) {
                d dVar = f4825b;
                j.a((Object) packageManager, "pm");
                if (!dVar.a(packageManager, intent) && arrayList.contains(a2)) {
                    f4824a = a2;
                }
            }
            if (arrayList.contains("com.android.chrome")) {
                f4824a = "com.android.chrome";
            } else if (arrayList.contains("com.chrome.beta")) {
                f4824a = "com.chrome.beta";
            } else if (arrayList.contains("com.chrome.dev")) {
                f4824a = "com.chrome.dev";
            } else if (arrayList.contains("com.google.android.apps.chrome")) {
                f4824a = "com.google.android.apps.chrome";
            }
        }
        return f4824a;
    }

    /* JADX WARNING: Removed duplicated region for block: B:10:0x0016 A[Catch:{ RuntimeException -> 0x003e }, RETURN] */
    /* JADX WARNING: Removed duplicated region for block: B:11:0x0017 A[Catch:{ RuntimeException -> 0x003e }] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final boolean a(android.content.pm.PackageManager r5, android.content.Intent r6) {
        /*
            r4 = this;
            r0 = 64
            r1 = 0
            java.util.List r5 = r5.queryIntentActivities(r6, r0)     // Catch:{ RuntimeException -> 0x003e }
            r6 = 1
            if (r5 == 0) goto L_0x0013
            boolean r0 = r5.isEmpty()     // Catch:{ RuntimeException -> 0x003e }
            if (r0 == 0) goto L_0x0011
            goto L_0x0013
        L_0x0011:
            r0 = 0
            goto L_0x0014
        L_0x0013:
            r0 = 1
        L_0x0014:
            if (r0 == 0) goto L_0x0017
            return r1
        L_0x0017:
            java.util.Iterator r5 = r5.iterator()     // Catch:{ RuntimeException -> 0x003e }
        L_0x001b:
            boolean r0 = r5.hasNext()     // Catch:{ RuntimeException -> 0x003e }
            if (r0 == 0) goto L_0x0044
            java.lang.Object r0 = r5.next()     // Catch:{ RuntimeException -> 0x003e }
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0     // Catch:{ RuntimeException -> 0x003e }
            android.content.IntentFilter r2 = r0.filter     // Catch:{ RuntimeException -> 0x003e }
            if (r2 == 0) goto L_0x001b
            int r3 = r2.countDataAuthorities()     // Catch:{ RuntimeException -> 0x003e }
            if (r3 == 0) goto L_0x001b
            int r2 = r2.countDataPaths()     // Catch:{ RuntimeException -> 0x003e }
            if (r2 != 0) goto L_0x0038
            goto L_0x001b
        L_0x0038:
            android.content.pm.ActivityInfo r0 = r0.activityInfo     // Catch:{ RuntimeException -> 0x003e }
            if (r0 != 0) goto L_0x003d
            goto L_0x001b
        L_0x003d:
            return r6
        L_0x003e:
            r5 = move-exception
            c.c.a.c.c.a r6 = c.c.a.c.c.a.f4699b
            r6.a((java.lang.Throwable) r5)
        L_0x0044:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.d.h.a.d.a(android.content.pm.PackageManager, android.content.Intent):boolean");
    }
}
