package org.eclipse.paho.a.a.a;

import java.io.EOFException;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Properties;
import java.util.Vector;
import java.util.concurrent.TimeUnit;
import org.eclipse.paho.a.a.a.a.d;
import org.eclipse.paho.a.a.a.a.i;
import org.eclipse.paho.a.a.a.a.j;
import org.eclipse.paho.a.a.a.a.k;
import org.eclipse.paho.a.a.a.a.l;
import org.eclipse.paho.a.a.a.a.n;
import org.eclipse.paho.a.a.a.a.o;
import org.eclipse.paho.a.a.a.a.q;
import org.eclipse.paho.a.a.a.a.s;
import org.eclipse.paho.a.a.a.a.u;
import org.eclipse.paho.a.a.b.c;
import org.eclipse.paho.a.a.f;
import org.eclipse.paho.a.a.m;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.r;
import org.eclipse.paho.a.a.t;
import org.eclipse.paho.a.a.v;

public class b {

    /* renamed from: a  reason: collision with root package name */
    static final String f8746a = b.class.getName();
    private Object A = new Object();
    private int B = 0;
    private boolean C = false;
    private t D = null;

    /* renamed from: b  reason: collision with root package name */
    org.eclipse.paho.a.a.b.b f8747b = c.getLogger(c.MQTT_CLIENT_MSG_CAT, f8746a);
    Hashtable c;
    volatile Vector d;
    volatile Vector e;
    f f;
    a g = null;
    c h = null;
    long i;
    boolean j;
    m k;
    int l = 0;
    boolean m = false;
    long n = 0;
    u o;
    Hashtable p = null;
    Hashtable q = null;
    Hashtable r = null;
    Hashtable s = null;
    private int t = 0;
    private int u = 0;
    private int v = 0;
    private Object w = new Object();
    private Object x = new Object();
    private long y = 0;
    private long z = 0;

    protected b(m mVar, f fVar, c cVar, a aVar, t tVar) throws p {
        this.f8747b.setResourceName(aVar.getClient().getClientId());
        this.f8747b.finer(f8746a, "<Init>", "");
        this.c = new Hashtable();
        this.e = new Vector();
        this.p = new Hashtable();
        this.q = new Hashtable();
        this.r = new Hashtable();
        this.s = new Hashtable();
        this.o = new i();
        this.v = 0;
        this.u = 0;
        this.k = mVar;
        this.h = cVar;
        this.f = fVar;
        this.g = aVar;
        this.D = tVar;
        e();
    }

    /* access modifiers changed from: protected */
    public final long a() {
        return TimeUnit.NANOSECONDS.toMillis(this.i);
    }

    private static String c(u uVar) {
        return "s-" + uVar.getMessageId();
    }

    private static String d(u uVar) {
        return "sc-" + uVar.getMessageId();
    }

    static String a(u uVar) {
        return "r-" + uVar.getMessageId();
    }

    static String a(int i2) {
        return "r-".concat(String.valueOf(i2));
    }

    private static String e(u uVar) {
        return "sb-" + uVar.getMessageId();
    }

    private void d() throws p {
        this.f8747b.fine(f8746a, "clearState", ">");
        this.k.clear();
        this.c.clear();
        this.d.clear();
        this.e.clear();
        this.p.clear();
        this.q.clear();
        this.r.clear();
        this.s.clear();
        this.f.clear();
    }

    private u a(String str, r rVar) throws p {
        u uVar;
        try {
            uVar = u.createWireMessage(rVar);
        } catch (p e2) {
            this.f8747b.fine(f8746a, "restoreMessage", "602", new Object[]{str}, e2);
            if (e2.getCause() instanceof EOFException) {
                if (str != null) {
                    this.k.remove(str);
                }
                uVar = null;
            } else {
                throw e2;
            }
        }
        this.f8747b.fine(f8746a, "restoreMessage", "601", new Object[]{str, uVar});
        return uVar;
    }

    private static void a(Vector vector, u uVar) {
        int messageId = uVar.getMessageId();
        for (int i2 = 0; i2 < vector.size(); i2++) {
            if (((u) vector.elementAt(i2)).getMessageId() > messageId) {
                vector.insertElementAt(uVar, i2);
                return;
            }
        }
        vector.addElement(uVar);
    }

    private static Vector a(Vector vector) {
        Vector vector2 = new Vector();
        if (vector.size() == 0) {
            return vector2;
        }
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i2 < vector.size()) {
            int messageId = ((u) vector.elementAt(i2)).getMessageId();
            int i6 = messageId - i3;
            if (i6 > i4) {
                i5 = i2;
                i4 = i6;
            }
            i2++;
            i3 = messageId;
        }
        int i7 = (65535 - i3) + ((u) vector.elementAt(0)).getMessageId() > i4 ? 0 : i5;
        for (int i8 = i7; i8 < vector.size(); i8++) {
            vector2.addElement(vector.elementAt(i8));
        }
        for (int i9 = 0; i9 < i7; i9++) {
            vector2.addElement(vector.elementAt(i9));
        }
        return vector2;
    }

    private void e() throws p {
        Enumeration keys = this.k.keys();
        int i2 = this.t;
        Vector vector = new Vector();
        this.f8747b.fine(f8746a, "restoreState", "600");
        while (keys.hasMoreElements()) {
            String str = (String) keys.nextElement();
            u a2 = a(str, this.k.get(str));
            if (a2 != null) {
                if (str.startsWith("r-")) {
                    this.f8747b.fine(f8746a, "restoreState", "604", new Object[]{str, a2});
                    this.s.put(Integer.valueOf(a2.getMessageId()), a2);
                } else if (str.startsWith("s-")) {
                    o oVar = (o) a2;
                    i2 = Math.max(oVar.getMessageId(), i2);
                    if (this.k.containsKey(d(oVar))) {
                        n nVar = (n) a(str, this.k.get(d(oVar)));
                        if (nVar != null) {
                            this.f8747b.fine(f8746a, "restoreState", "605", new Object[]{str, a2});
                            this.p.put(Integer.valueOf(nVar.getMessageId()), nVar);
                        } else {
                            this.f8747b.fine(f8746a, "restoreState", "606", new Object[]{str, a2});
                        }
                    } else {
                        oVar.setDuplicate(true);
                        if (oVar.getMessage().getQos() == 2) {
                            this.f8747b.fine(f8746a, "restoreState", "607", new Object[]{str, a2});
                            this.p.put(Integer.valueOf(oVar.getMessageId()), oVar);
                        } else {
                            this.f8747b.fine(f8746a, "restoreState", "608", new Object[]{str, a2});
                            this.q.put(Integer.valueOf(oVar.getMessageId()), oVar);
                        }
                    }
                    this.f.a(oVar).internalTok.j = this.g.getClient();
                    this.c.put(Integer.valueOf(oVar.getMessageId()), Integer.valueOf(oVar.getMessageId()));
                } else if (str.startsWith("sb-")) {
                    o oVar2 = (o) a2;
                    i2 = Math.max(oVar2.getMessageId(), i2);
                    if (oVar2.getMessage().getQos() == 2) {
                        this.f8747b.fine(f8746a, "restoreState", "607", new Object[]{str, a2});
                        this.p.put(Integer.valueOf(oVar2.getMessageId()), oVar2);
                    } else if (oVar2.getMessage().getQos() == 1) {
                        this.f8747b.fine(f8746a, "restoreState", "608", new Object[]{str, a2});
                        this.q.put(Integer.valueOf(oVar2.getMessageId()), oVar2);
                    } else {
                        this.f8747b.fine(f8746a, "restoreState", "511", new Object[]{str, a2});
                        this.r.put(Integer.valueOf(oVar2.getMessageId()), oVar2);
                        this.k.remove(str);
                    }
                    this.f.a(oVar2).internalTok.j = this.g.getClient();
                    this.c.put(Integer.valueOf(oVar2.getMessageId()), Integer.valueOf(oVar2.getMessageId()));
                } else if (str.startsWith("sc-") && !this.k.containsKey(c((n) a2))) {
                    vector.addElement(str);
                }
            }
        }
        Enumeration elements = vector.elements();
        while (elements.hasMoreElements()) {
            String str2 = (String) elements.nextElement();
            this.f8747b.fine(f8746a, "restoreState", "609", new Object[]{str2});
            this.k.remove(str2);
        }
        this.t = i2;
    }

    public void send(u uVar, v vVar) throws p {
        if (uVar.isMessageIdRequired() && uVar.getMessageId() == 0 && (((uVar instanceof o) && ((o) uVar).getMessage().getQos() != 0) || (uVar instanceof k) || (uVar instanceof org.eclipse.paho.a.a.a.a.m) || (uVar instanceof n) || (uVar instanceof l) || (uVar instanceof org.eclipse.paho.a.a.a.a.r) || (uVar instanceof q) || (uVar instanceof org.eclipse.paho.a.a.a.a.t) || (uVar instanceof s))) {
            uVar.setMessageId(g());
        }
        if (vVar != null) {
            uVar.setToken(vVar);
            try {
                vVar.internalTok.setMessageID(uVar.getMessageId());
            } catch (Exception unused) {
            }
        }
        if (uVar instanceof o) {
            synchronized (this.w) {
                if (this.u < this.l) {
                    org.eclipse.paho.a.a.q message = ((o) uVar).getMessage();
                    this.f8747b.fine(f8746a, "send", "628", new Object[]{Integer.valueOf(uVar.getMessageId()), Integer.valueOf(message.getQos()), uVar});
                    int qos = message.getQos();
                    if (qos == 1) {
                        this.q.put(Integer.valueOf(uVar.getMessageId()), uVar);
                        this.k.put(c(uVar), (o) uVar);
                        this.f.a(vVar, uVar);
                    } else if (qos == 2) {
                        this.p.put(Integer.valueOf(uVar.getMessageId()), uVar);
                        this.k.put(c(uVar), (o) uVar);
                        this.f.a(vVar, uVar);
                    }
                    this.d.addElement(uVar);
                    this.w.notifyAll();
                } else {
                    this.f8747b.fine(f8746a, "send", "613", new Object[]{Integer.valueOf(this.u)});
                    throw new p(32202);
                }
            }
            return;
        }
        this.f8747b.fine(f8746a, "send", "615", new Object[]{Integer.valueOf(uVar.getMessageId()), uVar});
        if (uVar instanceof d) {
            synchronized (this.w) {
                this.f.a(vVar, uVar);
                this.e.insertElementAt(uVar, 0);
                this.w.notifyAll();
            }
            return;
        }
        if (uVar instanceof i) {
            this.o = uVar;
        } else if (uVar instanceof n) {
            this.p.put(Integer.valueOf(uVar.getMessageId()), uVar);
            this.k.put(d(uVar), (n) uVar);
        } else if (uVar instanceof l) {
            this.k.remove(a(uVar));
        }
        synchronized (this.w) {
            if (!(uVar instanceof org.eclipse.paho.a.a.a.a.b)) {
                this.f.a(vVar, uVar);
            }
            this.e.addElement(uVar);
            this.w.notifyAll();
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(8:1|2|3|4|5|6|7|8) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x001e */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void persistBufferedMessage(org.eclipse.paho.a.a.a.a.u r9) {
        /*
            r8 = this;
            java.lang.String r0 = "513"
            java.lang.String r1 = "persistBufferedMessage"
            java.lang.String r2 = e(r9)
            r3 = 0
            r4 = 1
            int r5 = r8.g()     // Catch:{ p -> 0x0053 }
            r9.setMessageId(r5)     // Catch:{ p -> 0x0053 }
            java.lang.String r2 = e(r9)     // Catch:{ p -> 0x0053 }
            org.eclipse.paho.a.a.m r5 = r8.k     // Catch:{ s -> 0x001e }
            r6 = r9
            org.eclipse.paho.a.a.a.a.o r6 = (org.eclipse.paho.a.a.a.a.o) r6     // Catch:{ s -> 0x001e }
            r5.put(r2, r6)     // Catch:{ s -> 0x001e }
            goto L_0x0047
        L_0x001e:
            org.eclipse.paho.a.a.b.b r5 = r8.f8747b     // Catch:{ p -> 0x0053 }
            java.lang.String r6 = f8746a     // Catch:{ p -> 0x0053 }
            java.lang.String r7 = "515"
            r5.fine(r6, r1, r7)     // Catch:{ p -> 0x0053 }
            org.eclipse.paho.a.a.m r5 = r8.k     // Catch:{ p -> 0x0053 }
            org.eclipse.paho.a.a.a.a r6 = r8.g     // Catch:{ p -> 0x0053 }
            org.eclipse.paho.a.a.d r6 = r6.getClient()     // Catch:{ p -> 0x0053 }
            java.lang.String r6 = r6.getClientId()     // Catch:{ p -> 0x0053 }
            org.eclipse.paho.a.a.a.a r7 = r8.g     // Catch:{ p -> 0x0053 }
            org.eclipse.paho.a.a.d r7 = r7.getClient()     // Catch:{ p -> 0x0053 }
            java.lang.String r7 = r7.getServerURI()     // Catch:{ p -> 0x0053 }
            r5.open(r6, r7)     // Catch:{ p -> 0x0053 }
            org.eclipse.paho.a.a.m r5 = r8.k     // Catch:{ p -> 0x0053 }
            org.eclipse.paho.a.a.a.a.o r9 = (org.eclipse.paho.a.a.a.a.o) r9     // Catch:{ p -> 0x0053 }
            r5.put(r2, r9)     // Catch:{ p -> 0x0053 }
        L_0x0047:
            org.eclipse.paho.a.a.b.b r9 = r8.f8747b     // Catch:{ p -> 0x0053 }
            java.lang.String r5 = f8746a     // Catch:{ p -> 0x0053 }
            java.lang.Object[] r6 = new java.lang.Object[r4]     // Catch:{ p -> 0x0053 }
            r6[r3] = r2     // Catch:{ p -> 0x0053 }
            r9.fine(r5, r1, r0, r6)     // Catch:{ p -> 0x0053 }
            return
        L_0x0053:
            org.eclipse.paho.a.a.b.b r9 = r8.f8747b
            java.lang.String r5 = f8746a
            java.lang.Object[] r4 = new java.lang.Object[r4]
            r4[r3] = r2
            r9.warning(r5, r1, r0, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.a.b.persistBufferedMessage(org.eclipse.paho.a.a.a.a.u):void");
    }

    public void unPersistBufferedMessage(u uVar) {
        try {
            this.f8747b.fine(f8746a, "unPersistBufferedMessage", "517", new Object[]{uVar.getKey()});
            this.k.remove(e(uVar));
        } catch (org.eclipse.paho.a.a.s unused) {
            this.f8747b.fine(f8746a, "unPersistBufferedMessage", "518", new Object[]{uVar.getKey()});
        }
    }

    /* access modifiers changed from: protected */
    public final void a(o oVar) throws org.eclipse.paho.a.a.s {
        synchronized (this.w) {
            this.f8747b.fine(f8746a, "undo", "618", new Object[]{Integer.valueOf(oVar.getMessageId()), Integer.valueOf(oVar.getMessage().getQos())});
            if (oVar.getMessage().getQos() == 1) {
                this.q.remove(Integer.valueOf(oVar.getMessageId()));
            } else {
                this.p.remove(Integer.valueOf(oVar.getMessageId()));
            }
            this.d.removeElement(oVar);
            this.k.remove(c(oVar));
            this.f.removeToken((u) oVar);
            if (oVar.getMessage().getQos() > 0) {
                b(oVar.getMessageId());
                oVar.setMessageId(0);
            }
            c();
        }
    }

    /* access modifiers changed from: protected */
    public final boolean a(f fVar) throws p {
        boolean z2;
        org.eclipse.paho.a.a.q message = fVar.getMessage();
        int messageId = fVar.getMessageId();
        synchronized (this.w) {
            z2 = message.getQos() == 1 && this.q.remove(Integer.valueOf(messageId)) != null;
            if (message.getQos() == 2 && this.p.remove(Integer.valueOf(messageId)) != null) {
                z2 = true;
            }
            if (this.d.removeElement(message)) {
                z2 = true;
            }
            this.k.remove("s-".concat(String.valueOf(messageId)));
            this.f.removeToken(Integer.toString(messageId));
            b(messageId);
        }
        return z2;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0027, code lost:
        if (r1.i <= 0) goto L_0x017c;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0029, code lost:
        r2 = java.lang.System.nanoTime();
        r6 = r1.A;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:13:0x002f, code lost:
        monitor-enter(r6);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:17:0x0039, code lost:
        if (r1.B <= 0) goto L_0x0083;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x003b, code lost:
        r15 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:0x0045, code lost:
        if ((r2 - r1.n) >= (r1.i + 100000)) goto L_0x0048;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:0x0048, code lost:
        r1.f8747b.severe(f8746a, "checkForActivity", "619", new java.lang.Object[]{java.lang.Long.valueOf(r1.i), java.lang.Long.valueOf(r1.y), java.lang.Long.valueOf(r1.n), java.lang.Long.valueOf(r2), java.lang.Long.valueOf(r1.z)});
     */
    /* JADX WARNING: Code restructure failed: missing block: B:24:0x0082, code lost:
        throw org.eclipse.paho.a.a.a.i.createMqttException(32000);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:25:0x0083, code lost:
        r15 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:27:0x0086, code lost:
        if (r1.B != 0) goto L_0x00d2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:29:0x0094, code lost:
        if ((r2 - r1.y) >= (r1.i * 2)) goto L_0x0097;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:31:0x0097, code lost:
        r1.f8747b.severe(f8746a, "checkForActivity", "642", new java.lang.Object[]{java.lang.Long.valueOf(r1.i), java.lang.Long.valueOf(r1.y), java.lang.Long.valueOf(r1.n), java.lang.Long.valueOf(r2), java.lang.Long.valueOf(r1.z)});
     */
    /* JADX WARNING: Code restructure failed: missing block: B:32:0x00d1, code lost:
        throw org.eclipse.paho.a.a.a.i.createMqttException(32002);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:34:0x00d4, code lost:
        if (r1.B != 0) goto L_0x00e4;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:36:0x00e2, code lost:
        if ((r2 - r1.n) >= (r1.i - 100000)) goto L_0x00f2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:38:0x00f0, code lost:
        if ((r2 - r1.y) < (r1.i - 100000)) goto L_0x0141;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:39:0x00f2, code lost:
        r1.f8747b.fine(f8746a, "checkForActivity", "620", new java.lang.Object[]{java.lang.Long.valueOf(r1.i), java.lang.Long.valueOf(r1.y), java.lang.Long.valueOf(r1.n)});
        r2 = new org.eclipse.paho.a.a.v(r1.g.getClient().getClientId());
     */
    /* JADX WARNING: Code restructure failed: missing block: B:40:0x0126, code lost:
        if (r0 == null) goto L_0x012b;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:41:0x0128, code lost:
        r2.setActionCallback(r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:42:0x012b, code lost:
        r1.f.a(r2, r1.o);
        r1.e.insertElementAt(r1.o, 0);
        r5 = a();
        notifyQueueLock();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:43:0x0141, code lost:
        r1.f8747b.fine(f8746a, "checkForActivity", "634", null);
        r5 = java.lang.Math.max(1, a() - (r2 - r1.y));
        r2 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:44:0x015c, code lost:
        monitor-exit(r15);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:45:0x015d, code lost:
        r1.f8747b.fine(f8746a, "checkForActivity", "624", new java.lang.Object[]{java.lang.Long.valueOf(r5)});
        r1.D.schedule(r5);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:46:0x0176, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:47:0x0177, code lost:
        r15 = r6;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:49:?, code lost:
        monitor-exit(r15);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:50:0x0179, code lost:
        throw r0;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:51:0x017a, code lost:
        r0 = th;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:52:0x017c, code lost:
        r2 = null;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:53:0x017e, code lost:
        return r2;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:9:0x001f, code lost:
        if (r1.C == false) goto L_0x017c;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public org.eclipse.paho.a.a.v checkForActivity(org.eclipse.paho.a.a.c r18) throws org.eclipse.paho.a.a.p {
        /*
            r17 = this;
            r1 = r17
            r0 = r18
            org.eclipse.paho.a.a.b.b r2 = r1.f8747b
            java.lang.String r3 = f8746a
            r4 = 0
            java.lang.Object[] r5 = new java.lang.Object[r4]
            java.lang.String r6 = "checkForActivity"
            java.lang.String r7 = "616"
            r2.fine(r3, r6, r7, r5)
            java.lang.Object r2 = r1.x
            monitor-enter(r2)
            boolean r3 = r1.m     // Catch:{ all -> 0x017f }
            r5 = 0
            if (r3 == 0) goto L_0x001c
            monitor-exit(r2)     // Catch:{ all -> 0x017f }
            return r5
        L_0x001c:
            monitor-exit(r2)     // Catch:{ all -> 0x017f }
            boolean r2 = r1.C
            if (r2 == 0) goto L_0x017c
            long r2 = r1.i
            r6 = 0
            int r8 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r8 <= 0) goto L_0x017c
            long r2 = java.lang.System.nanoTime()
            java.lang.Object r6 = r1.A
            monitor-enter(r6)
            int r7 = r1.B     // Catch:{ all -> 0x0176 }
            r9 = 5
            r10 = 2
            r11 = 3
            r12 = 100000(0x186a0, double:4.94066E-319)
            r14 = 1
            if (r7 <= 0) goto L_0x0083
            r15 = r6
            long r5 = r1.n     // Catch:{ all -> 0x017a }
            long r5 = r2 - r5
            long r7 = r1.i     // Catch:{ all -> 0x017a }
            long r7 = r7 + r12
            int r16 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r16 >= 0) goto L_0x0048
            goto L_0x0084
        L_0x0048:
            org.eclipse.paho.a.a.b.b r0 = r1.f8747b     // Catch:{ all -> 0x017a }
            java.lang.String r5 = f8746a     // Catch:{ all -> 0x017a }
            java.lang.String r6 = "checkForActivity"
            java.lang.String r7 = "619"
            java.lang.Object[] r8 = new java.lang.Object[r9]     // Catch:{ all -> 0x017a }
            long r12 = r1.i     // Catch:{ all -> 0x017a }
            java.lang.Long r9 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x017a }
            r8[r4] = r9     // Catch:{ all -> 0x017a }
            long r12 = r1.y     // Catch:{ all -> 0x017a }
            java.lang.Long r4 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x017a }
            r8[r14] = r4     // Catch:{ all -> 0x017a }
            long r12 = r1.n     // Catch:{ all -> 0x017a }
            java.lang.Long r4 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x017a }
            r8[r10] = r4     // Catch:{ all -> 0x017a }
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x017a }
            r8[r11] = r2     // Catch:{ all -> 0x017a }
            long r2 = r1.z     // Catch:{ all -> 0x017a }
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x017a }
            r3 = 4
            r8[r3] = r2     // Catch:{ all -> 0x017a }
            r0.severe(r5, r6, r7, r8)     // Catch:{ all -> 0x017a }
            r0 = 32000(0x7d00, float:4.4842E-41)
            org.eclipse.paho.a.a.p r0 = org.eclipse.paho.a.a.a.i.createMqttException((int) r0)     // Catch:{ all -> 0x017a }
            throw r0     // Catch:{ all -> 0x017a }
        L_0x0083:
            r15 = r6
        L_0x0084:
            int r5 = r1.B     // Catch:{ all -> 0x017a }
            if (r5 != 0) goto L_0x00d2
            long r5 = r1.y     // Catch:{ all -> 0x017a }
            long r5 = r2 - r5
            r7 = 2
            long r12 = r1.i     // Catch:{ all -> 0x017a }
            long r12 = r12 * r7
            int r7 = (r5 > r12 ? 1 : (r5 == r12 ? 0 : -1))
            if (r7 >= 0) goto L_0x0097
            goto L_0x00d2
        L_0x0097:
            org.eclipse.paho.a.a.b.b r0 = r1.f8747b     // Catch:{ all -> 0x017a }
            java.lang.String r5 = f8746a     // Catch:{ all -> 0x017a }
            java.lang.String r6 = "checkForActivity"
            java.lang.String r7 = "642"
            java.lang.Object[] r8 = new java.lang.Object[r9]     // Catch:{ all -> 0x017a }
            long r12 = r1.i     // Catch:{ all -> 0x017a }
            java.lang.Long r9 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x017a }
            r8[r4] = r9     // Catch:{ all -> 0x017a }
            long r12 = r1.y     // Catch:{ all -> 0x017a }
            java.lang.Long r4 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x017a }
            r8[r14] = r4     // Catch:{ all -> 0x017a }
            long r12 = r1.n     // Catch:{ all -> 0x017a }
            java.lang.Long r4 = java.lang.Long.valueOf(r12)     // Catch:{ all -> 0x017a }
            r8[r10] = r4     // Catch:{ all -> 0x017a }
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x017a }
            r8[r11] = r2     // Catch:{ all -> 0x017a }
            long r2 = r1.z     // Catch:{ all -> 0x017a }
            java.lang.Long r2 = java.lang.Long.valueOf(r2)     // Catch:{ all -> 0x017a }
            r3 = 4
            r8[r3] = r2     // Catch:{ all -> 0x017a }
            r0.severe(r5, r6, r7, r8)     // Catch:{ all -> 0x017a }
            r0 = 32002(0x7d02, float:4.4844E-41)
            org.eclipse.paho.a.a.p r0 = org.eclipse.paho.a.a.a.i.createMqttException((int) r0)     // Catch:{ all -> 0x017a }
            throw r0     // Catch:{ all -> 0x017a }
        L_0x00d2:
            int r5 = r1.B     // Catch:{ all -> 0x017a }
            if (r5 != 0) goto L_0x00e4
            long r5 = r1.n     // Catch:{ all -> 0x017a }
            long r5 = r2 - r5
            long r7 = r1.i     // Catch:{ all -> 0x017a }
            r12 = 100000(0x186a0, double:4.94066E-319)
            long r7 = r7 - r12
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 >= 0) goto L_0x00f2
        L_0x00e4:
            long r5 = r1.y     // Catch:{ all -> 0x017a }
            long r5 = r2 - r5
            long r7 = r1.i     // Catch:{ all -> 0x017a }
            r12 = 100000(0x186a0, double:4.94066E-319)
            long r7 = r7 - r12
            int r9 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r9 < 0) goto L_0x0141
        L_0x00f2:
            org.eclipse.paho.a.a.b.b r2 = r1.f8747b     // Catch:{ all -> 0x017a }
            java.lang.String r3 = f8746a     // Catch:{ all -> 0x017a }
            java.lang.String r5 = "checkForActivity"
            java.lang.String r6 = "620"
            java.lang.Object[] r7 = new java.lang.Object[r11]     // Catch:{ all -> 0x017a }
            long r8 = r1.i     // Catch:{ all -> 0x017a }
            java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch:{ all -> 0x017a }
            r7[r4] = r8     // Catch:{ all -> 0x017a }
            long r8 = r1.y     // Catch:{ all -> 0x017a }
            java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch:{ all -> 0x017a }
            r7[r14] = r8     // Catch:{ all -> 0x017a }
            long r8 = r1.n     // Catch:{ all -> 0x017a }
            java.lang.Long r8 = java.lang.Long.valueOf(r8)     // Catch:{ all -> 0x017a }
            r7[r10] = r8     // Catch:{ all -> 0x017a }
            r2.fine(r3, r5, r6, r7)     // Catch:{ all -> 0x017a }
            org.eclipse.paho.a.a.v r2 = new org.eclipse.paho.a.a.v     // Catch:{ all -> 0x017a }
            org.eclipse.paho.a.a.a.a r3 = r1.g     // Catch:{ all -> 0x017a }
            org.eclipse.paho.a.a.d r3 = r3.getClient()     // Catch:{ all -> 0x017a }
            java.lang.String r3 = r3.getClientId()     // Catch:{ all -> 0x017a }
            r2.<init>(r3)     // Catch:{ all -> 0x017a }
            if (r0 == 0) goto L_0x012b
            r2.setActionCallback(r0)     // Catch:{ all -> 0x017a }
        L_0x012b:
            org.eclipse.paho.a.a.a.f r0 = r1.f     // Catch:{ all -> 0x017a }
            org.eclipse.paho.a.a.a.a.u r3 = r1.o     // Catch:{ all -> 0x017a }
            r0.a((org.eclipse.paho.a.a.v) r2, (org.eclipse.paho.a.a.a.a.u) r3)     // Catch:{ all -> 0x017a }
            java.util.Vector r0 = r1.e     // Catch:{ all -> 0x017a }
            org.eclipse.paho.a.a.a.a.u r3 = r1.o     // Catch:{ all -> 0x017a }
            r0.insertElementAt(r3, r4)     // Catch:{ all -> 0x017a }
            long r5 = r17.a()     // Catch:{ all -> 0x017a }
            r17.notifyQueueLock()     // Catch:{ all -> 0x017a }
            goto L_0x015c
        L_0x0141:
            org.eclipse.paho.a.a.b.b r0 = r1.f8747b     // Catch:{ all -> 0x017a }
            java.lang.String r5 = f8746a     // Catch:{ all -> 0x017a }
            java.lang.String r6 = "checkForActivity"
            java.lang.String r7 = "634"
            r8 = 0
            r0.fine(r5, r6, r7, r8)     // Catch:{ all -> 0x017a }
            r5 = 1
            long r9 = r17.a()     // Catch:{ all -> 0x017a }
            long r11 = r1.y     // Catch:{ all -> 0x017a }
            long r2 = r2 - r11
            long r9 = r9 - r2
            long r5 = java.lang.Math.max(r5, r9)     // Catch:{ all -> 0x017a }
            r2 = r8
        L_0x015c:
            monitor-exit(r15)     // Catch:{ all -> 0x017a }
            org.eclipse.paho.a.a.b.b r0 = r1.f8747b
            java.lang.String r3 = f8746a
            java.lang.Object[] r7 = new java.lang.Object[r14]
            java.lang.Long r8 = java.lang.Long.valueOf(r5)
            r7[r4] = r8
            java.lang.String r4 = "checkForActivity"
            java.lang.String r8 = "624"
            r0.fine(r3, r4, r8, r7)
            org.eclipse.paho.a.a.t r0 = r1.D
            r0.schedule(r5)
            goto L_0x017e
        L_0x0176:
            r0 = move-exception
            r15 = r6
        L_0x0178:
            monitor-exit(r15)     // Catch:{ all -> 0x017a }
            throw r0
        L_0x017a:
            r0 = move-exception
            goto L_0x0178
        L_0x017c:
            r8 = r5
            r2 = r8
        L_0x017e:
            return r2
        L_0x017f:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x017f }
            goto L_0x0183
        L_0x0182:
            throw r0
        L_0x0183:
            goto L_0x0182
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.a.b.checkForActivity(org.eclipse.paho.a.a.c):org.eclipse.paho.a.a.v");
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Can't wrap try/catch for region: R(8:7|(2:15|16)|17|18|(1:46)(5:20|(2:22|(1:47)(2:24|(2:48|26)))|27|(4:29|(1:31)|32|49)(2:33|(1:50)(2:35|(2:37|51)(2:38|52)))|45)|39|40|41) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:17:0x0042 */
    /* JADX WARNING: Removed duplicated region for block: B:20:0x0046  */
    /* JADX WARNING: Removed duplicated region for block: B:46:0x00d9 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final org.eclipse.paho.a.a.a.a.u b() throws org.eclipse.paho.a.a.p {
        /*
            r10 = this;
            java.lang.Object r0 = r10.w
            monitor-enter(r0)
            r1 = 0
            r2 = r1
        L_0x0005:
            if (r2 == 0) goto L_0x0009
            monitor-exit(r0)     // Catch:{ all -> 0x00e6 }
            return r2
        L_0x0009:
            java.util.Vector r3 = r10.d     // Catch:{ all -> 0x00e6 }
            boolean r3 = r3.isEmpty()     // Catch:{ all -> 0x00e6 }
            if (r3 == 0) goto L_0x0019
            java.util.Vector r3 = r10.e     // Catch:{ all -> 0x00e6 }
            boolean r3 = r3.isEmpty()     // Catch:{ all -> 0x00e6 }
            if (r3 != 0) goto L_0x0027
        L_0x0019:
            java.util.Vector r3 = r10.e     // Catch:{ all -> 0x00e6 }
            boolean r3 = r3.isEmpty()     // Catch:{ all -> 0x00e6 }
            if (r3 == 0) goto L_0x0042
            int r3 = r10.u     // Catch:{ all -> 0x00e6 }
            int r4 = r10.l     // Catch:{ all -> 0x00e6 }
            if (r3 < r4) goto L_0x0042
        L_0x0027:
            org.eclipse.paho.a.a.b.b r3 = r10.f8747b     // Catch:{ InterruptedException -> 0x0042 }
            java.lang.String r4 = f8746a     // Catch:{ InterruptedException -> 0x0042 }
            java.lang.String r5 = "get"
            java.lang.String r6 = "644"
            r3.fine(r4, r5, r6)     // Catch:{ InterruptedException -> 0x0042 }
            java.lang.Object r3 = r10.w     // Catch:{ InterruptedException -> 0x0042 }
            r3.wait()     // Catch:{ InterruptedException -> 0x0042 }
            org.eclipse.paho.a.a.b.b r3 = r10.f8747b     // Catch:{ InterruptedException -> 0x0042 }
            java.lang.String r4 = f8746a     // Catch:{ InterruptedException -> 0x0042 }
            java.lang.String r5 = "get"
            java.lang.String r6 = "647"
            r3.fine(r4, r5, r6)     // Catch:{ InterruptedException -> 0x0042 }
        L_0x0042:
            java.util.Vector r3 = r10.e     // Catch:{ all -> 0x00e6 }
            if (r3 == 0) goto L_0x00d9
            boolean r3 = r10.C     // Catch:{ all -> 0x00e6 }
            r4 = 0
            if (r3 != 0) goto L_0x0061
            java.util.Vector r3 = r10.e     // Catch:{ all -> 0x00e6 }
            boolean r3 = r3.isEmpty()     // Catch:{ all -> 0x00e6 }
            if (r3 != 0) goto L_0x00d9
            java.util.Vector r3 = r10.e     // Catch:{ all -> 0x00e6 }
            java.lang.Object r3 = r3.elementAt(r4)     // Catch:{ all -> 0x00e6 }
            org.eclipse.paho.a.a.a.a.u r3 = (org.eclipse.paho.a.a.a.a.u) r3     // Catch:{ all -> 0x00e6 }
            boolean r3 = r3 instanceof org.eclipse.paho.a.a.a.a.d     // Catch:{ all -> 0x00e6 }
            if (r3 != 0) goto L_0x0061
            goto L_0x00d9
        L_0x0061:
            java.util.Vector r3 = r10.e     // Catch:{ all -> 0x00e6 }
            boolean r3 = r3.isEmpty()     // Catch:{ all -> 0x00e6 }
            r5 = 1
            if (r3 != 0) goto L_0x0095
            java.util.Vector r2 = r10.e     // Catch:{ all -> 0x00e6 }
            java.lang.Object r2 = r2.remove(r4)     // Catch:{ all -> 0x00e6 }
            org.eclipse.paho.a.a.a.a.u r2 = (org.eclipse.paho.a.a.a.a.u) r2     // Catch:{ all -> 0x00e6 }
            boolean r3 = r2 instanceof org.eclipse.paho.a.a.a.a.n     // Catch:{ all -> 0x00e6 }
            if (r3 == 0) goto L_0x0090
            int r3 = r10.v     // Catch:{ all -> 0x00e6 }
            int r3 = r3 + r5
            r10.v = r3     // Catch:{ all -> 0x00e6 }
            org.eclipse.paho.a.a.b.b r3 = r10.f8747b     // Catch:{ all -> 0x00e6 }
            java.lang.String r6 = f8746a     // Catch:{ all -> 0x00e6 }
            java.lang.String r7 = "get"
            java.lang.String r8 = "617"
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ all -> 0x00e6 }
            int r9 = r10.v     // Catch:{ all -> 0x00e6 }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ all -> 0x00e6 }
            r5[r4] = r9     // Catch:{ all -> 0x00e6 }
            r3.fine(r6, r7, r8, r5)     // Catch:{ all -> 0x00e6 }
        L_0x0090:
            r10.c()     // Catch:{ all -> 0x00e6 }
            goto L_0x0005
        L_0x0095:
            java.util.Vector r3 = r10.d     // Catch:{ all -> 0x00e6 }
            boolean r3 = r3.isEmpty()     // Catch:{ all -> 0x00e6 }
            if (r3 != 0) goto L_0x0005
            int r3 = r10.u     // Catch:{ all -> 0x00e6 }
            int r6 = r10.l     // Catch:{ all -> 0x00e6 }
            if (r3 >= r6) goto L_0x00cc
            java.util.Vector r2 = r10.d     // Catch:{ all -> 0x00e6 }
            java.lang.Object r2 = r2.elementAt(r4)     // Catch:{ all -> 0x00e6 }
            org.eclipse.paho.a.a.a.a.u r2 = (org.eclipse.paho.a.a.a.a.u) r2     // Catch:{ all -> 0x00e6 }
            java.util.Vector r3 = r10.d     // Catch:{ all -> 0x00e6 }
            r3.removeElementAt(r4)     // Catch:{ all -> 0x00e6 }
            int r3 = r10.u     // Catch:{ all -> 0x00e6 }
            int r3 = r3 + r5
            r10.u = r3     // Catch:{ all -> 0x00e6 }
            org.eclipse.paho.a.a.b.b r3 = r10.f8747b     // Catch:{ all -> 0x00e6 }
            java.lang.String r6 = f8746a     // Catch:{ all -> 0x00e6 }
            java.lang.String r7 = "get"
            java.lang.String r8 = "623"
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ all -> 0x00e6 }
            int r9 = r10.u     // Catch:{ all -> 0x00e6 }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ all -> 0x00e6 }
            r5[r4] = r9     // Catch:{ all -> 0x00e6 }
            r3.fine(r6, r7, r8, r5)     // Catch:{ all -> 0x00e6 }
            goto L_0x0005
        L_0x00cc:
            org.eclipse.paho.a.a.b.b r3 = r10.f8747b     // Catch:{ all -> 0x00e6 }
            java.lang.String r4 = f8746a     // Catch:{ all -> 0x00e6 }
            java.lang.String r5 = "get"
            java.lang.String r6 = "622"
            r3.fine(r4, r5, r6)     // Catch:{ all -> 0x00e6 }
            goto L_0x0005
        L_0x00d9:
            org.eclipse.paho.a.a.b.b r2 = r10.f8747b     // Catch:{ all -> 0x00e6 }
            java.lang.String r3 = f8746a     // Catch:{ all -> 0x00e6 }
            java.lang.String r4 = "get"
            java.lang.String r5 = "621"
            r2.fine(r3, r4, r5)     // Catch:{ all -> 0x00e6 }
            monitor-exit(r0)     // Catch:{ all -> 0x00e6 }
            return r1
        L_0x00e6:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00e6 }
            goto L_0x00ea
        L_0x00e9:
            throw r1
        L_0x00ea:
            goto L_0x00e9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.a.b.b():org.eclipse.paho.a.a.a.a.u");
    }

    public void setKeepAliveInterval(long j2) {
        this.i = j2;
    }

    public void notifySentBytes(int i2) {
        if (i2 > 0) {
            this.y = System.nanoTime();
        }
        this.f8747b.fine(f8746a, "notifySentBytes", "643", new Object[]{Integer.valueOf(i2)});
    }

    /* access modifiers changed from: protected */
    public final void b(u uVar) {
        this.y = System.nanoTime();
        this.f8747b.fine(f8746a, "notifySent", "625", new Object[]{uVar.getKey()});
        v token = uVar.getToken();
        if (token == null) {
            token = this.f.getToken(uVar);
            if (token == null) {
                return;
            }
        }
        q qVar = token.internalTok;
        qVar.f8772b.fine(q.f8771a, "notifySent", "403", new Object[]{qVar.getKey()});
        synchronized (qVar.f) {
            qVar.i = null;
            qVar.c = false;
        }
        synchronized (qVar.g) {
            qVar.e = true;
            qVar.g.notifyAll();
        }
        if (uVar instanceof i) {
            synchronized (this.A) {
                long nanoTime = System.nanoTime();
                synchronized (this.A) {
                    this.z = nanoTime;
                    this.B++;
                }
                this.f8747b.fine(f8746a, "notifySent", "635", new Object[]{Integer.valueOf(this.B)});
            }
            return;
        }
        if ((uVar instanceof o) && ((o) uVar).getMessage().getQos() == 0) {
            token.internalTok.a(null, null);
            this.h.asyncOperationComplete(token);
            f();
            b(uVar.getMessageId());
            this.f.removeToken(uVar);
            c();
        }
    }

    private void f() {
        synchronized (this.w) {
            this.u--;
            this.f8747b.fine(f8746a, "decrementInFlight", "646", new Object[]{Integer.valueOf(this.u)});
            if (!c()) {
                this.w.notifyAll();
            }
        }
    }

    /* access modifiers changed from: protected */
    public final boolean c() {
        int count = this.f.count();
        if (!this.m || count != 0 || this.e.size() != 0 || !this.h.isQuiesced()) {
            return false;
        }
        this.f8747b.fine(f8746a, "checkQuiesceLock", "626", new Object[]{Boolean.valueOf(this.m), Integer.valueOf(this.u), Integer.valueOf(this.e.size()), Integer.valueOf(this.v), Boolean.valueOf(this.h.isQuiesced()), Integer.valueOf(count)});
        synchronized (this.x) {
            this.x.notifyAll();
        }
        return true;
    }

    public void notifyReceivedBytes(int i2) {
        if (i2 > 0) {
            this.n = System.nanoTime();
        }
        this.f8747b.fine(f8746a, "notifyReceivedBytes", "630", new Object[]{Integer.valueOf(i2)});
    }

    /* access modifiers changed from: protected */
    public final void a(org.eclipse.paho.a.a.a.a.b bVar) throws p {
        this.n = System.nanoTime();
        this.f8747b.fine(f8746a, "notifyReceivedAck", "627", new Object[]{Integer.valueOf(bVar.getMessageId()), bVar});
        v token = this.f.getToken((u) bVar);
        if (token == null) {
            this.f8747b.fine(f8746a, "notifyReceivedAck", "662", new Object[]{Integer.valueOf(bVar.getMessageId())});
        } else if (bVar instanceof org.eclipse.paho.a.a.a.a.m) {
            send(new n((org.eclipse.paho.a.a.a.a.m) bVar), token);
        } else if ((bVar instanceof k) || (bVar instanceof l)) {
            a((u) bVar, token);
        } else if (bVar instanceof j) {
            synchronized (this.A) {
                this.B = Math.max(0, this.B - 1);
                a((u) bVar, token);
                if (this.B == 0) {
                    this.f.removeToken((u) bVar);
                }
            }
            this.f8747b.fine(f8746a, "notifyReceivedAck", "636", new Object[]{Integer.valueOf(this.B)});
        } else if (bVar instanceof org.eclipse.paho.a.a.a.a.c) {
            org.eclipse.paho.a.a.a.a.c cVar = (org.eclipse.paho.a.a.a.a.c) bVar;
            int returnCode = cVar.getReturnCode();
            if (returnCode == 0) {
                synchronized (this.w) {
                    if (this.j) {
                        d();
                        this.f.a(token, (u) bVar);
                    }
                    this.v = 0;
                    this.u = 0;
                    this.d = new Vector(this.l);
                    this.e = new Vector();
                    Enumeration keys = this.p.keys();
                    while (keys.hasMoreElements()) {
                        Object nextElement = keys.nextElement();
                        u uVar = (u) this.p.get(nextElement);
                        if (uVar instanceof o) {
                            this.f8747b.fine(f8746a, "restoreInflightMessages", "610", new Object[]{nextElement});
                            uVar.setDuplicate(true);
                            a(this.d, (u) (o) uVar);
                        } else if (uVar instanceof n) {
                            this.f8747b.fine(f8746a, "restoreInflightMessages", "611", new Object[]{nextElement});
                            a(this.e, (u) (n) uVar);
                        }
                    }
                    Enumeration keys2 = this.q.keys();
                    while (keys2.hasMoreElements()) {
                        Object nextElement2 = keys2.nextElement();
                        o oVar = (o) this.q.get(nextElement2);
                        oVar.setDuplicate(true);
                        this.f8747b.fine(f8746a, "restoreInflightMessages", "612", new Object[]{nextElement2});
                        a(this.d, (u) oVar);
                    }
                    Enumeration keys3 = this.r.keys();
                    while (keys3.hasMoreElements()) {
                        Object nextElement3 = keys3.nextElement();
                        this.f8747b.fine(f8746a, "restoreInflightMessages", "512", new Object[]{nextElement3});
                        a(this.d, (u) (o) this.r.get(nextElement3));
                    }
                    this.e = a(this.e);
                    this.d = a(this.d);
                    connected();
                }
                this.g.connectComplete(cVar, null);
                a((u) bVar, token);
                this.f.removeToken((u) bVar);
                synchronized (this.w) {
                    this.w.notifyAll();
                }
            } else {
                throw i.createMqttException(returnCode);
            }
        } else {
            a((u) bVar, token);
            b(bVar.getMessageId());
            this.f.removeToken((u) bVar);
        }
        c();
    }

    /* access modifiers changed from: protected */
    public final void a(v vVar) throws p {
        u wireMessage = vVar.internalTok.getWireMessage();
        if (wireMessage != null && (wireMessage instanceof org.eclipse.paho.a.a.a.a.b)) {
            this.f8747b.fine(f8746a, "notifyComplete", "629", new Object[]{Integer.valueOf(wireMessage.getMessageId()), vVar, wireMessage});
            org.eclipse.paho.a.a.a.a.b bVar = (org.eclipse.paho.a.a.a.a.b) wireMessage;
            if (bVar instanceof k) {
                this.k.remove(c(wireMessage));
                this.k.remove(e(wireMessage));
                this.q.remove(Integer.valueOf(bVar.getMessageId()));
                f();
                b(wireMessage.getMessageId());
                this.f.removeToken(wireMessage);
                this.f8747b.fine(f8746a, "notifyComplete", "650", new Object[]{Integer.valueOf(bVar.getMessageId())});
            } else if (bVar instanceof l) {
                this.k.remove(c(wireMessage));
                this.k.remove(d(wireMessage));
                this.k.remove(e(wireMessage));
                this.p.remove(Integer.valueOf(bVar.getMessageId()));
                this.v--;
                f();
                b(wireMessage.getMessageId());
                this.f.removeToken(wireMessage);
                this.f8747b.fine(f8746a, "notifyComplete", "645", new Object[]{Integer.valueOf(bVar.getMessageId()), Integer.valueOf(this.v)});
            }
            c();
        }
    }

    private void a(u uVar, v vVar) {
        vVar.internalTok.a(uVar, null);
        vVar.internalTok.a();
        if (uVar != null && (uVar instanceof org.eclipse.paho.a.a.a.a.b) && !(uVar instanceof org.eclipse.paho.a.a.a.a.m)) {
            this.f8747b.fine(f8746a, "notifyResult", "648", new Object[]{vVar.internalTok.getKey(), uVar, null});
            this.h.asyncOperationComplete(vVar);
        }
        if (uVar == null) {
            this.f8747b.fine(f8746a, "notifyResult", "649", new Object[]{vVar.internalTok.getKey(), null});
            this.h.asyncOperationComplete(vVar);
        }
    }

    public void connected() {
        this.f8747b.fine(f8746a, "connected", "631");
        this.C = true;
        this.D.start();
    }

    public Vector resolveOldTokens(p pVar) {
        this.f8747b.fine(f8746a, "resolveOldTokens", "632", new Object[]{pVar});
        if (pVar == null) {
            pVar = new p(32102);
        }
        Vector outstandingTokens = this.f.getOutstandingTokens();
        Enumeration elements = outstandingTokens.elements();
        while (elements.hasMoreElements()) {
            v vVar = (v) elements.nextElement();
            synchronized (vVar) {
                if (!vVar.isComplete() && !vVar.internalTok.d && vVar.getException() == null) {
                    vVar.internalTok.setException(pVar);
                }
            }
            if (!(vVar instanceof org.eclipse.paho.a.a.o)) {
                this.f.removeToken(vVar.internalTok.getKey());
            }
        }
        return outstandingTokens;
    }

    public void disconnected(p pVar) {
        this.f8747b.fine(f8746a, "disconnected", "633", new Object[]{pVar});
        this.C = false;
        try {
            if (this.j) {
                d();
            }
            this.d.clear();
            this.e.clear();
            synchronized (this.A) {
                this.B = 0;
            }
        } catch (p unused) {
        }
    }

    private synchronized void b(int i2) {
        this.c.remove(Integer.valueOf(i2));
    }

    private synchronized int g() throws p {
        int i2 = this.t;
        int i3 = 0;
        do {
            this.t++;
            if (this.t > 65535) {
                this.t = 1;
            }
            if (this.t == i2) {
                i3++;
                if (i3 == 2) {
                    throw i.createMqttException(32001);
                }
            }
        } while (this.c.containsKey(Integer.valueOf(this.t)));
        Integer valueOf = Integer.valueOf(this.t);
        this.c.put(valueOf, valueOf);
        return this.t;
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:18:0x007e */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0082 A[SYNTHETIC] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void quiesce(long r11) {
        /*
            r10 = this;
            r0 = 0
            int r2 = (r11 > r0 ? 1 : (r11 == r0 ? 0 : -1))
            if (r2 <= 0) goto L_0x00a5
            org.eclipse.paho.a.a.b.b r0 = r10.f8747b
            java.lang.String r1 = f8746a
            r2 = 1
            java.lang.Object[] r3 = new java.lang.Object[r2]
            java.lang.Long r4 = java.lang.Long.valueOf(r11)
            r5 = 0
            r3[r5] = r4
            java.lang.String r4 = "quiesce"
            java.lang.String r6 = "637"
            r0.fine(r1, r4, r6, r3)
            java.lang.Object r0 = r10.w
            monitor-enter(r0)
            r10.m = r2     // Catch:{ all -> 0x00a2 }
            monitor-exit(r0)     // Catch:{ all -> 0x00a2 }
            org.eclipse.paho.a.a.a.c r0 = r10.h
            r0.quiesce()
            r10.notifyQueueLock()
            java.lang.Object r1 = r10.x
            monitor-enter(r1)
            org.eclipse.paho.a.a.a.f r0 = r10.f     // Catch:{ InterruptedException -> 0x007e }
            int r0 = r0.count()     // Catch:{ InterruptedException -> 0x007e }
            if (r0 > 0) goto L_0x0044
            java.util.Vector r3 = r10.e     // Catch:{ InterruptedException -> 0x007e }
            int r3 = r3.size()     // Catch:{ InterruptedException -> 0x007e }
            if (r3 > 0) goto L_0x0044
            org.eclipse.paho.a.a.a.c r3 = r10.h     // Catch:{ InterruptedException -> 0x007e }
            boolean r3 = r3.isQuiesced()     // Catch:{ InterruptedException -> 0x007e }
            if (r3 != 0) goto L_0x007e
        L_0x0044:
            org.eclipse.paho.a.a.b.b r3 = r10.f8747b     // Catch:{ InterruptedException -> 0x007e }
            java.lang.String r4 = f8746a     // Catch:{ InterruptedException -> 0x007e }
            java.lang.String r6 = "quiesce"
            java.lang.String r7 = "639"
            r8 = 4
            java.lang.Object[] r8 = new java.lang.Object[r8]     // Catch:{ InterruptedException -> 0x007e }
            int r9 = r10.u     // Catch:{ InterruptedException -> 0x007e }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ InterruptedException -> 0x007e }
            r8[r5] = r9     // Catch:{ InterruptedException -> 0x007e }
            java.util.Vector r9 = r10.e     // Catch:{ InterruptedException -> 0x007e }
            int r9 = r9.size()     // Catch:{ InterruptedException -> 0x007e }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ InterruptedException -> 0x007e }
            r8[r2] = r9     // Catch:{ InterruptedException -> 0x007e }
            r2 = 2
            int r9 = r10.v     // Catch:{ InterruptedException -> 0x007e }
            java.lang.Integer r9 = java.lang.Integer.valueOf(r9)     // Catch:{ InterruptedException -> 0x007e }
            r8[r2] = r9     // Catch:{ InterruptedException -> 0x007e }
            r2 = 3
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)     // Catch:{ InterruptedException -> 0x007e }
            r8[r2] = r0     // Catch:{ InterruptedException -> 0x007e }
            r3.fine(r4, r6, r7, r8)     // Catch:{ InterruptedException -> 0x007e }
            java.lang.Object r0 = r10.x     // Catch:{ InterruptedException -> 0x007e }
            r0.wait(r11)     // Catch:{ InterruptedException -> 0x007e }
            goto L_0x007e
        L_0x007c:
            r11 = move-exception
            goto L_0x00a0
        L_0x007e:
            monitor-exit(r1)     // Catch:{ all -> 0x007c }
            java.lang.Object r11 = r10.w
            monitor-enter(r11)
            java.util.Vector r12 = r10.d     // Catch:{ all -> 0x009d }
            r12.clear()     // Catch:{ all -> 0x009d }
            java.util.Vector r12 = r10.e     // Catch:{ all -> 0x009d }
            r12.clear()     // Catch:{ all -> 0x009d }
            r10.m = r5     // Catch:{ all -> 0x009d }
            r10.u = r5     // Catch:{ all -> 0x009d }
            monitor-exit(r11)     // Catch:{ all -> 0x009d }
            org.eclipse.paho.a.a.b.b r11 = r10.f8747b
            java.lang.String r12 = f8746a
            java.lang.String r0 = "quiesce"
            java.lang.String r1 = "640"
            r11.fine(r12, r0, r1)
            goto L_0x00a5
        L_0x009d:
            r12 = move-exception
            monitor-exit(r11)     // Catch:{ all -> 0x009d }
            throw r12
        L_0x00a0:
            monitor-exit(r1)     // Catch:{ all -> 0x007c }
            throw r11
        L_0x00a2:
            r11 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x00a2 }
            throw r11
        L_0x00a5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.a.b.quiesce(long):void");
    }

    public void notifyQueueLock() {
        synchronized (this.w) {
            this.f8747b.fine(f8746a, "notifyQueueLock", "638");
            this.w.notifyAll();
        }
    }

    public int getActualInFlight() {
        return this.u;
    }

    public int getMaxInFlight() {
        return this.l;
    }

    public Properties getDebug() {
        Properties properties = new Properties();
        properties.put("In use msgids", this.c);
        properties.put("pendingMessages", this.d);
        properties.put("pendingFlows", this.e);
        properties.put("maxInflight", Integer.valueOf(this.l));
        properties.put("nextMsgID", Integer.valueOf(this.t));
        properties.put("actualInFlight", Integer.valueOf(this.u));
        properties.put("inFlightPubRels", Integer.valueOf(this.v));
        properties.put("quiescing", Boolean.valueOf(this.m));
        properties.put("pingoutstanding", Integer.valueOf(this.B));
        properties.put("lastOutboundActivity", Long.valueOf(this.y));
        properties.put("lastInboundActivity", Long.valueOf(this.n));
        properties.put("outboundQoS2", this.p);
        properties.put("outboundQoS1", this.q);
        properties.put("outboundQoS0", this.r);
        properties.put("inboundQoS2", this.s);
        properties.put("tokens", this.f);
        return properties;
    }
}
