package com.a.a.c;

import io.fabric.sdk.android.l;
import io.fabric.sdk.android.services.common.h;
import java.io.File;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

final class ag {

    /* renamed from: a  reason: collision with root package name */
    static final Map<String, String> f1733a = Collections.singletonMap("X-CRASHLYTICS-INVALID-SESSION", "1");
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static final short[] f1734b = {10, 20, 30, 60, 120, 300};
    private final Object c = new Object();
    private final p d;
    private final String e;
    private final c f;
    /* access modifiers changed from: private */
    public final b g;
    /* access modifiers changed from: private */
    public Thread h;

    static final class a implements d {
        public final boolean canSendReports() {
            return true;
        }

        a() {
        }
    }

    interface b {
        boolean isHandlingException();
    }

    interface c {
        File[] getCompleteSessionFiles();

        File[] getInvalidSessionFiles();
    }

    interface d {
        boolean canSendReports();
    }

    class e extends h {

        /* renamed from: b  reason: collision with root package name */
        private final float f1736b;
        private final d c;

        e(float f, d dVar) {
            this.f1736b = f;
            this.c = dVar;
        }

        /* JADX WARNING: Can't wrap try/catch for region: R(2:35|36) */
        /* JADX WARNING: Can't wrap try/catch for region: R(6:5|6|7|8|39|40) */
        /* JADX WARNING: Code restructure failed: missing block: B:36:?, code lost:
            java.lang.Thread.currentThread().interrupt();
         */
        /* JADX WARNING: Missing exception handler attribute for start block: B:35:0x0116 */
        /* JADX WARNING: Missing exception handler attribute for start block: B:7:0x0030 */
        /* JADX WARNING: Unknown top exception splitter block from list: {B:7:0x0030=Splitter:B:7:0x0030, B:35:0x0116=Splitter:B:35:0x0116} */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void onRun() {
            /*
                r8 = this;
                java.lang.String r0 = "CrashlyticsCore"
                io.fabric.sdk.android.l r1 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x011e }
                java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x011e }
                java.lang.String r3 = "Starting report processing in "
                r2.<init>(r3)     // Catch:{ Exception -> 0x011e }
                float r3 = r8.f1736b     // Catch:{ Exception -> 0x011e }
                r2.append(r3)     // Catch:{ Exception -> 0x011e }
                java.lang.String r3 = " second(s)..."
                r2.append(r3)     // Catch:{ Exception -> 0x011e }
                java.lang.String r2 = r2.toString()     // Catch:{ Exception -> 0x011e }
                r1.d(r0, r2)     // Catch:{ Exception -> 0x011e }
                float r1 = r8.f1736b     // Catch:{ Exception -> 0x011e }
                r2 = 0
                int r1 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
                if (r1 <= 0) goto L_0x0039
                float r1 = r8.f1736b     // Catch:{ InterruptedException -> 0x0030 }
                r2 = 1148846080(0x447a0000, float:1000.0)
                float r1 = r1 * r2
                long r1 = (long) r1     // Catch:{ InterruptedException -> 0x0030 }
                java.lang.Thread.sleep(r1)     // Catch:{ InterruptedException -> 0x0030 }
                goto L_0x0039
            L_0x0030:
                java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch:{ Exception -> 0x011e }
                r1.interrupt()     // Catch:{ Exception -> 0x011e }
                goto L_0x0128
            L_0x0039:
                com.a.a.c.ag r1 = com.a.a.c.ag.this     // Catch:{ Exception -> 0x011e }
                java.util.List r1 = r1.a()     // Catch:{ Exception -> 0x011e }
                com.a.a.c.ag r2 = com.a.a.c.ag.this     // Catch:{ Exception -> 0x011e }
                com.a.a.c.ag$b r2 = r2.g     // Catch:{ Exception -> 0x011e }
                boolean r2 = r2.isHandlingException()     // Catch:{ Exception -> 0x011e }
                if (r2 != 0) goto L_0x0128
                boolean r2 = r1.isEmpty()     // Catch:{ Exception -> 0x011e }
                if (r2 != 0) goto L_0x008b
                com.a.a.c.ag$d r2 = r8.c     // Catch:{ Exception -> 0x011e }
                boolean r2 = r2.canSendReports()     // Catch:{ Exception -> 0x011e }
                if (r2 != 0) goto L_0x008b
                io.fabric.sdk.android.l r2 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x011e }
                java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x011e }
                java.lang.String r4 = "User declined to send. Removing "
                r3.<init>(r4)     // Catch:{ Exception -> 0x011e }
                int r4 = r1.size()     // Catch:{ Exception -> 0x011e }
                r3.append(r4)     // Catch:{ Exception -> 0x011e }
                java.lang.String r4 = " Report(s)."
                r3.append(r4)     // Catch:{ Exception -> 0x011e }
                java.lang.String r3 = r3.toString()     // Catch:{ Exception -> 0x011e }
                r2.d(r0, r3)     // Catch:{ Exception -> 0x011e }
                java.util.Iterator r1 = r1.iterator()     // Catch:{ Exception -> 0x011e }
            L_0x007b:
                boolean r2 = r1.hasNext()     // Catch:{ Exception -> 0x011e }
                if (r2 == 0) goto L_0x0128
                java.lang.Object r2 = r1.next()     // Catch:{ Exception -> 0x011e }
                com.a.a.c.af r2 = (com.a.a.c.af) r2     // Catch:{ Exception -> 0x011e }
                r2.remove()     // Catch:{ Exception -> 0x011e }
                goto L_0x007b
            L_0x008b:
                r2 = 0
            L_0x008c:
                boolean r3 = r1.isEmpty()     // Catch:{ Exception -> 0x011e }
                if (r3 != 0) goto L_0x0128
                com.a.a.c.ag r3 = com.a.a.c.ag.this     // Catch:{ Exception -> 0x011e }
                com.a.a.c.ag$b r3 = r3.g     // Catch:{ Exception -> 0x011e }
                boolean r3 = r3.isHandlingException()     // Catch:{ Exception -> 0x011e }
                if (r3 != 0) goto L_0x0128
                io.fabric.sdk.android.l r3 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x011e }
                java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x011e }
                java.lang.String r5 = "Attempting to send "
                r4.<init>(r5)     // Catch:{ Exception -> 0x011e }
                int r5 = r1.size()     // Catch:{ Exception -> 0x011e }
                r4.append(r5)     // Catch:{ Exception -> 0x011e }
                java.lang.String r5 = " report(s)"
                r4.append(r5)     // Catch:{ Exception -> 0x011e }
                java.lang.String r4 = r4.toString()     // Catch:{ Exception -> 0x011e }
                r3.d(r0, r4)     // Catch:{ Exception -> 0x011e }
                java.util.Iterator r1 = r1.iterator()     // Catch:{ Exception -> 0x011e }
            L_0x00c0:
                boolean r3 = r1.hasNext()     // Catch:{ Exception -> 0x011e }
                if (r3 == 0) goto L_0x00d2
                java.lang.Object r3 = r1.next()     // Catch:{ Exception -> 0x011e }
                com.a.a.c.af r3 = (com.a.a.c.af) r3     // Catch:{ Exception -> 0x011e }
                com.a.a.c.ag r4 = com.a.a.c.ag.this     // Catch:{ Exception -> 0x011e }
                r4.a((com.a.a.c.af) r3)     // Catch:{ Exception -> 0x011e }
                goto L_0x00c0
            L_0x00d2:
                com.a.a.c.ag r1 = com.a.a.c.ag.this     // Catch:{ Exception -> 0x011e }
                java.util.List r1 = r1.a()     // Catch:{ Exception -> 0x011e }
                boolean r3 = r1.isEmpty()     // Catch:{ Exception -> 0x011e }
                if (r3 != 0) goto L_0x008c
                short[] r3 = com.a.a.c.ag.f1734b     // Catch:{ Exception -> 0x011e }
                int r4 = r2 + 1
                short[] r5 = com.a.a.c.ag.f1734b     // Catch:{ Exception -> 0x011e }
                int r5 = r5.length     // Catch:{ Exception -> 0x011e }
                int r5 = r5 + -1
                int r2 = java.lang.Math.min(r2, r5)     // Catch:{ Exception -> 0x011e }
                short r2 = r3[r2]     // Catch:{ Exception -> 0x011e }
                long r2 = (long) r2     // Catch:{ Exception -> 0x011e }
                io.fabric.sdk.android.l r5 = io.fabric.sdk.android.c.getLogger()     // Catch:{ Exception -> 0x011e }
                java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch:{ Exception -> 0x011e }
                java.lang.String r7 = "Report submisson: scheduling delayed retry in "
                r6.<init>(r7)     // Catch:{ Exception -> 0x011e }
                r6.append(r2)     // Catch:{ Exception -> 0x011e }
                java.lang.String r7 = " seconds"
                r6.append(r7)     // Catch:{ Exception -> 0x011e }
                java.lang.String r6 = r6.toString()     // Catch:{ Exception -> 0x011e }
                r5.d(r0, r6)     // Catch:{ Exception -> 0x011e }
                r5 = 1000(0x3e8, double:4.94E-321)
                long r2 = r2 * r5
                java.lang.Thread.sleep(r2)     // Catch:{ InterruptedException -> 0x0116 }
                r2 = r4
                goto L_0x008c
            L_0x0116:
                java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch:{ Exception -> 0x011e }
                r1.interrupt()     // Catch:{ Exception -> 0x011e }
                goto L_0x0128
            L_0x011e:
                r1 = move-exception
                io.fabric.sdk.android.l r2 = io.fabric.sdk.android.c.getLogger()
                java.lang.String r3 = "An unexpected error occurred while attempting to upload crash reports."
                r2.e(r0, r3, r1)
            L_0x0128:
                com.a.a.c.ag r0 = com.a.a.c.ag.this
                java.lang.Thread unused = r0.h = null
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.a.a.c.ag.e.onRun():void");
        }
    }

    public ag(String str, p pVar, c cVar, b bVar) {
        if (pVar != null) {
            this.d = pVar;
            this.e = str;
            this.f = cVar;
            this.g = bVar;
            return;
        }
        throw new IllegalArgumentException("createReportCall must not be null.");
    }

    public final synchronized void uploadReports(float f2, d dVar) {
        if (this.h != null) {
            io.fabric.sdk.android.c.getLogger().d(j.TAG, "Report upload has already been started.");
            return;
        }
        this.h = new Thread(new e(f2, dVar), "Crashlytics Report Uploader");
        this.h.start();
    }

    /* access modifiers changed from: package-private */
    public final boolean a(af afVar) {
        boolean z;
        synchronized (this.c) {
            z = false;
            try {
                boolean invoke = this.d.invoke(new o(this.e, afVar));
                l logger = io.fabric.sdk.android.c.getLogger();
                StringBuilder sb = new StringBuilder("Crashlytics report upload ");
                sb.append(invoke ? "complete: " : "FAILED: ");
                sb.append(afVar.getIdentifier());
                logger.i(j.TAG, sb.toString());
                if (invoke) {
                    afVar.remove();
                    z = true;
                }
            } catch (Exception e2) {
                io.fabric.sdk.android.c.getLogger().e(j.TAG, "Error occurred sending report ".concat(String.valueOf(afVar)), e2);
            }
        }
        return z;
    }

    /* access modifiers changed from: package-private */
    public final List<af> a() {
        File[] completeSessionFiles;
        File[] invalidSessionFiles;
        io.fabric.sdk.android.c.getLogger().d(j.TAG, "Checking for crash reports...");
        synchronized (this.c) {
            completeSessionFiles = this.f.getCompleteSessionFiles();
            invalidSessionFiles = this.f.getInvalidSessionFiles();
        }
        LinkedList linkedList = new LinkedList();
        if (completeSessionFiles != null) {
            for (File path : completeSessionFiles) {
                io.fabric.sdk.android.c.getLogger().d(j.TAG, "Found crash report " + path.getPath());
                linkedList.add(new ai(completeSessionFiles[r5]));
            }
        }
        HashMap hashMap = new HashMap();
        if (invalidSessionFiles != null) {
            for (File file : invalidSessionFiles) {
                String a2 = i.a(file);
                if (!hashMap.containsKey(a2)) {
                    hashMap.put(a2, new LinkedList());
                }
                ((List) hashMap.get(a2)).add(file);
            }
        }
        for (String str : hashMap.keySet()) {
            io.fabric.sdk.android.c.getLogger().d(j.TAG, "Found invalid session: ".concat(String.valueOf(str)));
            List list = (List) hashMap.get(str);
            linkedList.add(new u(str, (File[]) list.toArray(new File[list.size()])));
        }
        if (linkedList.isEmpty()) {
            io.fabric.sdk.android.c.getLogger().d(j.TAG, "No reports found.");
        }
        return linkedList;
    }
}
