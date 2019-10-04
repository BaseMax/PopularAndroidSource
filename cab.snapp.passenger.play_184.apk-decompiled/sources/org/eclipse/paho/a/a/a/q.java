package org.eclipse.paho.a.a.a;

import org.eclipse.paho.a.a.a.a.u;
import org.eclipse.paho.a.a.b.b;
import org.eclipse.paho.a.a.b.c;
import org.eclipse.paho.a.a.d;
import org.eclipse.paho.a.a.p;

public class q {

    /* renamed from: a  reason: collision with root package name */
    static final String f8771a = q.class.getName();

    /* renamed from: b  reason: collision with root package name */
    b f8772b = c.getLogger(c.MQTT_CLIENT_MSG_CAT, f8771a);
    volatile boolean c = false;
    boolean d = false;
    boolean e = false;
    Object f = new Object();
    Object g = new Object();
    protected org.eclipse.paho.a.a.q h = null;
    u i = null;
    d j = null;
    private p k = null;
    private String[] l = null;
    private String m;
    private org.eclipse.paho.a.a.c n = null;
    private Object o = null;
    private int p = 0;
    private boolean q = false;

    public q(String str) {
        this.f8772b.setResourceName(str);
    }

    public int getMessageID() {
        return this.p;
    }

    public void setMessageID(int i2) {
        this.p = i2;
    }

    public boolean checkResult() throws p {
        if (getException() == null) {
            return true;
        }
        throw getException();
    }

    public p getException() {
        return this.k;
    }

    public boolean isComplete() {
        return this.c;
    }

    public void setActionCallback(org.eclipse.paho.a.a.c cVar) {
        this.n = cVar;
    }

    public org.eclipse.paho.a.a.c getActionCallback() {
        return this.n;
    }

    public void waitForCompletion() throws p {
        waitForCompletion(-1);
    }

    public void waitForCompletion(long j2) throws p {
        this.f8772b.fine(f8771a, "waitForCompletion", "407", new Object[]{getKey(), Long.valueOf(j2), this});
        if (a(j2) != null || this.c) {
            checkResult();
            return;
        }
        this.f8772b.fine(f8771a, "waitForCompletion", "406", new Object[]{getKey(), this});
        this.k = new p(32000);
        throw this.k;
    }

    private u a(long j2) throws p {
        synchronized (this.f) {
            b bVar = this.f8772b;
            String str = f8771a;
            Object[] objArr = new Object[7];
            objArr[0] = getKey();
            objArr[1] = Long.valueOf(j2);
            objArr[2] = Boolean.valueOf(this.e);
            objArr[3] = Boolean.valueOf(this.c);
            objArr[4] = this.k == null ? "false" : "true";
            objArr[5] = this.i;
            objArr[6] = this;
            bVar.fine(str, "waitForResponse", "400", objArr, this.k);
            while (true) {
                if (this.c) {
                    break;
                }
                if (this.k == null) {
                    try {
                        this.f8772b.fine(f8771a, "waitForResponse", "408", new Object[]{getKey(), new Long(j2)});
                        if (j2 <= 0) {
                            this.f.wait();
                        } else {
                            this.f.wait(j2);
                        }
                    } catch (InterruptedException e2) {
                        this.k = new p((Throwable) e2);
                    }
                }
                if (!this.c) {
                    if (this.k == null) {
                        if (j2 > 0) {
                            break;
                        }
                    } else {
                        this.f8772b.fine(f8771a, "waitForResponse", "401", null, this.k);
                        throw this.k;
                    }
                }
            }
        }
        this.f8772b.fine(f8771a, "waitForResponse", "402", new Object[]{getKey(), this.i});
        return this.i;
    }

    /* access modifiers changed from: protected */
    public final void a(u uVar, p pVar) {
        this.f8772b.fine(f8771a, "markComplete", "404", new Object[]{getKey(), uVar, pVar});
        synchronized (this.f) {
            if (uVar instanceof org.eclipse.paho.a.a.a.a.b) {
                this.h = null;
            }
            this.d = true;
            this.i = uVar;
            this.k = pVar;
        }
    }

    /* access modifiers changed from: protected */
    public final void a() {
        this.f8772b.fine(f8771a, "notifyComplete", "404", new Object[]{getKey(), this.i, this.k});
        synchronized (this.f) {
            if (this.k == null && this.d) {
                this.c = true;
            }
            this.d = false;
            this.f.notifyAll();
        }
        synchronized (this.g) {
            this.e = true;
            this.g.notifyAll();
        }
    }

    /* JADX WARNING: Can't wrap try/catch for region: R(6:22|23|36|34|10|9) */
    /* JADX WARNING: Missing exception handler attribute for start block: B:9:0x000b */
    /* JADX WARNING: Removed duplicated region for block: B:22:0x0022 A[SYNTHETIC, Splitter:B:22:0x0022] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void waitUntilSent() throws org.eclipse.paho.a.a.p {
        /*
            r8 = this;
            java.lang.Object r0 = r8.g
            monitor-enter(r0)
            java.lang.Object r1 = r8.f     // Catch:{ all -> 0x0043 }
            monitor-enter(r1)     // Catch:{ all -> 0x0043 }
            org.eclipse.paho.a.a.p r2 = r8.k     // Catch:{ all -> 0x0040 }
            if (r2 != 0) goto L_0x003d
            monitor-exit(r1)     // Catch:{ all -> 0x0040 }
        L_0x000b:
            boolean r1 = r8.e     // Catch:{ all -> 0x0043 }
            if (r1 == 0) goto L_0x0022
            boolean r1 = r8.e     // Catch:{ all -> 0x0043 }
            if (r1 != 0) goto L_0x0020
            org.eclipse.paho.a.a.p r1 = r8.k     // Catch:{ all -> 0x0043 }
            if (r1 != 0) goto L_0x001d
            r1 = 6
            org.eclipse.paho.a.a.p r1 = org.eclipse.paho.a.a.a.i.createMqttException((int) r1)     // Catch:{ all -> 0x0043 }
            throw r1     // Catch:{ all -> 0x0043 }
        L_0x001d:
            org.eclipse.paho.a.a.p r1 = r8.k     // Catch:{ all -> 0x0043 }
            throw r1     // Catch:{ all -> 0x0043 }
        L_0x0020:
            monitor-exit(r0)     // Catch:{ all -> 0x0043 }
            return
        L_0x0022:
            org.eclipse.paho.a.a.b.b r1 = r8.f8772b     // Catch:{ InterruptedException -> 0x000b }
            java.lang.String r2 = f8771a     // Catch:{ InterruptedException -> 0x000b }
            java.lang.String r3 = "waitUntilSent"
            java.lang.String r4 = "409"
            r5 = 1
            java.lang.Object[] r5 = new java.lang.Object[r5]     // Catch:{ InterruptedException -> 0x000b }
            r6 = 0
            java.lang.String r7 = r8.getKey()     // Catch:{ InterruptedException -> 0x000b }
            r5[r6] = r7     // Catch:{ InterruptedException -> 0x000b }
            r1.fine(r2, r3, r4, r5)     // Catch:{ InterruptedException -> 0x000b }
            java.lang.Object r1 = r8.g     // Catch:{ InterruptedException -> 0x000b }
            r1.wait()     // Catch:{ InterruptedException -> 0x000b }
            goto L_0x000b
        L_0x003d:
            org.eclipse.paho.a.a.p r2 = r8.k     // Catch:{ all -> 0x0040 }
            throw r2     // Catch:{ all -> 0x0040 }
        L_0x0040:
            r2 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0040 }
            throw r2     // Catch:{ all -> 0x0043 }
        L_0x0043:
            r1 = move-exception
            monitor-exit(r0)     // Catch:{ all -> 0x0043 }
            goto L_0x0047
        L_0x0046:
            throw r1
        L_0x0047:
            goto L_0x0046
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.a.a.a.q.waitUntilSent():void");
    }

    public d getClient() {
        return this.j;
    }

    public org.eclipse.paho.a.a.q getMessage() {
        return this.h;
    }

    public u getWireMessage() {
        return this.i;
    }

    public void setMessage(org.eclipse.paho.a.a.q qVar) {
        this.h = qVar;
    }

    public String[] getTopics() {
        return this.l;
    }

    public void setTopics(String[] strArr) {
        this.l = (String[]) strArr.clone();
    }

    public Object getUserContext() {
        return this.o;
    }

    public void setUserContext(Object obj) {
        this.o = obj;
    }

    public void setKey(String str) {
        this.m = str;
    }

    public String getKey() {
        return this.m;
    }

    public void setException(p pVar) {
        synchronized (this.f) {
            this.k = pVar;
        }
    }

    public boolean isNotified() {
        return this.q;
    }

    public void setNotified(boolean z) {
        this.q = z;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("key=");
        stringBuffer.append(getKey());
        stringBuffer.append(" ,topics=");
        if (getTopics() != null) {
            for (String append : getTopics()) {
                stringBuffer.append(append);
                stringBuffer.append(", ");
            }
        }
        stringBuffer.append(" ,usercontext=");
        stringBuffer.append(getUserContext());
        stringBuffer.append(" ,isComplete=");
        stringBuffer.append(isComplete());
        stringBuffer.append(" ,isNotified=");
        stringBuffer.append(isNotified());
        stringBuffer.append(" ,exception=");
        stringBuffer.append(getException());
        stringBuffer.append(" ,actioncallback=");
        stringBuffer.append(getActionCallback());
        return stringBuffer.toString();
    }

    public int[] getGrantedQos() {
        int[] iArr = new int[0];
        u uVar = this.i;
        return uVar instanceof org.eclipse.paho.a.a.a.a.q ? ((org.eclipse.paho.a.a.a.a.q) uVar).getGrantedQos() : iArr;
    }

    public boolean getSessionPresent() {
        u uVar = this.i;
        if (uVar instanceof org.eclipse.paho.a.a.a.a.c) {
            return ((org.eclipse.paho.a.a.a.a.c) uVar).getSessionPresent();
        }
        return false;
    }

    public u getResponse() {
        return this.i;
    }

    public void reset() throws p {
        if (!(getClient() != null && !isComplete())) {
            this.f8772b.fine(f8771a, "reset", "410", new Object[]{getKey()});
            this.j = null;
            this.c = false;
            this.i = null;
            this.e = false;
            this.k = null;
            this.o = null;
            return;
        }
        throw new p(32201);
    }
}
