package org.eclipse.paho.a.a.a;

import java.io.OutputStream;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import org.eclipse.paho.a.a.a.a.g;
import org.eclipse.paho.a.a.b.b;
import org.eclipse.paho.a.a.b.c;
import org.eclipse.paho.a.a.p;

public class e implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8754a = e.class.getName();

    /* renamed from: b  reason: collision with root package name */
    private b f8755b = c.getLogger(c.MQTT_CLIENT_MSG_CAT, f8754a);
    private a c = a.STOPPED;
    private a d = a.STOPPED;
    private Object e = new Object();
    private Thread f = null;
    private String g;
    private Future<?> h;
    private b i = null;
    private g j;
    private a k = null;
    private f l = null;

    enum a {
        STOPPED,
        RUNNING,
        STARTING
    }

    public e(a aVar, b bVar, f fVar, OutputStream outputStream) {
        this.j = new g(bVar, outputStream);
        this.k = aVar;
        this.i = bVar;
        this.l = fVar;
        this.f8755b.setResourceName(aVar.getClient().getClientId());
    }

    public void start(String str, ExecutorService executorService) {
        this.g = str;
        synchronized (this.e) {
            if (this.c == a.STOPPED && this.d == a.STOPPED) {
                this.d = a.RUNNING;
                if (executorService == null) {
                    new Thread(this).start();
                } else {
                    this.h = executorService.submit(this);
                }
            }
        }
        while (!isRunning()) {
            try {
                Thread.sleep(100);
            } catch (Exception unused) {
            }
        }
    }

    public void stop() {
        if (isRunning()) {
            synchronized (this.e) {
                if (this.h != null) {
                    this.h.cancel(true);
                }
                this.f8755b.fine(f8754a, "stop", "800");
                if (isRunning()) {
                    this.d = a.STOPPED;
                    this.i.notifyQueueLock();
                }
            }
            while (isRunning()) {
                try {
                    Thread.sleep(100);
                } catch (Exception unused) {
                }
                this.i.notifyQueueLock();
            }
            this.f8755b.fine(f8754a, "stop", "801");
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:61:0x00a2 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r9 = this;
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r9.f = r0
            java.lang.Thread r0 = r9.f
            java.lang.String r1 = r9.g
            r0.setName(r1)
            java.lang.Object r0 = r9.e
            monitor-enter(r0)
            org.eclipse.paho.a.a.a.e$a r1 = org.eclipse.paho.a.a.a.e.a.RUNNING     // Catch:{ all -> 0x00d5 }
            r9.c = r1     // Catch:{ all -> 0x00d5 }
            monitor-exit(r0)     // Catch:{ all -> 0x00d5 }
            r0 = 0
            java.lang.Object r1 = r9.e     // Catch:{ all -> 0x00c6 }
            monitor-enter(r1)     // Catch:{ all -> 0x00c6 }
            org.eclipse.paho.a.a.a.e$a r2 = r9.d     // Catch:{ all -> 0x00c3 }
            monitor-exit(r1)     // Catch:{ all -> 0x00c3 }
        L_0x001c:
            org.eclipse.paho.a.a.a.e$a r1 = org.eclipse.paho.a.a.a.e.a.RUNNING     // Catch:{ all -> 0x00c6 }
            if (r2 != r1) goto L_0x00aa
            org.eclipse.paho.a.a.a.a.g r1 = r9.j     // Catch:{ all -> 0x00c6 }
            if (r1 != 0) goto L_0x0026
            goto L_0x00aa
        L_0x0026:
            org.eclipse.paho.a.a.a.b r1 = r9.i     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            org.eclipse.paho.a.a.a.a.u r1 = r1.b()     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            if (r1 == 0) goto L_0x007f
            org.eclipse.paho.a.a.b.b r2 = r9.f8755b     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            java.lang.String r3 = f8754a     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            java.lang.String r4 = "run"
            java.lang.String r5 = "802"
            r6 = 2
            java.lang.Object[] r6 = new java.lang.Object[r6]     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            r7 = 0
            java.lang.String r8 = r1.getKey()     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            r6[r7] = r8     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            r7 = 1
            r6[r7] = r1     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            r2.fine(r3, r4, r5, r6)     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            boolean r2 = r1 instanceof org.eclipse.paho.a.a.a.a.b     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            if (r2 == 0) goto L_0x0055
            org.eclipse.paho.a.a.a.a.g r2 = r9.j     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            r2.write((org.eclipse.paho.a.a.a.a.u) r1)     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            org.eclipse.paho.a.a.a.a.g r1 = r9.j     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            r1.flush()     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            goto L_0x009f
        L_0x0055:
            org.eclipse.paho.a.a.v r2 = r1.getToken()     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            if (r2 != 0) goto L_0x0061
            org.eclipse.paho.a.a.a.f r2 = r9.l     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            org.eclipse.paho.a.a.v r2 = r2.getToken((org.eclipse.paho.a.a.a.a.u) r1)     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
        L_0x0061:
            if (r2 == 0) goto L_0x009f
            monitor-enter(r2)     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            org.eclipse.paho.a.a.a.a.g r3 = r9.j     // Catch:{ all -> 0x007c }
            r3.write((org.eclipse.paho.a.a.a.a.u) r1)     // Catch:{ all -> 0x007c }
            org.eclipse.paho.a.a.a.a.g r3 = r9.j     // Catch:{ IOException -> 0x006f }
            r3.flush()     // Catch:{ IOException -> 0x006f }
            goto L_0x0074
        L_0x006f:
            r3 = move-exception
            boolean r4 = r1 instanceof org.eclipse.paho.a.a.a.a.e     // Catch:{ all -> 0x007c }
            if (r4 == 0) goto L_0x007b
        L_0x0074:
            org.eclipse.paho.a.a.a.b r3 = r9.i     // Catch:{ all -> 0x007c }
            r3.b((org.eclipse.paho.a.a.a.a.u) r1)     // Catch:{ all -> 0x007c }
            monitor-exit(r2)     // Catch:{ all -> 0x007c }
            goto L_0x009f
        L_0x007b:
            throw r3     // Catch:{ all -> 0x007c }
        L_0x007c:
            r1 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x007c }
            throw r1     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
        L_0x007f:
            org.eclipse.paho.a.a.b.b r1 = r9.f8755b     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            java.lang.String r2 = f8754a     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            java.lang.String r3 = "run"
            java.lang.String r4 = "803"
            r1.fine(r2, r3, r4)     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            java.lang.Object r1 = r9.e     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            monitor-enter(r1)     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
            org.eclipse.paho.a.a.a.e$a r2 = org.eclipse.paho.a.a.a.e.a.STOPPED     // Catch:{ all -> 0x0093 }
            r9.d = r2     // Catch:{ all -> 0x0093 }
            monitor-exit(r1)     // Catch:{ all -> 0x0093 }
            goto L_0x009f
        L_0x0093:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0093 }
            throw r2     // Catch:{ p -> 0x009b, Exception -> 0x0096 }
        L_0x0096:
            r1 = move-exception
            r9.a(r1)     // Catch:{ all -> 0x00c6 }
            goto L_0x009f
        L_0x009b:
            r1 = move-exception
            r9.a(r1)     // Catch:{ all -> 0x00c6 }
        L_0x009f:
            java.lang.Object r1 = r9.e     // Catch:{ all -> 0x00c6 }
            monitor-enter(r1)     // Catch:{ all -> 0x00c6 }
            org.eclipse.paho.a.a.a.e$a r2 = r9.d     // Catch:{ all -> 0x00a7 }
            monitor-exit(r1)     // Catch:{ all -> 0x00a7 }
            goto L_0x001c
        L_0x00a7:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00a7 }
            throw r2     // Catch:{ all -> 0x00c6 }
        L_0x00aa:
            java.lang.Object r1 = r9.e
            monitor-enter(r1)
            org.eclipse.paho.a.a.a.e$a r2 = org.eclipse.paho.a.a.a.e.a.STOPPED     // Catch:{ all -> 0x00c0 }
            r9.c = r2     // Catch:{ all -> 0x00c0 }
            r9.f = r0     // Catch:{ all -> 0x00c0 }
            monitor-exit(r1)     // Catch:{ all -> 0x00c0 }
            org.eclipse.paho.a.a.b.b r0 = r9.f8755b
            java.lang.String r1 = f8754a
            java.lang.String r2 = "run"
            java.lang.String r3 = "805"
            r0.fine(r1, r2, r3)
            return
        L_0x00c0:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00c0 }
            throw r0
        L_0x00c3:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00c3 }
            throw r2     // Catch:{ all -> 0x00c6 }
        L_0x00c6:
            r1 = move-exception
            java.lang.Object r2 = r9.e
            monitor-enter(r2)
            org.eclipse.paho.a.a.a.e$a r3 = org.eclipse.paho.a.a.a.e.a.STOPPED     // Catch:{ all -> 0x00d2 }
            r9.c = r3     // Catch:{ all -> 0x00d2 }
            r9.f = r0     // Catch:{ all -> 0x00d2 }
            monitor-exit(r2)     // Catch:{ all -> 0x00d2 }
            throw r1
        L_0x00d2:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x00d2 }
            throw r0
        L_0x00d5:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00d5 }
            goto L_0x00d9
        L_0x00d8:
            throw r1
        L_0x00d9:
            goto L_0x00d8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.a.e.run():void");
    }

    private void a(Exception exc) {
        p pVar;
        this.f8755b.fine(f8754a, "handleRunException", "804", null, exc);
        if (!(exc instanceof p)) {
            pVar = new p(32109, exc);
        } else {
            pVar = (p) exc;
        }
        synchronized (this.e) {
            this.d = a.STOPPED;
        }
        this.k.shutdownConnection(null, pVar);
    }

    public boolean isRunning() {
        boolean z;
        synchronized (this.e) {
            z = this.c == a.RUNNING && this.d == a.RUNNING;
        }
        return z;
    }
}
