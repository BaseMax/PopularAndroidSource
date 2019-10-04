package org.eclipse.paho.a.a.a;

import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import org.eclipse.paho.a.a.a.a.l;
import org.eclipse.paho.a.a.a.a.u;
import org.eclipse.paho.a.a.b.b;
import org.eclipse.paho.a.a.g;
import org.eclipse.paho.a.a.j;
import org.eclipse.paho.a.a.k;
import org.eclipse.paho.a.a.o;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.v;

public class c implements Runnable {

    /* renamed from: b  reason: collision with root package name */
    private static final String f8748b = c.class.getName();

    /* renamed from: a  reason: collision with root package name */
    Thread f8749a;
    private final b c = org.eclipse.paho.a.a.b.c.getLogger(org.eclipse.paho.a.a.b.c.MQTT_CLIENT_MSG_CAT, f8748b);
    private j d;
    private k e;
    private Hashtable<String, g> f;
    private a g;
    private Vector<u> h;
    private Vector<v> i;
    private a j = a.STOPPED;
    private a k = a.STOPPED;
    private Object l = new Object();
    private String m;
    private Future<?> n;
    private Object o = new Object();
    private Object p = new Object();
    private b q;
    private boolean r = false;

    enum a {
        STOPPED,
        RUNNING,
        QUIESCING
    }

    c(a aVar) {
        this.g = aVar;
        this.h = new Vector<>(10);
        this.i = new Vector<>(10);
        this.f = new Hashtable<>();
        this.c.setResourceName(aVar.getClient().getClientId());
    }

    public void setClientState(b bVar) {
        this.q = bVar;
    }

    public void start(String str, ExecutorService executorService) {
        this.m = str;
        synchronized (this.l) {
            if (this.j == a.STOPPED) {
                this.h.clear();
                this.i.clear();
                this.k = a.RUNNING;
                if (executorService == null) {
                    new Thread(this).start();
                } else {
                    this.n = executorService.submit(this);
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
        synchronized (this.l) {
            if (this.n != null) {
                this.n.cancel(true);
            }
        }
        if (isRunning()) {
            this.c.fine(f8748b, "stop", "700");
            synchronized (this.l) {
                this.k = a.STOPPED;
            }
            if (!Thread.currentThread().equals(this.f8749a)) {
                synchronized (this.o) {
                    this.c.fine(f8748b, "stop", "701");
                    this.o.notifyAll();
                }
                while (isRunning()) {
                    try {
                        Thread.sleep(100);
                    } catch (Exception unused) {
                    }
                    this.q.notifyQueueLock();
                }
            }
            this.c.fine(f8748b, "stop", "703");
        }
    }

    public void setCallback(j jVar) {
        this.d = jVar;
    }

    public void setReconnectCallback(k kVar) {
        this.e = kVar;
    }

    public void setManualAcks(boolean z) {
        this.r = z;
    }

    /* JADX WARNING: Missing exception handler attribute for start block: B:36:0x005b */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r12 = this;
            java.lang.Thread r0 = java.lang.Thread.currentThread()
            r12.f8749a = r0
            java.lang.Thread r0 = r12.f8749a
            java.lang.String r1 = r12.m
            r0.setName(r1)
            java.lang.Object r0 = r12.l
            monitor-enter(r0)
            org.eclipse.paho.a.a.a.c$a r1 = org.eclipse.paho.a.a.a.c.a.RUNNING     // Catch:{ all -> 0x01ef }
            r12.j = r1     // Catch:{ all -> 0x01ef }
            monitor-exit(r0)     // Catch:{ all -> 0x01ef }
        L_0x0015:
            boolean r0 = r12.isRunning()
            r1 = 0
            if (r0 != 0) goto L_0x002a
            java.lang.Object r0 = r12.l
            monitor-enter(r0)
            org.eclipse.paho.a.a.a.c$a r2 = org.eclipse.paho.a.a.a.c.a.STOPPED     // Catch:{ all -> 0x0027 }
            r12.j = r2     // Catch:{ all -> 0x0027 }
            monitor-exit(r0)     // Catch:{ all -> 0x0027 }
            r12.f8749a = r1
            return
        L_0x0027:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0027 }
            throw r1
        L_0x002a:
            java.lang.Object r0 = r12.o     // Catch:{ InterruptedException -> 0x005b }
            monitor-enter(r0)     // Catch:{ InterruptedException -> 0x005b }
            boolean r2 = r12.isRunning()     // Catch:{ all -> 0x0055 }
            if (r2 == 0) goto L_0x0053
            java.util.Vector<org.eclipse.paho.a.a.a.a.u> r2 = r12.h     // Catch:{ all -> 0x0055 }
            boolean r2 = r2.isEmpty()     // Catch:{ all -> 0x0055 }
            if (r2 == 0) goto L_0x0053
            java.util.Vector<org.eclipse.paho.a.a.v> r2 = r12.i     // Catch:{ all -> 0x0055 }
            boolean r2 = r2.isEmpty()     // Catch:{ all -> 0x0055 }
            if (r2 == 0) goto L_0x0053
            org.eclipse.paho.a.a.b.b r2 = r12.c     // Catch:{ all -> 0x0055 }
            java.lang.String r3 = f8748b     // Catch:{ all -> 0x0055 }
            java.lang.String r4 = "run"
            java.lang.String r5 = "704"
            r2.fine(r3, r4, r5)     // Catch:{ all -> 0x0055 }
            java.lang.Object r2 = r12.o     // Catch:{ all -> 0x0055 }
            r2.wait()     // Catch:{ all -> 0x0055 }
        L_0x0053:
            monitor-exit(r0)     // Catch:{ all -> 0x0055 }
            goto L_0x005b
        L_0x0055:
            r2 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0055 }
            throw r2     // Catch:{ InterruptedException -> 0x005b }
        L_0x0058:
            r0 = move-exception
            goto L_0x01a6
        L_0x005b:
            boolean r0 = r12.isRunning()     // Catch:{ all -> 0x0058 }
            if (r0 == 0) goto L_0x0182
            java.util.Vector<org.eclipse.paho.a.a.v> r0 = r12.i     // Catch:{ all -> 0x0058 }
            monitor-enter(r0)     // Catch:{ all -> 0x0058 }
            java.util.Vector<org.eclipse.paho.a.a.v> r2 = r12.i     // Catch:{ all -> 0x017f }
            boolean r2 = r2.isEmpty()     // Catch:{ all -> 0x017f }
            r3 = 0
            if (r2 != 0) goto L_0x007b
            java.util.Vector<org.eclipse.paho.a.a.v> r2 = r12.i     // Catch:{ all -> 0x017f }
            java.lang.Object r2 = r2.elementAt(r3)     // Catch:{ all -> 0x017f }
            org.eclipse.paho.a.a.v r2 = (org.eclipse.paho.a.a.v) r2     // Catch:{ all -> 0x017f }
            java.util.Vector<org.eclipse.paho.a.a.v> r4 = r12.i     // Catch:{ all -> 0x017f }
            r4.removeElementAt(r3)     // Catch:{ all -> 0x017f }
            goto L_0x007c
        L_0x007b:
            r2 = r1
        L_0x007c:
            monitor-exit(r0)     // Catch:{ all -> 0x017f }
            if (r2 == 0) goto L_0x0082
            r12.a(r2)     // Catch:{ all -> 0x0058 }
        L_0x0082:
            java.util.Vector<org.eclipse.paho.a.a.a.a.u> r0 = r12.h     // Catch:{ all -> 0x0058 }
            monitor-enter(r0)     // Catch:{ all -> 0x0058 }
            java.util.Vector<org.eclipse.paho.a.a.a.a.u> r2 = r12.h     // Catch:{ all -> 0x017c }
            boolean r2 = r2.isEmpty()     // Catch:{ all -> 0x017c }
            if (r2 != 0) goto L_0x009b
            java.util.Vector<org.eclipse.paho.a.a.a.a.u> r2 = r12.h     // Catch:{ all -> 0x017c }
            java.lang.Object r2 = r2.elementAt(r3)     // Catch:{ all -> 0x017c }
            org.eclipse.paho.a.a.a.a.o r2 = (org.eclipse.paho.a.a.a.a.o) r2     // Catch:{ all -> 0x017c }
            java.util.Vector<org.eclipse.paho.a.a.a.a.u> r4 = r12.h     // Catch:{ all -> 0x017c }
            r4.removeElementAt(r3)     // Catch:{ all -> 0x017c }
            goto L_0x009c
        L_0x009b:
            r2 = r1
        L_0x009c:
            monitor-exit(r0)     // Catch:{ all -> 0x017c }
            if (r2 == 0) goto L_0x0182
            java.lang.String r0 = r2.getTopicName()     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.b.b r4 = r12.c     // Catch:{ all -> 0x0058 }
            java.lang.String r5 = f8748b     // Catch:{ all -> 0x0058 }
            java.lang.String r6 = "handleMessage"
            java.lang.String r7 = "713"
            r8 = 2
            java.lang.Object[] r9 = new java.lang.Object[r8]     // Catch:{ all -> 0x0058 }
            int r10 = r2.getMessageId()     // Catch:{ all -> 0x0058 }
            java.lang.Integer r10 = java.lang.Integer.valueOf(r10)     // Catch:{ all -> 0x0058 }
            r9[r3] = r10     // Catch:{ all -> 0x0058 }
            r10 = 1
            r9[r10] = r0     // Catch:{ all -> 0x0058 }
            r4.fine(r5, r6, r7, r9)     // Catch:{ all -> 0x0058 }
            int r4 = r2.getMessageId()     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.q r5 = r2.getMessage()     // Catch:{ all -> 0x0058 }
            java.util.Hashtable<java.lang.String, org.eclipse.paho.a.a.g> r6 = r12.f     // Catch:{ all -> 0x0058 }
            java.util.Enumeration r6 = r6.keys()     // Catch:{ all -> 0x0058 }
            r7 = 0
        L_0x00cd:
            boolean r9 = r6.hasMoreElements()     // Catch:{ all -> 0x0058 }
            if (r9 != 0) goto L_0x015f
            org.eclipse.paho.a.a.j r6 = r12.d     // Catch:{ all -> 0x0058 }
            if (r6 == 0) goto L_0x00e1
            if (r7 != 0) goto L_0x00e1
            r5.setId(r4)     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.j r4 = r12.d     // Catch:{ all -> 0x0058 }
            r4.messageArrived(r0, r5)     // Catch:{ all -> 0x0058 }
        L_0x00e1:
            boolean r0 = r12.r     // Catch:{ all -> 0x0058 }
            if (r0 != 0) goto L_0x0182
            org.eclipse.paho.a.a.q r0 = r2.getMessage()     // Catch:{ all -> 0x0058 }
            int r0 = r0.getQos()     // Catch:{ all -> 0x0058 }
            if (r0 != r10) goto L_0x010a
            org.eclipse.paho.a.a.a.a r0 = r12.g     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.a.a.k r3 = new org.eclipse.paho.a.a.a.a.k     // Catch:{ all -> 0x0058 }
            r3.<init>((org.eclipse.paho.a.a.a.a.o) r2)     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.v r2 = new org.eclipse.paho.a.a.v     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.a.a r4 = r12.g     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.d r4 = r4.getClient()     // Catch:{ all -> 0x0058 }
            java.lang.String r4 = r4.getClientId()     // Catch:{ all -> 0x0058 }
            r2.<init>(r4)     // Catch:{ all -> 0x0058 }
            r0.a((org.eclipse.paho.a.a.a.a.u) r3, (org.eclipse.paho.a.a.v) r2)     // Catch:{ all -> 0x0058 }
            goto L_0x0182
        L_0x010a:
            org.eclipse.paho.a.a.q r0 = r2.getMessage()     // Catch:{ all -> 0x0058 }
            int r0 = r0.getQos()     // Catch:{ all -> 0x0058 }
            if (r0 != r8) goto L_0x0182
            org.eclipse.paho.a.a.a.a r0 = r12.g     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.a.b r0 = r0.f8726a     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.b.b r4 = r0.f8747b     // Catch:{ all -> 0x0058 }
            java.lang.String r5 = org.eclipse.paho.a.a.a.b.f8746a     // Catch:{ all -> 0x0058 }
            java.lang.String r6 = "deliveryComplete"
            java.lang.String r7 = "641"
            java.lang.Object[] r8 = new java.lang.Object[r10]     // Catch:{ all -> 0x0058 }
            int r9 = r2.getMessageId()     // Catch:{ all -> 0x0058 }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ all -> 0x0058 }
            r8[r3] = r9     // Catch:{ all -> 0x0058 }
            r4.fine(r5, r6, r7, r8)     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.m r3 = r0.k     // Catch:{ all -> 0x0058 }
            java.lang.String r4 = org.eclipse.paho.a.a.a.b.a((org.eclipse.paho.a.a.a.a.u) r2)     // Catch:{ all -> 0x0058 }
            r3.remove(r4)     // Catch:{ all -> 0x0058 }
            java.util.Hashtable r0 = r0.s     // Catch:{ all -> 0x0058 }
            int r3 = r2.getMessageId()     // Catch:{ all -> 0x0058 }
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)     // Catch:{ all -> 0x0058 }
            r0.remove(r3)     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.a.a.l r0 = new org.eclipse.paho.a.a.a.a.l     // Catch:{ all -> 0x0058 }
            r0.<init>((org.eclipse.paho.a.a.a.a.o) r2)     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.a.a r2 = r12.g     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.v r3 = new org.eclipse.paho.a.a.v     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.a.a r4 = r12.g     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.d r4 = r4.getClient()     // Catch:{ all -> 0x0058 }
            java.lang.String r4 = r4.getClientId()     // Catch:{ all -> 0x0058 }
            r3.<init>(r4)     // Catch:{ all -> 0x0058 }
            r2.a((org.eclipse.paho.a.a.a.a.u) r0, (org.eclipse.paho.a.a.v) r3)     // Catch:{ all -> 0x0058 }
            goto L_0x0182
        L_0x015f:
            java.lang.Object r9 = r6.nextElement()     // Catch:{ all -> 0x0058 }
            java.lang.String r9 = (java.lang.String) r9     // Catch:{ all -> 0x0058 }
            boolean r11 = org.eclipse.paho.a.a.w.isMatched(r9, r0)     // Catch:{ all -> 0x0058 }
            if (r11 == 0) goto L_0x00cd
            r5.setId(r4)     // Catch:{ all -> 0x0058 }
            java.util.Hashtable<java.lang.String, org.eclipse.paho.a.a.g> r7 = r12.f     // Catch:{ all -> 0x0058 }
            java.lang.Object r7 = r7.get(r9)     // Catch:{ all -> 0x0058 }
            org.eclipse.paho.a.a.g r7 = (org.eclipse.paho.a.a.g) r7     // Catch:{ all -> 0x0058 }
            r7.messageArrived(r0, r5)     // Catch:{ all -> 0x0058 }
            r7 = 1
            goto L_0x00cd
        L_0x017c:
            r2 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x017c }
            throw r2     // Catch:{ all -> 0x0058 }
        L_0x017f:
            r2 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x017f }
            throw r2     // Catch:{ all -> 0x0058 }
        L_0x0182:
            boolean r0 = r12.isQuiescing()     // Catch:{ all -> 0x0058 }
            if (r0 == 0) goto L_0x018d
            org.eclipse.paho.a.a.a.b r0 = r12.q     // Catch:{ all -> 0x0058 }
            r0.c()     // Catch:{ all -> 0x0058 }
        L_0x018d:
            java.lang.Object r0 = r12.p
            monitor-enter(r0)
            org.eclipse.paho.a.a.b.b r1 = r12.c     // Catch:{ all -> 0x01a3 }
            java.lang.String r2 = f8748b     // Catch:{ all -> 0x01a3 }
            java.lang.String r3 = "run"
            java.lang.String r4 = "706"
            r1.fine(r2, r3, r4)     // Catch:{ all -> 0x01a3 }
            java.lang.Object r1 = r12.p     // Catch:{ all -> 0x01a3 }
            r1.notifyAll()     // Catch:{ all -> 0x01a3 }
            monitor-exit(r0)     // Catch:{ all -> 0x01a3 }
            goto L_0x0015
        L_0x01a3:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x01a3 }
            throw r1
        L_0x01a6:
            org.eclipse.paho.a.a.b.b r2 = r12.c     // Catch:{ all -> 0x01d6 }
            java.lang.String r3 = f8748b     // Catch:{ all -> 0x01d6 }
            java.lang.String r4 = "run"
            java.lang.String r5 = "714"
            r6 = 0
            r7 = r0
            r2.fine(r3, r4, r5, r6, r7)     // Catch:{ all -> 0x01d6 }
            org.eclipse.paho.a.a.a.a r2 = r12.g     // Catch:{ all -> 0x01d6 }
            org.eclipse.paho.a.a.p r3 = new org.eclipse.paho.a.a.p     // Catch:{ all -> 0x01d6 }
            r3.<init>((java.lang.Throwable) r0)     // Catch:{ all -> 0x01d6 }
            r2.shutdownConnection(r1, r3)     // Catch:{ all -> 0x01d6 }
            java.lang.Object r0 = r12.p
            monitor-enter(r0)
            org.eclipse.paho.a.a.b.b r1 = r12.c     // Catch:{ all -> 0x01d3 }
            java.lang.String r2 = f8748b     // Catch:{ all -> 0x01d3 }
            java.lang.String r3 = "run"
            java.lang.String r4 = "706"
            r1.fine(r2, r3, r4)     // Catch:{ all -> 0x01d3 }
            java.lang.Object r1 = r12.p     // Catch:{ all -> 0x01d3 }
            r1.notifyAll()     // Catch:{ all -> 0x01d3 }
            monitor-exit(r0)     // Catch:{ all -> 0x01d3 }
            goto L_0x0015
        L_0x01d3:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x01d3 }
            throw r1
        L_0x01d6:
            r0 = move-exception
            java.lang.Object r1 = r12.p
            monitor-enter(r1)
            org.eclipse.paho.a.a.b.b r2 = r12.c     // Catch:{ all -> 0x01ec }
            java.lang.String r3 = f8748b     // Catch:{ all -> 0x01ec }
            java.lang.String r4 = "run"
            java.lang.String r5 = "706"
            r2.fine(r3, r4, r5)     // Catch:{ all -> 0x01ec }
            java.lang.Object r2 = r12.p     // Catch:{ all -> 0x01ec }
            r2.notifyAll()     // Catch:{ all -> 0x01ec }
            monitor-exit(r1)     // Catch:{ all -> 0x01ec }
            throw r0
        L_0x01ec:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x01ec }
            throw r0
        L_0x01ef:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x01ef }
            goto L_0x01f3
        L_0x01f2:
            throw r1
        L_0x01f3:
            goto L_0x01f2
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.a.c.run():void");
    }

    private void a(v vVar) throws p {
        synchronized (vVar) {
            this.c.fine(f8748b, "handleActionComplete", "705", new Object[]{vVar.internalTok.getKey()});
            if (vVar.isComplete()) {
                this.q.a(vVar);
            }
            vVar.internalTok.a();
            if (!vVar.internalTok.isNotified()) {
                if (this.d != null && (vVar instanceof o) && vVar.isComplete()) {
                    this.d.deliveryComplete((o) vVar);
                }
                fireActionEvent(vVar);
            }
            if (vVar.isComplete() && (vVar instanceof o)) {
                vVar.internalTok.setNotified(true);
            }
        }
    }

    public void connectionLost(p pVar) {
        try {
            if (!(this.d == null || pVar == null)) {
                this.c.fine(f8748b, "connectionLost", "708", new Object[]{pVar});
                this.d.connectionLost(pVar);
            }
            if (!(this.e == null || pVar == null)) {
                this.e.connectionLost(pVar);
            }
        } catch (Throwable th) {
            this.c.fine(f8748b, "connectionLost", "720", new Object[]{th});
        }
    }

    public void fireActionEvent(v vVar) {
        if (vVar != null) {
            org.eclipse.paho.a.a.c actionCallback = vVar.getActionCallback();
            if (actionCallback != null) {
                if (vVar.getException() == null) {
                    this.c.fine(f8748b, "fireActionEvent", "716", new Object[]{vVar.internalTok.getKey()});
                    actionCallback.onSuccess(vVar);
                    return;
                }
                this.c.fine(f8748b, "fireActionEvent", "716", new Object[]{vVar.internalTok.getKey()});
                actionCallback.onFailure(vVar, vVar.getException());
            }
        }
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:6:0x000f */
    /* JADX WARNING: Removed duplicated region for block: B:6:0x000f A[LOOP:0: B:6:0x000f->B:34:0x000f, LOOP_START, SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void messageArrived(org.eclipse.paho.a.a.a.a.o r6) {
        /*
            r5 = this;
            org.eclipse.paho.a.a.j r0 = r5.d
            if (r0 != 0) goto L_0x000c
            java.util.Hashtable<java.lang.String, org.eclipse.paho.a.a.g> r0 = r5.f
            int r0 = r0.size()
            if (r0 <= 0) goto L_0x005d
        L_0x000c:
            java.lang.Object r0 = r5.p
            monitor-enter(r0)
        L_0x000f:
            boolean r1 = r5.isRunning()     // Catch:{ all -> 0x005e }
            if (r1 == 0) goto L_0x0039
            boolean r1 = r5.isQuiescing()     // Catch:{ all -> 0x005e }
            if (r1 != 0) goto L_0x0039
            java.util.Vector<org.eclipse.paho.a.a.a.a.u> r1 = r5.h     // Catch:{ all -> 0x005e }
            int r1 = r1.size()     // Catch:{ all -> 0x005e }
            r2 = 10
            if (r1 >= r2) goto L_0x0026
            goto L_0x0039
        L_0x0026:
            org.eclipse.paho.a.a.b.b r1 = r5.c     // Catch:{ InterruptedException -> 0x000f }
            java.lang.String r2 = f8748b     // Catch:{ InterruptedException -> 0x000f }
            java.lang.String r3 = "messageArrived"
            java.lang.String r4 = "709"
            r1.fine(r2, r3, r4)     // Catch:{ InterruptedException -> 0x000f }
            java.lang.Object r1 = r5.p     // Catch:{ InterruptedException -> 0x000f }
            r2 = 200(0xc8, double:9.9E-322)
            r1.wait(r2)     // Catch:{ InterruptedException -> 0x000f }
            goto L_0x000f
        L_0x0039:
            monitor-exit(r0)     // Catch:{ all -> 0x005e }
            boolean r0 = r5.isQuiescing()
            if (r0 != 0) goto L_0x005d
            java.util.Vector<org.eclipse.paho.a.a.a.a.u> r0 = r5.h
            r0.addElement(r6)
            java.lang.Object r6 = r5.o
            monitor-enter(r6)
            org.eclipse.paho.a.a.b.b r0 = r5.c     // Catch:{ all -> 0x005a }
            java.lang.String r1 = f8748b     // Catch:{ all -> 0x005a }
            java.lang.String r2 = "messageArrived"
            java.lang.String r3 = "710"
            r0.fine(r1, r2, r3)     // Catch:{ all -> 0x005a }
            java.lang.Object r0 = r5.o     // Catch:{ all -> 0x005a }
            r0.notifyAll()     // Catch:{ all -> 0x005a }
            monitor-exit(r6)     // Catch:{ all -> 0x005a }
            return
        L_0x005a:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x005a }
            throw r0
        L_0x005d:
            return
        L_0x005e:
            r6 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x005e }
            goto L_0x0062
        L_0x0061:
            throw r6
        L_0x0062:
            goto L_0x0061
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.a.c.messageArrived(org.eclipse.paho.a.a.a.a.o):void");
    }

    public void quiesce() {
        synchronized (this.l) {
            if (this.j == a.RUNNING) {
                this.j = a.QUIESCING;
            }
        }
        synchronized (this.p) {
            this.c.fine(f8748b, "quiesce", "711");
            this.p.notifyAll();
        }
    }

    public boolean isQuiesced() {
        return isQuiescing() && this.i.size() == 0 && this.h.size() == 0;
    }

    public void messageArrivedComplete(int i2, int i3) throws p {
        if (i3 == 1) {
            this.g.a((u) new org.eclipse.paho.a.a.a.a.k(i2), new v(this.g.getClient().getClientId()));
            return;
        }
        if (i3 == 2) {
            b bVar = this.g.f8726a;
            bVar.f8747b.fine(b.f8746a, "deliveryComplete", "641", new Object[]{Integer.valueOf(i2)});
            bVar.k.remove(b.a(i2));
            bVar.s.remove(Integer.valueOf(i2));
            l lVar = new l(i2);
            a aVar = this.g;
            aVar.a((u) lVar, new v(aVar.getClient().getClientId()));
        }
    }

    public void asyncOperationComplete(v vVar) {
        if (isRunning()) {
            this.i.addElement(vVar);
            synchronized (this.o) {
                this.c.fine(f8748b, "asyncOperationComplete", "715", new Object[]{vVar.internalTok.getKey()});
                this.o.notifyAll();
            }
            return;
        }
        try {
            a(vVar);
        } catch (Throwable th) {
            this.c.fine(f8748b, "asyncOperationComplete", "719", null, th);
            this.g.shutdownConnection(null, new p(th));
        }
    }

    public void setMessageListener(String str, g gVar) {
        this.f.put(str, gVar);
    }

    public void removeMessageListener(String str) {
        this.f.remove(str);
    }

    public void removeMessageListeners() {
        this.f.clear();
    }

    public boolean isRunning() {
        boolean z;
        synchronized (this.l) {
            z = (this.j == a.RUNNING || this.j == a.QUIESCING) && this.k == a.RUNNING;
        }
        return z;
    }

    public boolean isQuiescing() {
        boolean z;
        synchronized (this.l) {
            z = this.j == a.QUIESCING;
        }
        return z;
    }
}
