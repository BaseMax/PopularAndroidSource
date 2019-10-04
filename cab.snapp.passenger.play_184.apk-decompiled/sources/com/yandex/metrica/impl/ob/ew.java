package com.yandex.metrica.impl.ob;

import android.content.Context;
import android.net.LocalServerSocket;

public class ew implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static volatile ew f5993a;

    /* renamed from: b  reason: collision with root package name */
    private static final Object f5994b = new Object();
    private Context c;
    private LocalServerSocket d;
    private boolean e;
    private Thread f;

    public static ew a(Context context) {
        if (f5993a == null) {
            synchronized (f5994b) {
                if (f5993a == null) {
                    f5993a = new ew(context.getApplicationContext());
                }
            }
        }
        return f5993a;
    }

    private ew(Context context) {
        this.c = context;
    }

    public synchronized boolean a() {
        if (!this.e) {
            this.e = true;
            try {
                this.d = new LocalServerSocket("com.yandex.metrica.configuration.MetricaConfigurationService");
                this.f = ni.a("YMM-CS", this);
                this.f.start();
                return true;
            } catch (Exception unused) {
            }
        }
        this.e = false;
        return false;
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(4:8|9|10|11) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:10:0x0019 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public synchronized void b() {
        /*
            r2 = this;
            monitor-enter(r2)
            r0 = 0
            r2.e = r0     // Catch:{ all -> 0x001d }
            java.lang.Thread r0 = r2.f     // Catch:{ all -> 0x001d }
            r1 = 0
            if (r0 == 0) goto L_0x0010
            java.lang.Thread r0 = r2.f     // Catch:{ all -> 0x001d }
            r0.interrupt()     // Catch:{ all -> 0x001d }
            r2.f = r1     // Catch:{ all -> 0x001d }
        L_0x0010:
            android.net.LocalServerSocket r0 = r2.d     // Catch:{ all -> 0x001d }
            if (r0 == 0) goto L_0x001b
            android.net.LocalServerSocket r0 = r2.d     // Catch:{ IOException -> 0x0019 }
            r0.close()     // Catch:{ IOException -> 0x0019 }
        L_0x0019:
            r2.d = r1     // Catch:{ all -> 0x001d }
        L_0x001b:
            monitor-exit(r2)
            return
        L_0x001d:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.ew.b():void");
    }

    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0051, code lost:
        r1 = th;
     */
    /* JADX WARNING: Failed to process nested try/catch */
    /* JADX WARNING: Missing exception handler attribute for start block: B:30:0x0042 */
    /* JADX WARNING: Removed duplicated region for block: B:28:0x003f A[SYNTHETIC, Splitter:B:28:0x003f] */
    /* JADX WARNING: Removed duplicated region for block: B:34:0x0046 A[SYNTHETIC, Splitter:B:34:0x0046] */
    /* JADX WARNING: Removed duplicated region for block: B:40:0x0051 A[ExcHandler: all (th java.lang.Throwable), Splitter:B:12:0x0015] */
    /* JADX WARNING: Removed duplicated region for block: B:45:0x005b A[SYNTHETIC, Splitter:B:45:0x005b] */
    /* JADX WARNING: Removed duplicated region for block: B:60:0x0000 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r6 = this;
        L_0x0000:
            boolean r0 = r6.e
            if (r0 == 0) goto L_0x0066
            monitor-enter(r6)
            boolean r0 = r6.e     // Catch:{ all -> 0x0063 }
            r1 = 0
            if (r0 == 0) goto L_0x000d
            android.net.LocalServerSocket r0 = r6.d     // Catch:{ all -> 0x0063 }
            goto L_0x000e
        L_0x000d:
            r0 = r1
        L_0x000e:
            monitor-exit(r6)     // Catch:{ all -> 0x0063 }
            if (r0 == 0) goto L_0x0000
            android.net.LocalSocket r0 = r0.accept()     // Catch:{ IOException -> 0x005f, all -> 0x0055 }
            android.content.Context r2 = r6.c     // Catch:{ IOException -> 0x0053, all -> 0x0051 }
            java.lang.String r2 = r2.getPackageName()     // Catch:{ IOException -> 0x0053, all -> 0x0051 }
            java.io.BufferedOutputStream r3 = new java.io.BufferedOutputStream     // Catch:{ IOException -> 0x0043, all -> 0x003a }
            java.io.OutputStream r4 = r0.getOutputStream()     // Catch:{ IOException -> 0x0043, all -> 0x003a }
            r3.<init>(r4)     // Catch:{ IOException -> 0x0043, all -> 0x003a }
            java.lang.String r1 = "UTF-8"
            byte[] r1 = r2.getBytes(r1)     // Catch:{ IOException -> 0x0038, all -> 0x0036 }
            r3.write(r1)     // Catch:{ IOException -> 0x0038, all -> 0x0036 }
            r3.flush()     // Catch:{ IOException -> 0x0038, all -> 0x0036 }
            r3.close()     // Catch:{ IOException -> 0x0034, all -> 0x0051 }
            goto L_0x0049
        L_0x0034:
            goto L_0x0049
        L_0x0036:
            r1 = move-exception
            goto L_0x003d
        L_0x0038:
            r1 = r3
            goto L_0x0044
        L_0x003a:
            r2 = move-exception
            r3 = r1
            r1 = r2
        L_0x003d:
            if (r3 == 0) goto L_0x0042
            r3.close()     // Catch:{ IOException -> 0x0042, all -> 0x0051 }
        L_0x0042:
            throw r1     // Catch:{ IOException -> 0x0053, all -> 0x0051 }
        L_0x0043:
        L_0x0044:
            if (r1 == 0) goto L_0x0049
            r1.close()     // Catch:{ IOException -> 0x0034, all -> 0x0051 }
        L_0x0049:
            if (r0 == 0) goto L_0x0000
        L_0x004b:
            r0.close()     // Catch:{ IOException -> 0x004f }
            goto L_0x0000
        L_0x004f:
            goto L_0x0000
        L_0x0051:
            r1 = move-exception
            goto L_0x0059
        L_0x0053:
            goto L_0x0060
        L_0x0055:
            r0 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L_0x0059:
            if (r0 == 0) goto L_0x005e
            r0.close()     // Catch:{ IOException -> 0x005e }
        L_0x005e:
            throw r1
        L_0x005f:
            r0 = r1
        L_0x0060:
            if (r0 == 0) goto L_0x0000
            goto L_0x004b
        L_0x0063:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x0063 }
            throw r0
        L_0x0066:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.yandex.metrica.impl.ob.ew.run():void");
    }
}
