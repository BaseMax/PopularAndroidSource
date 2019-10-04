package org.eclipse.paho.a.a.a;

import java.util.Enumeration;
import java.util.Properties;
import java.util.Vector;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import org.eclipse.paho.a.a.a.a.c;
import org.eclipse.paho.a.a.a.a.e;
import org.eclipse.paho.a.a.a.a.u;
import org.eclipse.paho.a.a.d;
import org.eclipse.paho.a.a.f;
import org.eclipse.paho.a.a.g;
import org.eclipse.paho.a.a.j;
import org.eclipse.paho.a.a.k;
import org.eclipse.paho.a.a.m;
import org.eclipse.paho.a.a.n;
import org.eclipse.paho.a.a.o;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.q;
import org.eclipse.paho.a.a.t;
import org.eclipse.paho.a.a.v;

public class a {
    public static String BUILD_LEVEL = "L${build.level}";
    public static String VERSION = "${project.version}";
    /* access modifiers changed from: package-private */

    /* renamed from: a  reason: collision with root package name */
    public b f8726a;
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final String f8727b;
    /* access modifiers changed from: private */
    public final org.eclipse.paho.a.a.b.b c;
    private d d;
    /* access modifiers changed from: private */
    public int e;
    /* access modifiers changed from: private */
    public n[] f;
    /* access modifiers changed from: private */
    public d g;
    /* access modifiers changed from: private */
    public e h;
    /* access modifiers changed from: private */
    public c i;
    private n j;
    private m k;
    private t l;
    /* access modifiers changed from: private */
    public f m;
    private boolean n;
    private byte o;
    private Object p;
    private boolean q;
    private boolean r;
    private h s;
    /* access modifiers changed from: private */
    public ExecutorService t;

    /* renamed from: org.eclipse.paho.a.a.a.a$a  reason: collision with other inner class name */
    class C0209a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        a f8728a = null;

        /* renamed from: b  reason: collision with root package name */
        v f8729b;
        org.eclipse.paho.a.a.a.a.d c;
        private String e;

        C0209a(a aVar, v vVar, org.eclipse.paho.a.a.a.a.d dVar) {
            this.f8728a = aVar;
            this.f8729b = vVar;
            this.c = dVar;
            this.e = "MQTT Con: " + r2.getClient().getClientId();
        }

        public final void run() {
            Thread.currentThread().setName(this.e);
            a.this.c.fine(a.this.f8727b, "connectBG:run", "220");
            p e2 = null;
            try {
                o[] outstandingDelTokens = a.this.m.getOutstandingDelTokens();
                for (o oVar : outstandingDelTokens) {
                    oVar.internalTok.setException(null);
                }
                a.this.m.a(this.f8729b, (u) this.c);
                n nVar = a.this.f[a.this.e];
                nVar.start();
                a.this.g = new d(this.f8728a, a.this.f8726a, a.this.m, nVar.getInputStream());
                a.this.g.start("MQTT Rec: " + a.this.getClient().getClientId(), a.this.t);
                a.this.h = new e(this.f8728a, a.this.f8726a, a.this.m, nVar.getOutputStream());
                a.this.h.start("MQTT Snd: " + a.this.getClient().getClientId(), a.this.t);
                a.this.i.start("MQTT Call: " + a.this.getClient().getClientId(), a.this.t);
                a.this.a((u) this.c, this.f8729b);
            } catch (p e3) {
                e2 = e3;
                a.this.c.fine(a.this.f8727b, "connectBG:run", "212", null, e2);
            } catch (Exception e4) {
                a.this.c.fine(a.this.f8727b, "connectBG:run", "209", null, e4);
                e2 = i.createMqttException((Throwable) e4);
            }
            if (e2 != null) {
                a.this.shutdownConnection(this.f8729b, e2);
            }
        }
    }

    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        e f8732a;

        /* renamed from: b  reason: collision with root package name */
        long f8733b;
        v c;
        String d;

        b(e eVar, long j, v vVar) {
            this.f8732a = eVar;
            this.f8733b = j;
            this.c = vVar;
        }

        /* JADX WARNING: Code restructure failed: missing block: B:10:0x0065, code lost:
            if (org.eclipse.paho.a.a.a.a.i(r4.e).isRunning() != false) goto L_0x006e;
         */
        /* JADX WARNING: Code restructure failed: missing block: B:26:0x00bb, code lost:
            if (org.eclipse.paho.a.a.a.a.i(r4.e).isRunning() != false) goto L_0x006e;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final void run() {
            /*
                r4 = this;
                java.lang.Thread r0 = java.lang.Thread.currentThread()
                java.lang.String r1 = r4.d
                r0.setName(r1)
                org.eclipse.paho.a.a.a.a r0 = org.eclipse.paho.a.a.a.a.this
                org.eclipse.paho.a.a.b.b r0 = r0.c
                org.eclipse.paho.a.a.a.a r1 = org.eclipse.paho.a.a.a.a.this
                java.lang.String r1 = r1.f8727b
                java.lang.String r2 = "disconnectBG:run"
                java.lang.String r3 = "221"
                r0.fine(r1, r2, r3)
                org.eclipse.paho.a.a.a.a r0 = org.eclipse.paho.a.a.a.a.this
                org.eclipse.paho.a.a.a.b r0 = r0.f8726a
                long r1 = r4.f8733b
                r0.quiesce(r1)
                r0 = 0
                org.eclipse.paho.a.a.a.a r1 = org.eclipse.paho.a.a.a.a.this     // Catch:{ p -> 0x00a1, all -> 0x0076 }
                org.eclipse.paho.a.a.a.a.e r2 = r4.f8732a     // Catch:{ p -> 0x00a1, all -> 0x0076 }
                org.eclipse.paho.a.a.v r3 = r4.c     // Catch:{ p -> 0x00a1, all -> 0x0076 }
                r1.a((org.eclipse.paho.a.a.a.a.u) r2, (org.eclipse.paho.a.a.v) r3)     // Catch:{ p -> 0x00a1, all -> 0x0076 }
                org.eclipse.paho.a.a.a.a r1 = org.eclipse.paho.a.a.a.a.this     // Catch:{ p -> 0x00a1, all -> 0x0076 }
                org.eclipse.paho.a.a.a.e r1 = r1.h     // Catch:{ p -> 0x00a1, all -> 0x0076 }
                if (r1 == 0) goto L_0x004c
                org.eclipse.paho.a.a.a.a r1 = org.eclipse.paho.a.a.a.a.this     // Catch:{ p -> 0x00a1, all -> 0x0076 }
                org.eclipse.paho.a.a.a.e r1 = r1.h     // Catch:{ p -> 0x00a1, all -> 0x0076 }
                boolean r1 = r1.isRunning()     // Catch:{ p -> 0x00a1, all -> 0x0076 }
                if (r1 == 0) goto L_0x004c
                org.eclipse.paho.a.a.v r1 = r4.c     // Catch:{ p -> 0x00a1, all -> 0x0076 }
                org.eclipse.paho.a.a.a.q r1 = r1.internalTok     // Catch:{ p -> 0x00a1, all -> 0x0076 }
                r1.waitUntilSent()     // Catch:{ p -> 0x00a1, all -> 0x0076 }
            L_0x004c:
                org.eclipse.paho.a.a.v r1 = r4.c
                org.eclipse.paho.a.a.a.q r1 = r1.internalTok
                r1.a(r0, r0)
                org.eclipse.paho.a.a.a.a r1 = org.eclipse.paho.a.a.a.a.this
                org.eclipse.paho.a.a.a.e r1 = r1.h
                if (r1 == 0) goto L_0x0067
                org.eclipse.paho.a.a.a.a r1 = org.eclipse.paho.a.a.a.a.this
                org.eclipse.paho.a.a.a.e r1 = r1.h
                boolean r1 = r1.isRunning()
                if (r1 != 0) goto L_0x006e
            L_0x0067:
                org.eclipse.paho.a.a.v r1 = r4.c
                org.eclipse.paho.a.a.a.q r1 = r1.internalTok
                r1.a()
            L_0x006e:
                org.eclipse.paho.a.a.a.a r1 = org.eclipse.paho.a.a.a.a.this
                org.eclipse.paho.a.a.v r2 = r4.c
                r1.shutdownConnection(r2, r0)
                return
            L_0x0076:
                r1 = move-exception
                org.eclipse.paho.a.a.v r2 = r4.c
                org.eclipse.paho.a.a.a.q r2 = r2.internalTok
                r2.a(r0, r0)
                org.eclipse.paho.a.a.a.a r2 = org.eclipse.paho.a.a.a.a.this
                org.eclipse.paho.a.a.a.e r2 = r2.h
                if (r2 == 0) goto L_0x0092
                org.eclipse.paho.a.a.a.a r2 = org.eclipse.paho.a.a.a.a.this
                org.eclipse.paho.a.a.a.e r2 = r2.h
                boolean r2 = r2.isRunning()
                if (r2 != 0) goto L_0x0099
            L_0x0092:
                org.eclipse.paho.a.a.v r2 = r4.c
                org.eclipse.paho.a.a.a.q r2 = r2.internalTok
                r2.a()
            L_0x0099:
                org.eclipse.paho.a.a.a.a r2 = org.eclipse.paho.a.a.a.a.this
                org.eclipse.paho.a.a.v r3 = r4.c
                r2.shutdownConnection(r3, r0)
                throw r1
            L_0x00a1:
                org.eclipse.paho.a.a.v r1 = r4.c
                org.eclipse.paho.a.a.a.q r1 = r1.internalTok
                r1.a(r0, r0)
                org.eclipse.paho.a.a.a.a r1 = org.eclipse.paho.a.a.a.a.this
                org.eclipse.paho.a.a.a.e r1 = r1.h
                if (r1 == 0) goto L_0x0067
                org.eclipse.paho.a.a.a.a r1 = org.eclipse.paho.a.a.a.a.this
                org.eclipse.paho.a.a.a.e r1 = r1.h
                boolean r1 = r1.isRunning()
                if (r1 != 0) goto L_0x006e
                goto L_0x0067
            */
            throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.a.a.b.run():void");
        }
    }

    class c implements k {

        /* renamed from: a  reason: collision with root package name */
        final String f8734a;

        c(String str) {
            this.f8734a = str;
        }

        public final void publishBufferedMessage(org.eclipse.paho.a.a.a aVar) throws p {
            if (a.this.isConnected()) {
                while (a.this.f8726a.getActualInFlight() >= a.this.f8726a.getMaxInFlight() - 3) {
                    Thread.yield();
                }
                a.this.c.fine(a.this.f8727b, this.f8734a, "510", new Object[]{aVar.getMessage().getKey()});
                a.this.a(aVar.getMessage(), aVar.getToken());
                a.this.f8726a.unPersistBufferedMessage(aVar.getMessage());
                return;
            }
            a.this.c.fine(a.this.f8727b, this.f8734a, "208");
            throw i.createMqttException(32104);
        }
    }

    public a(d dVar, m mVar, t tVar, ExecutorService executorService) throws p {
        this.f8727b = a.class.getName();
        this.c = org.eclipse.paho.a.a.b.c.getLogger(org.eclipse.paho.a.a.b.c.MQTT_CLIENT_MSG_CAT, this.f8727b);
        this.n = false;
        this.o = 3;
        this.p = new Object();
        this.q = false;
        this.r = false;
        this.o = 3;
        this.d = dVar;
        this.k = mVar;
        this.l = tVar;
        this.l.init(this);
        this.t = executorService;
        this.m = new f(getClient().getClientId());
        this.i = new c(this);
        b bVar = new b(mVar, this.m, this.i, this, tVar);
        this.f8726a = bVar;
        this.i.setClientState(this.f8726a);
        this.c.setResourceName(getClient().getClientId());
    }

    /* access modifiers changed from: package-private */
    public final void a(u uVar, v vVar) throws p {
        this.c.fine(this.f8727b, "internalSend", "200", new Object[]{uVar.getKey(), uVar, vVar});
        if (vVar.getClient() == null) {
            vVar.internalTok.j = getClient();
            try {
                this.f8726a.send(uVar, vVar);
            } catch (p e2) {
                vVar.internalTok.j = null;
                if (uVar instanceof org.eclipse.paho.a.a.a.a.o) {
                    this.f8726a.a((org.eclipse.paho.a.a.a.a.o) uVar);
                }
                throw e2;
            }
        } else {
            this.c.fine(this.f8727b, "internalSend", "213", new Object[]{uVar.getKey(), uVar, vVar});
            throw new p(32201);
        }
    }

    public void sendNoWait(u uVar, v vVar) throws p {
        if (isConnected() || ((!isConnected() && (uVar instanceof org.eclipse.paho.a.a.a.a.d)) || (isDisconnecting() && (uVar instanceof e)))) {
            h hVar = this.s;
            if (hVar == null || hVar.getMessageCount() == 0) {
                a(uVar, vVar);
                return;
            }
            this.c.fine(this.f8727b, "sendNoWait", "507", new Object[]{uVar.getKey()});
            if (this.s.isPersistBuffer()) {
                this.f8726a.persistBufferedMessage(uVar);
            }
            this.s.putMessage(uVar, vVar);
        } else if (this.s != null) {
            this.c.fine(this.f8727b, "sendNoWait", "508", new Object[]{uVar.getKey()});
            if (this.s.isPersistBuffer()) {
                this.f8726a.persistBufferedMessage(uVar);
            }
            this.s.putMessage(uVar, vVar);
        } else {
            this.c.fine(this.f8727b, "sendNoWait", "208");
            throw i.createMqttException(32104);
        }
    }

    public boolean removeMessage(f fVar) throws p {
        return this.f8726a.a(fVar);
    }

    /* JADX WARNING: Code restructure failed: missing block: B:26:0x00a0, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void close(boolean r5) throws org.eclipse.paho.a.a.p {
        /*
            r4 = this;
            java.lang.Object r0 = r4.p
            monitor-enter(r0)
            boolean r1 = r4.isClosed()     // Catch:{ all -> 0x00a1 }
            if (r1 != 0) goto L_0x009f
            boolean r1 = r4.isDisconnected()     // Catch:{ all -> 0x00a1 }
            if (r1 == 0) goto L_0x0011
            if (r5 == 0) goto L_0x0033
        L_0x0011:
            org.eclipse.paho.a.a.b.b r5 = r4.c     // Catch:{ all -> 0x00a1 }
            java.lang.String r1 = r4.f8727b     // Catch:{ all -> 0x00a1 }
            java.lang.String r2 = "close"
            java.lang.String r3 = "224"
            r5.fine(r1, r2, r3)     // Catch:{ all -> 0x00a1 }
            boolean r5 = r4.isConnecting()     // Catch:{ all -> 0x00a1 }
            if (r5 != 0) goto L_0x0097
            boolean r5 = r4.isConnected()     // Catch:{ all -> 0x00a1 }
            if (r5 != 0) goto L_0x0090
            boolean r5 = r4.isDisconnecting()     // Catch:{ all -> 0x00a1 }
            if (r5 == 0) goto L_0x0033
            r5 = 1
            r4.q = r5     // Catch:{ all -> 0x00a1 }
            monitor-exit(r0)     // Catch:{ all -> 0x00a1 }
            return
        L_0x0033:
            r5 = 4
            r4.o = r5     // Catch:{ all -> 0x00a1 }
            org.eclipse.paho.a.a.a.b r5 = r4.f8726a     // Catch:{ all -> 0x00a1 }
            java.util.Hashtable r1 = r5.c     // Catch:{ all -> 0x00a1 }
            r1.clear()     // Catch:{ all -> 0x00a1 }
            java.util.Vector r1 = r5.d     // Catch:{ all -> 0x00a1 }
            if (r1 == 0) goto L_0x0046
            java.util.Vector r1 = r5.d     // Catch:{ all -> 0x00a1 }
            r1.clear()     // Catch:{ all -> 0x00a1 }
        L_0x0046:
            java.util.Vector r1 = r5.e     // Catch:{ all -> 0x00a1 }
            r1.clear()     // Catch:{ all -> 0x00a1 }
            java.util.Hashtable r1 = r5.p     // Catch:{ all -> 0x00a1 }
            r1.clear()     // Catch:{ all -> 0x00a1 }
            java.util.Hashtable r1 = r5.q     // Catch:{ all -> 0x00a1 }
            r1.clear()     // Catch:{ all -> 0x00a1 }
            java.util.Hashtable r1 = r5.r     // Catch:{ all -> 0x00a1 }
            r1.clear()     // Catch:{ all -> 0x00a1 }
            java.util.Hashtable r1 = r5.s     // Catch:{ all -> 0x00a1 }
            r1.clear()     // Catch:{ all -> 0x00a1 }
            org.eclipse.paho.a.a.a.f r1 = r5.f     // Catch:{ all -> 0x00a1 }
            r1.clear()     // Catch:{ all -> 0x00a1 }
            r1 = 0
            r5.c = r1     // Catch:{ all -> 0x00a1 }
            r5.d = r1     // Catch:{ all -> 0x00a1 }
            r5.e = r1     // Catch:{ all -> 0x00a1 }
            r5.p = r1     // Catch:{ all -> 0x00a1 }
            r5.q = r1     // Catch:{ all -> 0x00a1 }
            r5.r = r1     // Catch:{ all -> 0x00a1 }
            r5.s = r1     // Catch:{ all -> 0x00a1 }
            r5.f = r1     // Catch:{ all -> 0x00a1 }
            r5.h = r1     // Catch:{ all -> 0x00a1 }
            r5.g = r1     // Catch:{ all -> 0x00a1 }
            r5.k = r1     // Catch:{ all -> 0x00a1 }
            r5.o = r1     // Catch:{ all -> 0x00a1 }
            r4.f8726a = r1     // Catch:{ all -> 0x00a1 }
            r4.i = r1     // Catch:{ all -> 0x00a1 }
            r4.k = r1     // Catch:{ all -> 0x00a1 }
            r4.h = r1     // Catch:{ all -> 0x00a1 }
            r4.l = r1     // Catch:{ all -> 0x00a1 }
            r4.g = r1     // Catch:{ all -> 0x00a1 }
            r4.f = r1     // Catch:{ all -> 0x00a1 }
            r4.j = r1     // Catch:{ all -> 0x00a1 }
            r4.m = r1     // Catch:{ all -> 0x00a1 }
            goto L_0x009f
        L_0x0090:
            r5 = 32100(0x7d64, float:4.4982E-41)
            org.eclipse.paho.a.a.p r5 = org.eclipse.paho.a.a.a.i.createMqttException((int) r5)     // Catch:{ all -> 0x00a1 }
            throw r5     // Catch:{ all -> 0x00a1 }
        L_0x0097:
            org.eclipse.paho.a.a.p r5 = new org.eclipse.paho.a.a.p     // Catch:{ all -> 0x00a1 }
            r1 = 32110(0x7d6e, float:4.4996E-41)
            r5.<init>((int) r1)     // Catch:{ all -> 0x00a1 }
            throw r5     // Catch:{ all -> 0x00a1 }
        L_0x009f:
            monitor-exit(r0)     // Catch:{ all -> 0x00a1 }
            return
        L_0x00a1:
            r5 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00a1 }
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.a.a.close(boolean):void");
    }

    public void connect(n nVar, v vVar) throws p {
        synchronized (this.p) {
            if (!isDisconnected() || this.q) {
                this.c.fine(this.f8727b, "connect", "207", new Object[]{Byte.valueOf(this.o)});
                if (isClosed() || this.q) {
                    throw new p(32111);
                } else if (isConnecting()) {
                    throw new p(32110);
                } else if (isDisconnecting()) {
                    throw new p(32102);
                } else {
                    throw i.createMqttException(32100);
                }
            } else {
                this.c.fine(this.f8727b, "connect", "214");
                this.o = 1;
                this.j = nVar;
                org.eclipse.paho.a.a.a.a.d dVar = new org.eclipse.paho.a.a.a.a.d(this.d.getClientId(), this.j.getMqttVersion(), this.j.isCleanSession(), this.j.getKeepAliveInterval(), this.j.getUserName(), this.j.getPassword(), this.j.getWillMessage(), this.j.getWillDestination());
                this.f8726a.i = TimeUnit.SECONDS.toNanos((long) this.j.getKeepAliveInterval());
                this.f8726a.j = this.j.isCleanSession();
                b bVar = this.f8726a;
                bVar.l = this.j.getMaxInflight();
                bVar.d = new Vector(bVar.l);
                this.m.open();
                C0209a aVar = new C0209a(this, vVar, dVar);
                if (a.this.t == null) {
                    new Thread(aVar).start();
                } else {
                    a.this.t.execute(aVar);
                }
            }
        }
    }

    public void connectComplete(c cVar, p pVar) throws p {
        int returnCode = cVar.getReturnCode();
        synchronized (this.p) {
            if (returnCode == 0) {
                this.c.fine(this.f8727b, "connectComplete", "215");
                this.o = 0;
                return;
            }
            this.c.fine(this.f8727b, "connectComplete", "204", new Object[]{Integer.valueOf(returnCode)});
            throw pVar;
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(5:74|75|(2:77|78)|79|80) */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0035, code lost:
        if (r12 == null) goto L_0x0042;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:0x003b, code lost:
        if (r12.isComplete() != false) goto L_0x0042;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x003d, code lost:
        r12.internalTok.setException(r13);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:0x0042, code lost:
        r0 = r11.i;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0044, code lost:
        if (r0 == null) goto L_0x0049;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0046, code lost:
        r0.stop();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0049, code lost:
        r0 = r11.g;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:26:0x004b, code lost:
        if (r0 == null) goto L_0x0050;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x004d, code lost:
        r0.stop();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:30:0x0052, code lost:
        if (r11.f == null) goto L_0x005f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0054, code lost:
        r0 = r11.f[r11.e];
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x005a, code lost:
        if (r0 == null) goto L_0x005f;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:33:0x005c, code lost:
        r0.stop();
     */
    /* JADX WARNING: Missing exception handler attribute for start block: B:79:0x00de */
    /* JADX WARNING: Removed duplicated region for block: B:48:0x0097  */
    /* JADX WARNING: Removed duplicated region for block: B:51:0x009e  */
    /* JADX WARNING: Removed duplicated region for block: B:61:0x00b1 A[SYNTHETIC] */
    /* JADX WARNING: Removed duplicated region for block: B:65:0x00c4  */
    /* JADX WARNING: Removed duplicated region for block: B:69:0x00cd  */
    /* JADX WARNING: Removed duplicated region for block: B:74:0x00d7 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void shutdownConnection(org.eclipse.paho.a.a.v r12, org.eclipse.paho.a.a.p r13) {
        /*
            r11 = this;
            java.lang.Object r0 = r11.p
            monitor-enter(r0)
            boolean r1 = r11.n     // Catch:{ all -> 0x00eb }
            if (r1 != 0) goto L_0x00e9
            boolean r1 = r11.q     // Catch:{ all -> 0x00eb }
            if (r1 != 0) goto L_0x00e9
            boolean r1 = r11.isClosed()     // Catch:{ all -> 0x00eb }
            if (r1 == 0) goto L_0x0013
            goto L_0x00e9
        L_0x0013:
            r1 = 1
            r11.n = r1     // Catch:{ all -> 0x00eb }
            org.eclipse.paho.a.a.b.b r2 = r11.c     // Catch:{ all -> 0x00eb }
            java.lang.String r3 = r11.f8727b     // Catch:{ all -> 0x00eb }
            java.lang.String r4 = "shutdownConnection"
            java.lang.String r5 = "216"
            r2.fine(r3, r4, r5)     // Catch:{ all -> 0x00eb }
            boolean r2 = r11.isConnected()     // Catch:{ all -> 0x00eb }
            r3 = 0
            if (r2 != 0) goto L_0x0030
            boolean r2 = r11.isDisconnecting()     // Catch:{ all -> 0x00eb }
            if (r2 != 0) goto L_0x0030
            r2 = 0
            goto L_0x0031
        L_0x0030:
            r2 = 1
        L_0x0031:
            r4 = 2
            r11.o = r4     // Catch:{ all -> 0x00eb }
            monitor-exit(r0)     // Catch:{ all -> 0x00eb }
            if (r12 == 0) goto L_0x0042
            boolean r0 = r12.isComplete()
            if (r0 != 0) goto L_0x0042
            org.eclipse.paho.a.a.a.q r0 = r12.internalTok
            r0.setException(r13)
        L_0x0042:
            org.eclipse.paho.a.a.a.c r0 = r11.i
            if (r0 == 0) goto L_0x0049
            r0.stop()
        L_0x0049:
            org.eclipse.paho.a.a.a.d r0 = r11.g
            if (r0 == 0) goto L_0x0050
            r0.stop()
        L_0x0050:
            org.eclipse.paho.a.a.a.n[] r0 = r11.f     // Catch:{ Exception -> 0x005f }
            if (r0 == 0) goto L_0x005f
            org.eclipse.paho.a.a.a.n[] r0 = r11.f     // Catch:{ Exception -> 0x005f }
            int r4 = r11.e     // Catch:{ Exception -> 0x005f }
            r0 = r0[r4]     // Catch:{ Exception -> 0x005f }
            if (r0 == 0) goto L_0x005f
            r0.stop()     // Catch:{ Exception -> 0x005f }
        L_0x005f:
            org.eclipse.paho.a.a.a.f r0 = r11.m
            org.eclipse.paho.a.a.p r4 = new org.eclipse.paho.a.a.p
            r5 = 32102(0x7d66, float:4.4984E-41)
            r4.<init>((int) r5)
            java.util.Hashtable r5 = r0.c
            monitor-enter(r5)
            org.eclipse.paho.a.a.b.b r6 = r0.f8758b     // Catch:{ all -> 0x00e6 }
            java.lang.String r7 = org.eclipse.paho.a.a.a.f.f8757a     // Catch:{ all -> 0x00e6 }
            java.lang.String r8 = "quiesce"
            java.lang.String r9 = "309"
            java.lang.Object[] r10 = new java.lang.Object[r1]     // Catch:{ all -> 0x00e6 }
            r10[r3] = r4     // Catch:{ all -> 0x00e6 }
            r6.fine(r7, r8, r9, r10)     // Catch:{ all -> 0x00e6 }
            r0.d = r4     // Catch:{ all -> 0x00e6 }
            monitor-exit(r5)     // Catch:{ all -> 0x00e6 }
            org.eclipse.paho.a.a.v r12 = r11.a((org.eclipse.paho.a.a.v) r12, (org.eclipse.paho.a.a.p) r13)
            org.eclipse.paho.a.a.a.b r0 = r11.f8726a     // Catch:{ Exception -> 0x0092 }
            r0.disconnected(r13)     // Catch:{ Exception -> 0x0092 }
            org.eclipse.paho.a.a.a.b r0 = r11.f8726a     // Catch:{ Exception -> 0x0092 }
            boolean r0 = r0.j     // Catch:{ Exception -> 0x0092 }
            if (r0 == 0) goto L_0x0093
            org.eclipse.paho.a.a.a.c r0 = r11.i     // Catch:{ Exception -> 0x0092 }
            r0.removeMessageListeners()     // Catch:{ Exception -> 0x0092 }
            goto L_0x0093
        L_0x0092:
        L_0x0093:
            org.eclipse.paho.a.a.a.e r0 = r11.h
            if (r0 == 0) goto L_0x009a
            r0.stop()
        L_0x009a:
            org.eclipse.paho.a.a.t r0 = r11.l
            if (r0 == 0) goto L_0x00a1
            r0.stop()
        L_0x00a1:
            org.eclipse.paho.a.a.a.h r0 = r11.s     // Catch:{ Exception -> 0x00ae }
            if (r0 != 0) goto L_0x00ae
            org.eclipse.paho.a.a.m r0 = r11.k     // Catch:{ Exception -> 0x00ae }
            if (r0 == 0) goto L_0x00ae
            org.eclipse.paho.a.a.m r0 = r11.k     // Catch:{ Exception -> 0x00ae }
            r0.close()     // Catch:{ Exception -> 0x00ae }
        L_0x00ae:
            java.lang.Object r0 = r11.p
            monitor-enter(r0)
            org.eclipse.paho.a.a.b.b r4 = r11.c     // Catch:{ all -> 0x00e3 }
            java.lang.String r5 = r11.f8727b     // Catch:{ all -> 0x00e3 }
            java.lang.String r6 = "shutdownConnection"
            java.lang.String r7 = "217"
            r4.fine(r5, r6, r7)     // Catch:{ all -> 0x00e3 }
            r4 = 3
            r11.o = r4     // Catch:{ all -> 0x00e3 }
            r11.n = r3     // Catch:{ all -> 0x00e3 }
            monitor-exit(r0)     // Catch:{ all -> 0x00e3 }
            if (r12 == 0) goto L_0x00cb
            org.eclipse.paho.a.a.a.c r0 = r11.i
            if (r0 == 0) goto L_0x00cb
            r0.asyncOperationComplete(r12)
        L_0x00cb:
            if (r2 == 0) goto L_0x00d4
            org.eclipse.paho.a.a.a.c r12 = r11.i
            if (r12 == 0) goto L_0x00d4
            r12.connectionLost(r13)
        L_0x00d4:
            java.lang.Object r12 = r11.p
            monitor-enter(r12)
            boolean r13 = r11.q     // Catch:{ all -> 0x00e0 }
            if (r13 == 0) goto L_0x00de
            r11.close(r1)     // Catch:{ Exception -> 0x00de }
        L_0x00de:
            monitor-exit(r12)     // Catch:{ all -> 0x00e0 }
            return
        L_0x00e0:
            r13 = move-exception
            monitor-exit(r12)     // Catch:{ all -> 0x00e0 }
            throw r13
        L_0x00e3:
            r12 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00e3 }
            throw r12
        L_0x00e6:
            r12 = move-exception
            monitor-exit(r5)     // Catch:{ all -> 0x00e6 }
            throw r12
        L_0x00e9:
            monitor-exit(r0)     // Catch:{ all -> 0x00eb }
            return
        L_0x00eb:
            r12 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00eb }
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.a.a.shutdownConnection(org.eclipse.paho.a.a.v, org.eclipse.paho.a.a.p):void");
    }

    private v a(v vVar, p pVar) {
        this.c.fine(this.f8727b, "handleOldTokens", "222");
        v vVar2 = null;
        if (vVar != null) {
            try {
                if (this.m.getToken(vVar.internalTok.getKey()) == null) {
                    this.m.a(vVar, vVar.internalTok.getKey());
                }
            } catch (Exception unused) {
            }
        }
        Enumeration elements = this.f8726a.resolveOldTokens(pVar).elements();
        while (elements.hasMoreElements()) {
            v vVar3 = (v) elements.nextElement();
            if (!vVar3.internalTok.getKey().equals(e.KEY)) {
                if (!vVar3.internalTok.getKey().equals("Con")) {
                    this.i.asyncOperationComplete(vVar3);
                }
            }
            vVar2 = vVar3;
        }
        return vVar2;
    }

    public void disconnect(e eVar, long j2, v vVar) throws p {
        synchronized (this.p) {
            if (isClosed()) {
                this.c.fine(this.f8727b, "disconnect", "223");
                throw i.createMqttException(32111);
            } else if (isDisconnected()) {
                this.c.fine(this.f8727b, "disconnect", "211");
                throw i.createMqttException(32101);
            } else if (isDisconnecting()) {
                this.c.fine(this.f8727b, "disconnect", "219");
                throw i.createMqttException(32102);
            } else if (Thread.currentThread() != this.i.f8749a) {
                this.c.fine(this.f8727b, "disconnect", "218");
                this.o = 2;
                b bVar = new b(eVar, j2, vVar);
                bVar.d = "MQTT Disc: " + a.this.getClient().getClientId();
                if (a.this.t == null) {
                    new Thread(bVar).start();
                } else {
                    a.this.t.execute(bVar);
                }
            } else {
                this.c.fine(this.f8727b, "disconnect", "210");
                throw i.createMqttException(32107);
            }
        }
    }

    public void disconnectForcibly(long j2, long j3) throws p {
        disconnectForcibly(j2, j3, true);
    }

    public void disconnectForcibly(long j2, long j3, boolean z) throws p {
        this.o = 2;
        b bVar = this.f8726a;
        if (bVar != null) {
            bVar.quiesce(j2);
        }
        v vVar = new v(this.d.getClientId());
        if (z) {
            try {
                a((u) new e(), vVar);
                vVar.waitForCompletion(j3);
            } catch (Exception unused) {
            } catch (Throwable th) {
                vVar.internalTok.a(null, null);
                shutdownConnection(vVar, null);
                throw th;
            }
        }
        vVar.internalTok.a(null, null);
        shutdownConnection(vVar, null);
    }

    public boolean isConnected() {
        boolean z;
        synchronized (this.p) {
            z = this.o == 0;
        }
        return z;
    }

    public boolean isConnecting() {
        boolean z;
        synchronized (this.p) {
            z = true;
            if (this.o != 1) {
                z = false;
            }
        }
        return z;
    }

    public boolean isDisconnected() {
        boolean z;
        synchronized (this.p) {
            z = this.o == 3;
        }
        return z;
    }

    public boolean isDisconnecting() {
        boolean z;
        synchronized (this.p) {
            z = this.o == 2;
        }
        return z;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this.p) {
            z = this.o == 4;
        }
        return z;
    }

    public boolean isResting() {
        boolean z;
        synchronized (this.p) {
            z = this.r;
        }
        return z;
    }

    public void setCallback(j jVar) {
        this.i.setCallback(jVar);
    }

    public void setReconnectCallback(k kVar) {
        this.i.setReconnectCallback(kVar);
    }

    public void setManualAcks(boolean z) {
        this.i.setManualAcks(z);
    }

    public void messageArrivedComplete(int i2, int i3) throws p {
        this.i.messageArrivedComplete(i2, i3);
    }

    public void setMessageListener(String str, g gVar) {
        this.i.setMessageListener(str, gVar);
    }

    public void removeMessageListener(String str) {
        this.i.removeMessageListener(str);
    }

    public void setNetworkModuleIndex(int i2) {
        this.e = i2;
    }

    public int getNetworkModuleIndex() {
        return this.e;
    }

    public n[] getNetworkModules() {
        return this.f;
    }

    public void setNetworkModules(n[] nVarArr) {
        this.f = (n[]) nVarArr.clone();
    }

    public o[] getPendingDeliveryTokens() {
        return this.m.getOutstandingDelTokens();
    }

    public d getClient() {
        return this.d;
    }

    public long getKeepAlive() {
        return this.f8726a.a();
    }

    public b getClientState() {
        return this.f8726a;
    }

    public n getConOptions() {
        return this.j;
    }

    public Properties getDebug() {
        Properties properties = new Properties();
        properties.put("conState", Integer.valueOf(this.o));
        properties.put("serverURI", getClient().getServerURI());
        properties.put("callback", this.i);
        properties.put("stoppingComms", Boolean.valueOf(this.n));
        return properties;
    }

    public v checkForActivity() {
        return checkForActivity(null);
    }

    public v checkForActivity(org.eclipse.paho.a.a.c cVar) {
        try {
            return this.f8726a.checkForActivity(cVar);
        } catch (p e2) {
            a((Exception) e2);
            return null;
        } catch (Exception e3) {
            a(e3);
            return null;
        }
    }

    private void a(Exception exc) {
        p pVar;
        this.c.fine(this.f8727b, "handleRunException", "804", null, exc);
        if (!(exc instanceof p)) {
            pVar = new p(32109, exc);
        } else {
            pVar = (p) exc;
        }
        shutdownConnection(null, pVar);
    }

    public void setRestingState(boolean z) {
        this.r = z;
    }

    public void setDisconnectedMessageBuffer(h hVar) {
        this.s = hVar;
    }

    public int getBufferedMessageCount() {
        return this.s.getMessageCount();
    }

    public q getBufferedMessage(int i2) {
        return ((org.eclipse.paho.a.a.a.a.o) this.s.getMessage(i2).getMessage()).getMessage();
    }

    public void deleteBufferedMessage(int i2) {
        this.s.deleteMessage(i2);
    }

    public void notifyConnect() {
        if (this.s != null) {
            this.c.fine(this.f8727b, "notifyConnect", "509", null);
            this.s.setPublishCallback(new c("notifyConnect"));
            ExecutorService executorService = this.t;
            if (executorService == null) {
                new Thread(this.s).start();
                return;
            }
            executorService.execute(this.s);
        }
    }

    public int getActualInFlight() {
        return this.f8726a.getActualInFlight();
    }
}
