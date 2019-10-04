package com.yandex.metrica.impl;

import android.content.Context;
import java.io.File;
import java.io.FilenameFilter;
import java.util.concurrent.ExecutorService;
import org.eclipse.paho.a.a.w;

class NativeCrashesHelper {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public String f5652a;

    /* renamed from: b  reason: collision with root package name */
    private final Context f5653b;
    private boolean c;
    private boolean d;

    static class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final bi f5654a;

        /* renamed from: b  reason: collision with root package name */
        private final NativeCrashesHelper f5655b;

        a(bi biVar, NativeCrashesHelper nativeCrashesHelper) {
            this.f5655b = nativeCrashesHelper;
            this.f5654a = biVar;
        }

        public void run() {
            File file;
            for (String str : NativeCrashesHelper.a(this.f5655b.f5652a)) {
                String str2 = r0 + w.TOPIC_LEVEL_SEPARATOR + str;
                try {
                    String b2 = w.b(w.a(str2));
                    if (b2 != null) {
                        this.f5654a.a(b2);
                    }
                    file = new File(str2);
                } catch (Exception unused) {
                    file = new File(str2);
                } catch (Throwable th) {
                    new File(str2).delete();
                    throw th;
                }
                file.delete();
            }
        }
    }

    private static native void cancelSetUpNativeUncaughtExceptionHandler();

    private static native void logsEnabled(boolean z);

    private static native void setUpNativeUncaughtExceptionHandler(String str);

    NativeCrashesHelper(Context context) {
        this.f5653b = context;
    }

    public boolean a() {
        return this.c;
    }

    /* access modifiers changed from: package-private */
    public synchronized void a(bi biVar, ExecutorService executorService) {
        if (d()) {
            executorService.execute(new a(biVar, this));
            this.c = false;
        }
    }

    private boolean c() {
        return this.f5652a != null;
    }

    private boolean d() {
        return c() && this.c;
    }

    private static boolean b(boolean z) {
        try {
            logsEnabled(z);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    public boolean b() {
        try {
            System.loadLibrary("YandexMetricaNativeModule");
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* access modifiers changed from: package-private */
    /* JADX WARNING: Can't wrap try/catch for region: R(7:19|20|(1:22)|23|24|25|26) */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x003f, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:15:?, code lost:
        r2.c = false;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0043, code lost:
        return;
     */
    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:14:0x0040 */
    /* JADX WARNING: Missing exception handler attribute for start block: B:23:0x004f */
    /* JADX WARNING: Unknown top exception splitter block from list: {B:3:0x0004=Splitter:B:3:0x0004, B:23:0x004f=Splitter:B:23:0x004f} */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void a(boolean r3) {
        /*
            r2 = this;
            monitor-enter(r2)
            r0 = 0
            if (r3 == 0) goto L_0x0046
            boolean r3 = r2.d     // Catch:{ all -> 0x0040 }
            if (r3 != 0) goto L_0x002e
            boolean r3 = r2.b()     // Catch:{ all -> 0x0040 }
            if (r3 == 0) goto L_0x002e
            b(r0)     // Catch:{ all -> 0x0040 }
            java.lang.StringBuilder r3 = new java.lang.StringBuilder     // Catch:{ all -> 0x0040 }
            r3.<init>()     // Catch:{ all -> 0x0040 }
            android.content.Context r1 = r2.f5653b     // Catch:{ all -> 0x0040 }
            java.io.File r1 = r1.getFilesDir()     // Catch:{ all -> 0x0040 }
            java.lang.String r1 = r1.getAbsolutePath()     // Catch:{ all -> 0x0040 }
            r3.append(r1)     // Catch:{ all -> 0x0040 }
            java.lang.String r1 = "/YandexMetricaNativeCrashes"
            r3.append(r1)     // Catch:{ all -> 0x0040 }
            java.lang.String r3 = r3.toString()     // Catch:{ all -> 0x0040 }
            r2.f5652a = r3     // Catch:{ all -> 0x0040 }
        L_0x002e:
            r3 = 1
            r2.d = r3     // Catch:{ all -> 0x0040 }
            boolean r1 = r2.c()     // Catch:{ all -> 0x0040 }
            if (r1 == 0) goto L_0x003e
            java.lang.String r1 = r2.f5652a     // Catch:{ all -> 0x0040 }
            setUpNativeUncaughtExceptionHandler(r1)     // Catch:{ all -> 0x0040 }
            r2.c = r3     // Catch:{ all -> 0x0040 }
        L_0x003e:
            monitor-exit(r2)
            return
        L_0x0040:
            r2.c = r0     // Catch:{ all -> 0x0044 }
            monitor-exit(r2)
            return
        L_0x0044:
            r3 = move-exception
            goto L_0x0053
        L_0x0046:
            boolean r3 = r2.d()     // Catch:{ all -> 0x004f }
            if (r3 == 0) goto L_0x004f
            cancelSetUpNativeUncaughtExceptionHandler()     // Catch:{ all -> 0x004f }
        L_0x004f:
            r2.c = r0     // Catch:{ all -> 0x0044 }
            monitor-exit(r2)
            return
        L_0x0053:
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.NativeCrashesHelper.a(boolean):void");
    }

    static /* synthetic */ String[] a(String str) {
        File file = new File(str + w.TOPIC_LEVEL_SEPARATOR);
        if (!file.mkdir() && !file.exists()) {
            return new String[0];
        }
        String[] list = file.list(new FilenameFilter() {
            public boolean accept(File file, String str) {
                return str.endsWith(".dmp");
            }
        });
        return list != null ? list : new String[0];
    }
}
