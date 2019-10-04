package org.eclipse.paho.android.service;

import org.eclipse.paho.a.a.a.a.u;
import org.eclipse.paho.a.a.c;
import org.eclipse.paho.a.a.d;
import org.eclipse.paho.a.a.h;
import org.eclipse.paho.a.a.p;

class g implements h {

    /* renamed from: a  reason: collision with root package name */
    h f8842a;

    /* renamed from: b  reason: collision with root package name */
    private c f8843b;
    private volatile boolean c;
    private volatile p d;
    private Object e;
    private MqttAndroidClient f;
    private Object g;
    private String[] h;
    private p i;

    g(MqttAndroidClient mqttAndroidClient, Object obj, c cVar) {
        this(mqttAndroidClient, obj, cVar, null);
    }

    g(MqttAndroidClient mqttAndroidClient, Object obj, c cVar, String[] strArr) {
        this.e = new Object();
        this.f = mqttAndroidClient;
        this.g = obj;
        this.f8843b = cVar;
        this.h = strArr;
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x000b */
    /* JADX WARNING: Removed duplicated region for block: B:10:0x0011  */
    /* JADX WARNING: Removed duplicated region for block: B:9:0x0010 A[RETURN] */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void waitForCompletion() throws org.eclipse.paho.a.a.p, org.eclipse.paho.a.a.u {
        /*
            r2 = this;
            java.lang.Object r0 = r2.e
            monitor-enter(r0)
            java.lang.Object r1 = r2.e     // Catch:{ InterruptedException -> 0x000b }
            r1.wait()     // Catch:{ InterruptedException -> 0x000b }
            goto L_0x000b
        L_0x0009:
            r1 = move-exception
            goto L_0x0012
        L_0x000b:
            monitor-exit(r0)     // Catch:{ all -> 0x0009 }
            org.eclipse.paho.a.a.p r0 = r2.i
            if (r0 != 0) goto L_0x0011
            return
        L_0x0011:
            throw r0
        L_0x0012:
            monitor-exit(r0)     // Catch:{ all -> 0x0009 }
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.android.service.g.waitForCompletion():void");
    }

    /* JADX WARNING: Exception block dominator not found, dom blocks: [] */
    /* JADX WARNING: Missing exception handler attribute for start block: B:5:0x000b */
    /* JADX WARNING: Removed duplicated region for block: B:14:0x0018  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x000f  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void waitForCompletion(long r3) throws org.eclipse.paho.a.a.p, org.eclipse.paho.a.a.u {
        /*
            r2 = this;
            java.lang.Object r0 = r2.e
            monitor-enter(r0)
            java.lang.Object r1 = r2.e     // Catch:{ InterruptedException -> 0x000b }
            r1.wait(r3)     // Catch:{ InterruptedException -> 0x000b }
            goto L_0x000b
        L_0x0009:
            r3 = move-exception
            goto L_0x0020
        L_0x000b:
            boolean r3 = r2.c     // Catch:{ all -> 0x0009 }
            if (r3 == 0) goto L_0x0018
            org.eclipse.paho.a.a.p r3 = r2.i     // Catch:{ all -> 0x0009 }
            if (r3 != 0) goto L_0x0015
            monitor-exit(r0)     // Catch:{ all -> 0x0009 }
            return
        L_0x0015:
            org.eclipse.paho.a.a.p r3 = r2.i     // Catch:{ all -> 0x0009 }
            throw r3     // Catch:{ all -> 0x0009 }
        L_0x0018:
            org.eclipse.paho.a.a.p r3 = new org.eclipse.paho.a.a.p     // Catch:{ all -> 0x0009 }
            r4 = 32000(0x7d00, float:4.4842E-41)
            r3.<init>((int) r4)     // Catch:{ all -> 0x0009 }
            throw r3     // Catch:{ all -> 0x0009 }
        L_0x0020:
            monitor-exit(r0)     // Catch:{ all -> 0x0009 }
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.eclipse.paho.android.service.g.waitForCompletion(long):void");
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        synchronized (this.e) {
            this.c = true;
            this.e.notifyAll();
            if (this.f8843b != null) {
                this.f8843b.onSuccess(this);
            }
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(Throwable th) {
        synchronized (this.e) {
            this.c = true;
            if (th instanceof p) {
                this.i = (p) th;
            } else {
                this.i = new p(th);
            }
            this.e.notifyAll();
            if (th instanceof p) {
                this.d = (p) th;
            }
            if (this.f8843b != null) {
                this.f8843b.onFailure(this, th);
            }
        }
    }

    public boolean isComplete() {
        return this.c;
    }

    public p getException() {
        return this.d;
    }

    public d getClient() {
        return this.f;
    }

    public void setActionCallback(c cVar) {
        this.f8843b = cVar;
    }

    public c getActionCallback() {
        return this.f8843b;
    }

    public String[] getTopics() {
        return this.h;
    }

    public void setUserContext(Object obj) {
        this.g = obj;
    }

    public Object getUserContext() {
        return this.g;
    }

    public int getMessageId() {
        h hVar = this.f8842a;
        if (hVar != null) {
            return hVar.getMessageId();
        }
        return 0;
    }

    public u getResponse() {
        return this.f8842a.getResponse();
    }

    public boolean getSessionPresent() {
        return this.f8842a.getSessionPresent();
    }

    public int[] getGrantedQos() {
        return this.f8842a.getGrantedQos();
    }
}
