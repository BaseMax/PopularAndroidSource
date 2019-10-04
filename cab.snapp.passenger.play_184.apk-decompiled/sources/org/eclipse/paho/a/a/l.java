package org.eclipse.paho.a.a;

import java.util.concurrent.ScheduledExecutorService;
import org.eclipse.paho.a.a.c.b;
import org.eclipse.paho.a.a.e.a;

public final class l implements e {

    /* renamed from: a  reason: collision with root package name */
    protected i f8793a;

    /* renamed from: b  reason: collision with root package name */
    protected long f8794b;

    public l(String str, String str2) throws p {
        this(str, str2, new b());
    }

    public l(String str, String str2, m mVar) throws p {
        this.f8793a = null;
        this.f8794b = -1;
        this.f8793a = new i(str, str2, mVar);
    }

    public l(String str, String str2, m mVar, ScheduledExecutorService scheduledExecutorService) throws p {
        this.f8793a = null;
        this.f8794b = -1;
        i iVar = new i(str, str2, mVar, new x(scheduledExecutorService), scheduledExecutorService);
        this.f8793a = iVar;
    }

    public final void connect() throws u, p {
        connect(new n());
    }

    public final void connect(n nVar) throws u, p {
        this.f8793a.connect(nVar, null, null).waitForCompletion(getTimeToWait());
    }

    public final h connectWithResult(n nVar) throws u, p {
        h connect = this.f8793a.connect(nVar, null, null);
        connect.waitForCompletion(getTimeToWait());
        return connect;
    }

    public final void disconnect() throws p {
        this.f8793a.disconnect().waitForCompletion();
    }

    public final void disconnect(long j) throws p {
        this.f8793a.disconnect(j, null, null).waitForCompletion();
    }

    public final void disconnectForcibly() throws p {
        this.f8793a.disconnectForcibly();
    }

    public final void disconnectForcibly(long j) throws p {
        this.f8793a.disconnectForcibly(j);
    }

    public final void disconnectForcibly(long j, long j2) throws p {
        this.f8793a.disconnectForcibly(j, j2);
    }

    public final void disconnectForcibly(long j, long j2, boolean z) throws p {
        this.f8793a.disconnectForcibly(j, j2, z);
    }

    public final void subscribe(String str) throws p {
        subscribe(new String[]{str}, new int[]{1});
    }

    public final void subscribe(String[] strArr) throws p {
        int[] iArr = new int[strArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 1;
        }
        subscribe(strArr, iArr);
    }

    public final void subscribe(String str, int i) throws p {
        subscribe(new String[]{str}, new int[]{i});
    }

    public final void subscribe(String[] strArr, int[] iArr) throws p {
        subscribe(strArr, iArr, (g[]) null);
    }

    public final void subscribe(String str, g gVar) throws p {
        subscribe(new String[]{str}, new int[]{1}, new g[]{gVar});
    }

    public final void subscribe(String[] strArr, g[] gVarArr) throws p {
        int[] iArr = new int[strArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 1;
        }
        subscribe(strArr, iArr, gVarArr);
    }

    public final void subscribe(String str, int i, g gVar) throws p {
        subscribe(new String[]{str}, new int[]{i}, new g[]{gVar});
    }

    public final void subscribe(String[] strArr, int[] iArr, g[] gVarArr) throws p {
        h subscribe = this.f8793a.subscribe(strArr, iArr, (Object) null, (c) null, gVarArr);
        subscribe.waitForCompletion(getTimeToWait());
        int[] grantedQos = subscribe.getGrantedQos();
        for (int i = 0; i < grantedQos.length; i++) {
            iArr[i] = grantedQos[i];
        }
        if (grantedQos.length == 1 && iArr[0] == 128) {
            throw new p(128);
        }
    }

    public final h subscribeWithResponse(String str) throws p {
        return subscribeWithResponse(new String[]{str}, new int[]{1});
    }

    public final h subscribeWithResponse(String str, g gVar) throws p {
        return subscribeWithResponse(new String[]{str}, new int[]{1}, new g[]{gVar});
    }

    public final h subscribeWithResponse(String str, int i) throws p {
        return subscribeWithResponse(new String[]{str}, new int[]{i});
    }

    public final h subscribeWithResponse(String str, int i, g gVar) throws p {
        return subscribeWithResponse(new String[]{str}, new int[]{i}, new g[]{gVar});
    }

    public final h subscribeWithResponse(String[] strArr) throws p {
        int[] iArr = new int[strArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 1;
        }
        return subscribeWithResponse(strArr, iArr);
    }

    public final h subscribeWithResponse(String[] strArr, g[] gVarArr) throws p {
        int[] iArr = new int[strArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = 1;
        }
        return subscribeWithResponse(strArr, iArr, gVarArr);
    }

    public final h subscribeWithResponse(String[] strArr, int[] iArr) throws p {
        return subscribeWithResponse(strArr, iArr, (g[]) null);
    }

    public final h subscribeWithResponse(String[] strArr, int[] iArr, g[] gVarArr) throws p {
        h subscribe = this.f8793a.subscribe(strArr, iArr, (Object) null, (c) null, gVarArr);
        subscribe.waitForCompletion(getTimeToWait());
        return subscribe;
    }

    public final void unsubscribe(String str) throws p {
        unsubscribe(new String[]{str});
    }

    public final void unsubscribe(String[] strArr) throws p {
        this.f8793a.unsubscribe(strArr, (Object) null, (c) null).waitForCompletion(getTimeToWait());
    }

    public final void publish(String str, byte[] bArr, int i, boolean z) throws p, s {
        q qVar = new q(bArr);
        qVar.setQos(i);
        qVar.setRetained(z);
        publish(str, qVar);
    }

    public final void publish(String str, q qVar) throws p, s {
        this.f8793a.publish(str, qVar, (Object) null, (c) null).waitForCompletion(getTimeToWait());
    }

    public final void setTimeToWait(long j) throws IllegalArgumentException {
        if (j >= -1) {
            this.f8794b = j;
            return;
        }
        throw new IllegalArgumentException();
    }

    public final long getTimeToWait() {
        return this.f8794b;
    }

    public final void close() throws p {
        this.f8793a.close(false);
    }

    public final void close(boolean z) throws p {
        this.f8793a.close(z);
    }

    public final String getClientId() {
        return this.f8793a.getClientId();
    }

    public final f[] getPendingDeliveryTokens() {
        return this.f8793a.getPendingDeliveryTokens();
    }

    public final String getServerURI() {
        return this.f8793a.getServerURI();
    }

    public final String getCurrentServerURI() {
        return this.f8793a.getCurrentServerURI();
    }

    public final w getTopic(String str) {
        return this.f8793a.a(str);
    }

    public final boolean isConnected() {
        return this.f8793a.isConnected();
    }

    public final void setCallback(j jVar) {
        this.f8793a.setCallback(jVar);
    }

    public final void setManualAcks(boolean z) {
        this.f8793a.setManualAcks(z);
    }

    public final void messageArrivedComplete(int i, int i2) throws p {
        this.f8793a.messageArrivedComplete(i, i2);
    }

    public static String generateClientId() {
        return i.generateClientId();
    }

    public final void reconnect() throws p {
        this.f8793a.reconnect();
    }

    public final a getDebug() {
        return this.f8793a.getDebug();
    }
}
