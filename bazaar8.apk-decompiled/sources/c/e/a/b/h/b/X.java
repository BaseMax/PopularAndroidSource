package c.e.a.b.h.b;

import c.e.a.b.d.d.r;
import java.util.concurrent.BlockingQueue;

public final class X extends Thread {

    /* renamed from: a  reason: collision with root package name */
    public final Object f10787a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public final BlockingQueue<W<?>> f10788b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ U f10789c;

    public X(U u, String str, BlockingQueue<W<?>> blockingQueue) {
        this.f10789c = u;
        r.a(str);
        r.a(blockingQueue);
        this.f10788b = blockingQueue;
        setName(str);
    }

    public final void a() {
        synchronized (this.f10787a) {
            this.f10787a.notifyAll();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:37:0x0065, code lost:
        r1 = r6.f10789c.f10767j;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x006b, code lost:
        monitor-enter(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:?, code lost:
        r6.f10789c.f10768k.release();
        r6.f10789c.f10767j.notifyAll();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0084, code lost:
        if (r6 != r6.f10789c.f10761d) goto L_0x008c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x0086, code lost:
        c.e.a.b.h.b.X unused = r6.f10789c.f10761d = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x0092, code lost:
        if (r6 != r6.f10789c.f10762e) goto L_0x009a;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x0094, code lost:
        c.e.a.b.h.b.X unused = r6.f10789c.f10762e = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x009a, code lost:
        r6.f10789c.e().t().a("Current scheduler thread is neither worker nor network");
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x00a9, code lost:
        monitor-exit(r1);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:48:0x00aa, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void run() {
        /*
            r6 = this;
            r0 = 0
        L_0x0001:
            if (r0 != 0) goto L_0x0013
            c.e.a.b.h.b.U r1 = r6.f10789c     // Catch:{ InterruptedException -> 0x000e }
            java.util.concurrent.Semaphore r1 = r1.f10768k     // Catch:{ InterruptedException -> 0x000e }
            r1.acquire()     // Catch:{ InterruptedException -> 0x000e }
            r0 = 1
            goto L_0x0001
        L_0x000e:
            r1 = move-exception
            r6.a(r1)
            goto L_0x0001
        L_0x0013:
            r0 = 0
            int r1 = android.os.Process.myTid()     // Catch:{ all -> 0x00b7 }
            int r1 = android.os.Process.getThreadPriority(r1)     // Catch:{ all -> 0x00b7 }
        L_0x001c:
            java.util.concurrent.BlockingQueue<c.e.a.b.h.b.W<?>> r2 = r6.f10788b     // Catch:{ all -> 0x00b7 }
            java.lang.Object r2 = r2.poll()     // Catch:{ all -> 0x00b7 }
            c.e.a.b.h.b.W r2 = (c.e.a.b.h.b.W) r2     // Catch:{ all -> 0x00b7 }
            if (r2 == 0) goto L_0x0035
            boolean r3 = r2.f10781b     // Catch:{ all -> 0x00b7 }
            if (r3 == 0) goto L_0x002c
            r3 = r1
            goto L_0x002e
        L_0x002c:
            r3 = 10
        L_0x002e:
            android.os.Process.setThreadPriority(r3)     // Catch:{ all -> 0x00b7 }
            r2.run()     // Catch:{ all -> 0x00b7 }
            goto L_0x001c
        L_0x0035:
            java.lang.Object r2 = r6.f10787a     // Catch:{ all -> 0x00b7 }
            monitor-enter(r2)     // Catch:{ all -> 0x00b7 }
            java.util.concurrent.BlockingQueue<c.e.a.b.h.b.W<?>> r3 = r6.f10788b     // Catch:{ all -> 0x00b4 }
            java.lang.Object r3 = r3.peek()     // Catch:{ all -> 0x00b4 }
            if (r3 != 0) goto L_0x0054
            c.e.a.b.h.b.U r3 = r6.f10789c     // Catch:{ all -> 0x00b4 }
            boolean r3 = r3.f10769l     // Catch:{ all -> 0x00b4 }
            if (r3 != 0) goto L_0x0054
            java.lang.Object r3 = r6.f10787a     // Catch:{ InterruptedException -> 0x0050 }
            r4 = 30000(0x7530, double:1.4822E-319)
            r3.wait(r4)     // Catch:{ InterruptedException -> 0x0050 }
            goto L_0x0054
        L_0x0050:
            r3 = move-exception
            r6.a(r3)     // Catch:{ all -> 0x00b4 }
        L_0x0054:
            monitor-exit(r2)     // Catch:{ all -> 0x00b4 }
            c.e.a.b.h.b.U r2 = r6.f10789c     // Catch:{ all -> 0x00b7 }
            java.lang.Object r2 = r2.f10767j     // Catch:{ all -> 0x00b7 }
            monitor-enter(r2)     // Catch:{ all -> 0x00b7 }
            java.util.concurrent.BlockingQueue<c.e.a.b.h.b.W<?>> r3 = r6.f10788b     // Catch:{ all -> 0x00b1 }
            java.lang.Object r3 = r3.peek()     // Catch:{ all -> 0x00b1 }
            if (r3 != 0) goto L_0x00ae
            monitor-exit(r2)     // Catch:{ all -> 0x00b1 }
            c.e.a.b.h.b.U r1 = r6.f10789c
            java.lang.Object r1 = r1.f10767j
            monitor-enter(r1)
            c.e.a.b.h.b.U r2 = r6.f10789c     // Catch:{ all -> 0x00ab }
            java.util.concurrent.Semaphore r2 = r2.f10768k     // Catch:{ all -> 0x00ab }
            r2.release()     // Catch:{ all -> 0x00ab }
            c.e.a.b.h.b.U r2 = r6.f10789c     // Catch:{ all -> 0x00ab }
            java.lang.Object r2 = r2.f10767j     // Catch:{ all -> 0x00ab }
            r2.notifyAll()     // Catch:{ all -> 0x00ab }
            c.e.a.b.h.b.U r2 = r6.f10789c     // Catch:{ all -> 0x00ab }
            c.e.a.b.h.b.X r2 = r2.f10761d     // Catch:{ all -> 0x00ab }
            if (r6 != r2) goto L_0x008c
            c.e.a.b.h.b.U r2 = r6.f10789c     // Catch:{ all -> 0x00ab }
            c.e.a.b.h.b.X unused = r2.f10761d = null     // Catch:{ all -> 0x00ab }
            goto L_0x00a9
        L_0x008c:
            c.e.a.b.h.b.U r2 = r6.f10789c     // Catch:{ all -> 0x00ab }
            c.e.a.b.h.b.X r2 = r2.f10762e     // Catch:{ all -> 0x00ab }
            if (r6 != r2) goto L_0x009a
            c.e.a.b.h.b.U r2 = r6.f10789c     // Catch:{ all -> 0x00ab }
            c.e.a.b.h.b.X unused = r2.f10762e = null     // Catch:{ all -> 0x00ab }
            goto L_0x00a9
        L_0x009a:
            c.e.a.b.h.b.U r0 = r6.f10789c     // Catch:{ all -> 0x00ab }
            c.e.a.b.h.b.t r0 = r0.e()     // Catch:{ all -> 0x00ab }
            c.e.a.b.h.b.v r0 = r0.t()     // Catch:{ all -> 0x00ab }
            java.lang.String r2 = "Current scheduler thread is neither worker nor network"
            r0.a(r2)     // Catch:{ all -> 0x00ab }
        L_0x00a9:
            monitor-exit(r1)     // Catch:{ all -> 0x00ab }
            return
        L_0x00ab:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x00ab }
            throw r0
        L_0x00ae:
            monitor-exit(r2)     // Catch:{ all -> 0x00b1 }
            goto L_0x001c
        L_0x00b1:
            r1 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x00b1 }
            throw r1     // Catch:{ all -> 0x00b7 }
        L_0x00b4:
            r1 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x00b4 }
            throw r1     // Catch:{ all -> 0x00b7 }
        L_0x00b7:
            r1 = move-exception
            c.e.a.b.h.b.U r2 = r6.f10789c
            java.lang.Object r2 = r2.f10767j
            monitor-enter(r2)
            c.e.a.b.h.b.U r3 = r6.f10789c     // Catch:{ all -> 0x00fe }
            java.util.concurrent.Semaphore r3 = r3.f10768k     // Catch:{ all -> 0x00fe }
            r3.release()     // Catch:{ all -> 0x00fe }
            c.e.a.b.h.b.U r3 = r6.f10789c     // Catch:{ all -> 0x00fe }
            java.lang.Object r3 = r3.f10767j     // Catch:{ all -> 0x00fe }
            r3.notifyAll()     // Catch:{ all -> 0x00fe }
            c.e.a.b.h.b.U r3 = r6.f10789c     // Catch:{ all -> 0x00fe }
            c.e.a.b.h.b.X r3 = r3.f10761d     // Catch:{ all -> 0x00fe }
            if (r6 == r3) goto L_0x00f7
            c.e.a.b.h.b.U r3 = r6.f10789c     // Catch:{ all -> 0x00fe }
            c.e.a.b.h.b.X r3 = r3.f10762e     // Catch:{ all -> 0x00fe }
            if (r6 != r3) goto L_0x00e7
            c.e.a.b.h.b.U r3 = r6.f10789c     // Catch:{ all -> 0x00fe }
            c.e.a.b.h.b.X unused = r3.f10762e = null     // Catch:{ all -> 0x00fe }
            goto L_0x00fc
        L_0x00e7:
            c.e.a.b.h.b.U r0 = r6.f10789c     // Catch:{ all -> 0x00fe }
            c.e.a.b.h.b.t r0 = r0.e()     // Catch:{ all -> 0x00fe }
            c.e.a.b.h.b.v r0 = r0.t()     // Catch:{ all -> 0x00fe }
            java.lang.String r3 = "Current scheduler thread is neither worker nor network"
            r0.a(r3)     // Catch:{ all -> 0x00fe }
            goto L_0x00fc
        L_0x00f7:
            c.e.a.b.h.b.U r3 = r6.f10789c     // Catch:{ all -> 0x00fe }
            c.e.a.b.h.b.X unused = r3.f10761d = null     // Catch:{ all -> 0x00fe }
        L_0x00fc:
            monitor-exit(r2)     // Catch:{ all -> 0x00fe }
            throw r1
        L_0x00fe:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x00fe }
            goto L_0x0102
        L_0x0101:
            throw r0
        L_0x0102:
            goto L_0x0101
        */
        throw new UnsupportedOperationException("Method not decompiled: c.e.a.b.h.b.X.run():void");
    }

    public final void a(InterruptedException interruptedException) {
        this.f10789c.e().w().a(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }
}
