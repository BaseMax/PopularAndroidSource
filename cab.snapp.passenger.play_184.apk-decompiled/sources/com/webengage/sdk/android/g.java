package com.webengage.sdk.android;

class g implements ae<Analytics> {

    /* renamed from: a  reason: collision with root package name */
    private int f5529a = -1;

    /* renamed from: b  reason: collision with root package name */
    private Object[] f5530b = null;

    g(int i, Object... objArr) {
        this.f5529a = i;
        this.f5530b = objArr;
    }

    /* JADX DEBUG: Multi-variable search result rejected for TypeSearchVarInfo{r2v1, resolved type: com.webengage.sdk.android.Analytics$Options} */
    /* JADX WARNING: type inference failed for: r2v0 */
    /* JADX WARNING: type inference failed for: r2v5, types: [java.util.Map] */
    /* JADX WARNING: type inference failed for: r2v8 */
    /* JADX WARNING: type inference failed for: r2v9 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a(com.webengage.sdk.android.Analytics r6) {
        /*
            r5 = this;
            int r0 = r5.f5529a     // Catch:{ Exception -> 0x00d7 }
            r1 = 2
            r2 = 0
            r3 = 1
            r4 = 0
            if (r0 == 0) goto L_0x00a9
            if (r0 == r3) goto L_0x0084
            if (r0 == r1) goto L_0x005f
            r1 = 3
            if (r0 == r1) goto L_0x003e
            r1 = 4
            if (r0 == r1) goto L_0x002b
            r1 = 5
            if (r0 == r1) goto L_0x0017
            goto L_0x00d6
        L_0x0017:
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            if (r0 == 0) goto L_0x00d6
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            int r0 = r0.length     // Catch:{ Exception -> 0x00d7 }
            if (r0 <= 0) goto L_0x00d6
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            r0 = r0[r4]     // Catch:{ Exception -> 0x00d7 }
            android.content.Intent r0 = (android.content.Intent) r0     // Catch:{ Exception -> 0x00d7 }
            r6.installed(r0)     // Catch:{ Exception -> 0x00d7 }
            goto L_0x00d6
        L_0x002b:
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            if (r0 == 0) goto L_0x00d6
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            int r0 = r0.length     // Catch:{ Exception -> 0x00d7 }
            if (r0 <= 0) goto L_0x00d6
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            r0 = r0[r4]     // Catch:{ Exception -> 0x00d7 }
            java.util.Map r0 = (java.util.Map) r0     // Catch:{ Exception -> 0x00d7 }
            r6.setScreenData(r0)     // Catch:{ Exception -> 0x00d7 }
            return
        L_0x003e:
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            if (r0 == 0) goto L_0x00d6
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            int r0 = r0.length     // Catch:{ Exception -> 0x00d7 }
            if (r0 <= 0) goto L_0x004e
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            r0 = r0[r4]     // Catch:{ Exception -> 0x00d7 }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ Exception -> 0x00d7 }
            goto L_0x004f
        L_0x004e:
            r0 = r2
        L_0x004f:
            java.lang.Object[] r1 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            int r1 = r1.length     // Catch:{ Exception -> 0x00d7 }
            if (r1 <= r3) goto L_0x005b
            java.lang.Object[] r1 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            r1 = r1[r3]     // Catch:{ Exception -> 0x00d7 }
            r2 = r1
            java.util.Map r2 = (java.util.Map) r2     // Catch:{ Exception -> 0x00d7 }
        L_0x005b:
            r6.screenNavigated(r0, r2)     // Catch:{ Exception -> 0x00d7 }
            return
        L_0x005f:
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            if (r0 == 0) goto L_0x00d6
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            int r0 = r0.length     // Catch:{ Exception -> 0x00d7 }
            if (r0 <= 0) goto L_0x00d6
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            r0 = r0[r4]     // Catch:{ Exception -> 0x00d7 }
            if (r0 == 0) goto L_0x00d6
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            r0 = r0[r4]     // Catch:{ Exception -> 0x00d7 }
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0     // Catch:{ Exception -> 0x00d7 }
            java.lang.Object r1 = r0.get()     // Catch:{ Exception -> 0x00d7 }
            if (r1 == 0) goto L_0x0083
            java.lang.Object r0 = r0.get()     // Catch:{ Exception -> 0x00d7 }
            android.app.Activity r0 = (android.app.Activity) r0     // Catch:{ Exception -> 0x00d7 }
            r6.stop(r0)     // Catch:{ Exception -> 0x00d7 }
        L_0x0083:
            return
        L_0x0084:
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            if (r0 == 0) goto L_0x00d6
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            int r0 = r0.length     // Catch:{ Exception -> 0x00d7 }
            if (r0 <= 0) goto L_0x00d6
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            r0 = r0[r4]     // Catch:{ Exception -> 0x00d7 }
            if (r0 == 0) goto L_0x00d6
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            r0 = r0[r4]     // Catch:{ Exception -> 0x00d7 }
            java.lang.ref.WeakReference r0 = (java.lang.ref.WeakReference) r0     // Catch:{ Exception -> 0x00d7 }
            java.lang.Object r1 = r0.get()     // Catch:{ Exception -> 0x00d7 }
            if (r1 == 0) goto L_0x00a8
            java.lang.Object r0 = r0.get()     // Catch:{ Exception -> 0x00d7 }
            android.app.Activity r0 = (android.app.Activity) r0     // Catch:{ Exception -> 0x00d7 }
            r6.start(r0)     // Catch:{ Exception -> 0x00d7 }
        L_0x00a8:
            return
        L_0x00a9:
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            if (r0 == 0) goto L_0x00d6
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            int r0 = r0.length     // Catch:{ Exception -> 0x00d7 }
            if (r0 <= 0) goto L_0x00b9
            java.lang.Object[] r0 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            r0 = r0[r4]     // Catch:{ Exception -> 0x00d7 }
            java.lang.String r0 = (java.lang.String) r0     // Catch:{ Exception -> 0x00d7 }
            goto L_0x00ba
        L_0x00b9:
            r0 = r2
        L_0x00ba:
            java.lang.Object[] r4 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            int r4 = r4.length     // Catch:{ Exception -> 0x00d7 }
            if (r4 <= r3) goto L_0x00c6
            java.lang.Object[] r4 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            r3 = r4[r3]     // Catch:{ Exception -> 0x00d7 }
            java.util.Map r3 = (java.util.Map) r3     // Catch:{ Exception -> 0x00d7 }
            goto L_0x00c7
        L_0x00c6:
            r3 = r2
        L_0x00c7:
            java.lang.Object[] r4 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            int r4 = r4.length     // Catch:{ Exception -> 0x00d7 }
            if (r4 <= r1) goto L_0x00d3
            java.lang.Object[] r2 = r5.f5530b     // Catch:{ Exception -> 0x00d7 }
            r1 = r2[r1]     // Catch:{ Exception -> 0x00d7 }
            r2 = r1
            com.webengage.sdk.android.Analytics$Options r2 = (com.webengage.sdk.android.Analytics.Options) r2     // Catch:{ Exception -> 0x00d7 }
        L_0x00d3:
            r6.track(r0, r3, r2)     // Catch:{ Exception -> 0x00d7 }
        L_0x00d6:
            return
        L_0x00d7:
            r6 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Some error occurred while executing queued task of Analytics: "
            r0.<init>(r1)
            java.lang.String r6 = r6.toString()
            r0.append(r6)
            java.lang.String r6 = r0.toString()
            java.lang.String r0 = "WebEngage"
            com.webengage.sdk.android.Logger.e(r0, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.webengage.sdk.android.g.a(com.webengage.sdk.android.Analytics):void");
    }
}
