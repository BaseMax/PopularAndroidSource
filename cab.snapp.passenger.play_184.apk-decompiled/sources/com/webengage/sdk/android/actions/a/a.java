package com.webengage.sdk.android.actions.a;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.webengage.sdk.android.actions.render.CallToAction;
import java.util.List;
import java.util.Map;

class a extends com.webengage.sdk.android.a {

    /* renamed from: b  reason: collision with root package name */
    Bundle f5334b = null;
    CallToAction.TYPE c = null;
    boolean d = false;
    private Context e = null;

    /* renamed from: com.webengage.sdk.android.actions.a.a$1  reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5335a = new int[CallToAction.TYPE.values().length];

        /* JADX WARNING: Can't wrap try/catch for region: R(6:0|1|2|3|4|6) */
        /* JADX WARNING: Code restructure failed: missing block: B:7:?, code lost:
            return;
         */
        /* JADX WARNING: Failed to process nested try/catch */
        /* JADX WARNING: Missing exception handler attribute for start block: B:3:0x0014 */
        static {
            /*
                com.webengage.sdk.android.actions.render.CallToAction$TYPE[] r0 = com.webengage.sdk.android.actions.render.CallToAction.TYPE.values()
                int r0 = r0.length
                int[] r0 = new int[r0]
                f5335a = r0
                int[] r0 = f5335a     // Catch:{ NoSuchFieldError -> 0x0014 }
                com.webengage.sdk.android.actions.render.CallToAction$TYPE r1 = com.webengage.sdk.android.actions.render.CallToAction.TYPE.LAUNCH_ACTIVITY     // Catch:{ NoSuchFieldError -> 0x0014 }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x0014 }
                r2 = 1
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x0014 }
            L_0x0014:
                int[] r0 = f5335a     // Catch:{ NoSuchFieldError -> 0x001f }
                com.webengage.sdk.android.actions.render.CallToAction$TYPE r1 = com.webengage.sdk.android.actions.render.CallToAction.TYPE.LINK     // Catch:{ NoSuchFieldError -> 0x001f }
                int r1 = r1.ordinal()     // Catch:{ NoSuchFieldError -> 0x001f }
                r2 = 2
                r0[r1] = r2     // Catch:{ NoSuchFieldError -> 0x001f }
            L_0x001f:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.a.a.AnonymousClass1.<clinit>():void");
        }
    }

    a(Context context) {
        super(context);
        this.e = context.getApplicationContext();
    }

    private void m() {
        Intent launchIntentForPackage = this.e.getPackageManager().getLaunchIntentForPackage(this.e.getPackageName());
        Bundle bundle = this.f5334b;
        if (!(bundle == null || bundle.getBundle("custom_data") == null)) {
            launchIntentForPackage.putExtras(this.f5334b.getBundle("custom_data"));
        }
        this.e.startActivity(launchIntentForPackage);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0026, code lost:
        if (r6.d != false) goto L_0x0007;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:3:0x0005, code lost:
        if (r6.d != false) goto L_0x0007;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:56:0x00f5, code lost:
        if (r6.d != false) goto L_0x0007;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.lang.Object a(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 0
            if (r7 != 0) goto L_0x000c
            boolean r7 = r6.d
            if (r7 == 0) goto L_0x00f9
        L_0x0007:
            r6.m()
            goto L_0x00f9
        L_0x000c:
            com.webengage.sdk.android.actions.render.CallToAction$TYPE r1 = r6.c
            if (r1 == 0) goto L_0x00f3
            int[] r1 = com.webengage.sdk.android.actions.a.a.AnonymousClass1.f5335a
            com.webengage.sdk.android.actions.render.CallToAction$TYPE r2 = r6.c
            int r2 = r2.ordinal()
            r1 = r1[r2]
            r2 = 1
            r3 = 268435456(0x10000000, float:2.5243549E-29)
            java.lang.String r4 = "custom_data"
            if (r1 == r2) goto L_0x00b0
            r2 = 2
            if (r1 == r2) goto L_0x0029
            boolean r7 = r6.d
            if (r7 == 0) goto L_0x00f9
            goto L_0x0007
        L_0x0029:
            r1 = r7
            java.lang.String r1 = (java.lang.String) r1
            android.net.Uri r1 = android.net.Uri.parse(r1)
            android.content.Intent r2 = new android.content.Intent
            java.lang.String r5 = "android.intent.action.VIEW"
            r2.<init>(r5, r1)
            android.os.Bundle r1 = r6.f5334b
            if (r1 == 0) goto L_0x0040
            android.os.Bundle r1 = r1.getBundle(r4)
            goto L_0x0041
        L_0x0040:
            r1 = r0
        L_0x0041:
            if (r1 == 0) goto L_0x0046
            r2.putExtras(r1)
        L_0x0046:
            r2.addFlags(r3)
            android.content.Context r1 = r6.e
            android.content.pm.PackageManager r1 = r1.getPackageManager()
            r3 = 65536(0x10000, float:9.18355E-41)
            java.util.List r1 = r1.queryIntentActivities(r2, r3)
            if (r1 == 0) goto L_0x008c
            boolean r3 = r1.isEmpty()
            if (r3 != 0) goto L_0x008c
            java.util.Iterator r3 = r1.iterator()
        L_0x0061:
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L_0x008c
            java.lang.Object r4 = r3.next()
            android.content.pm.ResolveInfo r4 = (android.content.pm.ResolveInfo) r4
            if (r4 == 0) goto L_0x0061
            android.content.pm.ActivityInfo r5 = r4.activityInfo
            if (r5 == 0) goto L_0x0061
            android.content.Context r5 = r6.e
            java.lang.String r5 = r5.getPackageName()
            android.content.pm.ActivityInfo r4 = r4.activityInfo
            java.lang.String r4 = r4.packageName
            boolean r4 = r5.equals(r4)
            if (r4 == 0) goto L_0x0061
            android.content.Context r3 = r6.e
            java.lang.String r3 = r3.getPackageName()
            r2.setPackage(r3)
        L_0x008c:
            if (r1 == 0) goto L_0x009a
            boolean r1 = r1.isEmpty()
            if (r1 != 0) goto L_0x009a
            android.content.Context r7 = r6.e
            r7.startActivity(r2)
            goto L_0x00f9
        L_0x009a:
            boolean r1 = r6.d
            if (r1 == 0) goto L_0x00a0
            goto L_0x0007
        L_0x00a0:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r7 = java.lang.String.valueOf(r7)
            java.lang.String r1 = "No App can handle implicit intent with link : "
            java.lang.String r7 = r1.concat(r7)
            r0.<init>(r7)
            throw r0
        L_0x00b0:
            java.lang.String r7 = (java.lang.String) r7
            android.content.Context r1 = r6.e
            java.lang.String r1 = r1.getPackageName()
            android.os.Bundle r2 = r6.f5334b
            if (r2 == 0) goto L_0x00c1
            android.os.Bundle r2 = r2.getBundle(r4)
            goto L_0x00c2
        L_0x00c1:
            r2 = r0
        L_0x00c2:
            android.content.Intent r4 = new android.content.Intent
            r4.<init>()
            if (r2 == 0) goto L_0x00cc
            r4.putExtras(r2)
        L_0x00cc:
            r4.setFlags(r3)
            r4.setClassName(r1, r7)
            android.content.Context r7 = r6.e
            android.content.pm.PackageManager r7 = r7.getPackageManager()
            r1 = 0
            android.content.pm.ActivityInfo r7 = r4.resolveActivityInfo(r7, r1)
            if (r7 != 0) goto L_0x00ed
            boolean r7 = r6.d
            if (r7 == 0) goto L_0x00e5
            goto L_0x0007
        L_0x00e5:
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r0 = "Received activity path is not valid"
            r7.<init>(r0)
            throw r7
        L_0x00ed:
            android.content.Context r7 = r6.e
            r7.startActivity(r4)
            goto L_0x00f9
        L_0x00f3:
            boolean r7 = r6.d
            if (r7 == 0) goto L_0x00f9
            goto L_0x0007
        L_0x00f9:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.actions.a.a.a(java.lang.Object):java.lang.Object");
    }

    public Object a(Map<String, Object> map) {
        List<String> list;
        this.f5334b = ((Intent) map.get("action_data")).getExtras();
        Bundle bundle = this.f5334b;
        if (bundle != null) {
            this.d = bundle.getBoolean("launch_app_if_invalid", false);
            String string = this.f5334b.getString("deeplink_uri");
            if (string != null) {
                try {
                    list = Uri.parse(string).getPathSegments();
                } catch (Exception unused) {
                    list = null;
                }
                if (list != null) {
                    if (list.size() > 0) {
                        this.c = CallToAction.TYPE.valueFromString(list.get(0));
                    }
                    if (this.c != null && list.size() > 1) {
                        return list.get(1);
                    }
                }
            }
        }
        return null;
    }

    public void b(Object obj) {
    }
}
