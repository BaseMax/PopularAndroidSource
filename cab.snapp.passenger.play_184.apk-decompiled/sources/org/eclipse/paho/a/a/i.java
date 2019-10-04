package org.eclipse.paho.a.a;

import com.koushikdutta.ion.bitmap.IonBitmapCache;
import java.util.Hashtable;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ScheduledExecutorService;
import org.eclipse.paho.a.a.a.a.e;
import org.eclipse.paho.a.a.a.a.r;
import org.eclipse.paho.a.a.a.a.t;
import org.eclipse.paho.a.a.a.g;
import org.eclipse.paho.a.a.a.h;
import org.eclipse.paho.a.a.a.n;
import org.eclipse.paho.a.a.a.o;

public class i implements d {
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public static final String f8786b = i.class.getName();
    /* access modifiers changed from: private */
    public static int l = 1000;
    /* access modifiers changed from: private */
    public static Object n = new Object();

    /* renamed from: a  reason: collision with root package name */
    protected org.eclipse.paho.a.a.a.a f8787a;
    /* access modifiers changed from: private */
    public org.eclipse.paho.a.a.b.b c;
    /* access modifiers changed from: private */
    public String d;
    private String e;
    private Hashtable f;
    private m g;
    private j h;
    /* access modifiers changed from: private */
    public n i;
    private Object j;
    /* access modifiers changed from: private */
    public Timer k;
    /* access modifiers changed from: private */
    public boolean m;
    private ScheduledExecutorService o;

    class a implements c {

        /* renamed from: a  reason: collision with root package name */
        final String f8788a;

        a(String str) {
            this.f8788a = str;
        }

        public final void onSuccess(h hVar) {
            i.this.c.fine(i.f8786b, this.f8788a, "501", new Object[]{hVar.getClient().getClientId()});
            i.this.f8787a.setRestingState(false);
            i.this.e();
        }

        public final void onFailure(h hVar, Throwable th) {
            i.this.c.fine(i.f8786b, this.f8788a, "502", new Object[]{hVar.getClient().getClientId()});
            if (i.l < i.this.i.getMaxReconnectDelay()) {
                i.l = i.l * 2;
            }
            int b2 = i.l;
            i.this.c.fine(i.f8786b, String.valueOf(this.f8788a) + ":rescheduleReconnectCycle", "505", new Object[]{i.this.d, String.valueOf(i.l)});
            synchronized (i.n) {
                if (i.this.i.isAutomaticReconnect()) {
                    if (i.this.k != null) {
                        i.this.k.schedule(new c(i.this, (byte) 0), (long) b2);
                    } else {
                        i.l = b2;
                        i.d(i.this);
                    }
                }
            }
        }
    }

    class b implements k {

        /* renamed from: a  reason: collision with root package name */
        final boolean f8790a;

        public final void connectComplete(boolean z, String str) {
        }

        public final void deliveryComplete(f fVar) {
        }

        public final void messageArrived(String str, q qVar) throws Exception {
        }

        b(boolean z) {
            this.f8790a = z;
        }

        public final void connectionLost(Throwable th) {
            if (this.f8790a) {
                i.this.f8787a.setRestingState(true);
                i.this.m = true;
                i.d(i.this);
            }
        }
    }

    class c extends TimerTask {
        private c() {
        }

        /* synthetic */ c(i iVar, byte b2) {
            this();
        }

        public final void run() {
            i.this.c.fine(i.f8786b, "ReconnectTask.run", "506");
            i.this.d();
        }
    }

    public i(String str, String str2) throws p {
        this(str, str2, new org.eclipse.paho.a.a.c.b());
    }

    public i(String str, String str2, m mVar) throws p {
        this(str, str2, mVar, new y());
    }

    public i(String str, String str2, m mVar, t tVar) throws p {
        this(str, str2, mVar, tVar, null);
    }

    public i(String str, String str2, m mVar, t tVar, ScheduledExecutorService scheduledExecutorService) throws p {
        this.c = org.eclipse.paho.a.a.b.c.getLogger(org.eclipse.paho.a.a.b.c.MQTT_CLIENT_MSG_CAT, f8786b);
        this.m = false;
        this.c.setResourceName(str2);
        if (str2 != null) {
            int i2 = 0;
            int i3 = 0;
            while (i2 < str2.length() - 1) {
                char charAt = str2.charAt(i2);
                if (charAt >= 55296 && charAt <= 56319) {
                    i2++;
                }
                i3++;
                i2++;
            }
            if (i3 <= 65535) {
                o.validateURI(str);
                this.e = str;
                this.d = str2;
                this.g = mVar;
                if (this.g == null) {
                    this.g = new org.eclipse.paho.a.a.c.a();
                }
                this.o = scheduledExecutorService;
                this.c.fine(f8786b, "MqttAsyncClient", "101", new Object[]{str2, str, mVar});
                this.g.open(str2, str);
                this.f8787a = new org.eclipse.paho.a.a.a.a(this, this.g, tVar, this.o);
                this.g.close();
                this.f = new Hashtable();
                return;
            }
            throw new IllegalArgumentException("ClientId longer than 65535 characters");
        }
        throw new IllegalArgumentException("Null clientId");
    }

    private n[] a(String str, n nVar) throws p, u {
        this.c.fine(f8786b, "createNetworkModules", "116", new Object[]{str});
        String[] serverURIs = nVar.getServerURIs();
        if (serverURIs == null) {
            serverURIs = new String[]{str};
        } else if (serverURIs.length == 0) {
            serverURIs = new String[]{str};
        }
        n[] nVarArr = new n[serverURIs.length];
        for (int i2 = 0; i2 < serverURIs.length; i2++) {
            String str2 = serverURIs[i2];
            this.c.fine(f8786b, "createNetworkModule", "115", new Object[]{str2});
            nVarArr[i2] = o.createInstance(str2, nVar, this.d);
        }
        this.c.fine(f8786b, "createNetworkModules", "108");
        return nVarArr;
    }

    public h connect(Object obj, c cVar) throws p, u {
        return connect(new n(), obj, cVar);
    }

    public h connect() throws p, u {
        return connect(null, null);
    }

    public h connect(n nVar) throws p, u {
        return connect(nVar, null, null);
    }

    public h connect(n nVar, Object obj, c cVar) throws p, u {
        if (this.f8787a.isConnected()) {
            throw org.eclipse.paho.a.a.a.i.createMqttException(32100);
        } else if (this.f8787a.isConnecting()) {
            throw new p(32110);
        } else if (this.f8787a.isDisconnecting()) {
            throw new p(32102);
        } else if (!this.f8787a.isClosed()) {
            if (nVar == null) {
                nVar = new n();
            }
            n nVar2 = nVar;
            this.i = nVar2;
            this.j = obj;
            boolean isAutomaticReconnect = nVar2.isAutomaticReconnect();
            org.eclipse.paho.a.a.b.b bVar = this.c;
            String str = f8786b;
            Object[] objArr = new Object[8];
            objArr[0] = Boolean.valueOf(nVar2.isCleanSession());
            objArr[1] = new Integer(nVar2.getConnectionTimeout());
            objArr[2] = Integer.valueOf(nVar2.getKeepAliveInterval());
            objArr[3] = nVar2.getUserName();
            String str2 = "[null]";
            objArr[4] = nVar2.getPassword() == null ? str2 : "[notnull]";
            if (nVar2.getWillMessage() != null) {
                str2 = "[notnull]";
            }
            objArr[5] = str2;
            objArr[6] = obj;
            objArr[7] = cVar;
            bVar.fine(str, "connect", "103", objArr);
            this.f8787a.setNetworkModules(a(this.e, nVar2));
            this.f8787a.setReconnectCallback(new b(isAutomaticReconnect));
            v vVar = new v(getClientId());
            g gVar = new g(this, this.g, this.f8787a, nVar2, vVar, obj, cVar, this.m);
            vVar.setActionCallback(gVar);
            vVar.setUserContext(this);
            j jVar = this.h;
            if (jVar instanceof k) {
                gVar.setMqttCallbackExtended((k) jVar);
            }
            this.f8787a.setNetworkModuleIndex(0);
            gVar.connect();
            return vVar;
        } else {
            throw new p(32111);
        }
    }

    public h disconnect(Object obj, c cVar) throws p {
        return disconnect(IonBitmapCache.DEFAULT_ERROR_CACHE_DURATION, obj, cVar);
    }

    public h disconnect() throws p {
        return disconnect(null, null);
    }

    public h disconnect(long j2) throws p {
        return disconnect(j2, null, null);
    }

    public h disconnect(long j2, Object obj, c cVar) throws p {
        this.c.fine(f8786b, "disconnect", "104", new Object[]{Long.valueOf(j2), obj, cVar});
        v vVar = new v(getClientId());
        vVar.setActionCallback(cVar);
        vVar.setUserContext(obj);
        try {
            this.f8787a.disconnect(new e(), j2, vVar);
            this.c.fine(f8786b, "disconnect", "108");
            return vVar;
        } catch (p e2) {
            this.c.fine(f8786b, "disconnect", "105", null, e2);
            throw e2;
        }
    }

    public void disconnectForcibly() throws p {
        disconnectForcibly(IonBitmapCache.DEFAULT_ERROR_CACHE_DURATION, 10000);
    }

    public void disconnectForcibly(long j2) throws p {
        disconnectForcibly(IonBitmapCache.DEFAULT_ERROR_CACHE_DURATION, j2);
    }

    public void disconnectForcibly(long j2, long j3) throws p {
        this.f8787a.disconnectForcibly(j2, j3);
    }

    public void disconnectForcibly(long j2, long j3, boolean z) throws p {
        this.f8787a.disconnectForcibly(j2, j3, z);
    }

    public boolean isConnected() {
        return this.f8787a.isConnected();
    }

    public String getClientId() {
        return this.d;
    }

    public String getServerURI() {
        return this.e;
    }

    public String getCurrentServerURI() {
        return this.f8787a.getNetworkModules()[this.f8787a.getNetworkModuleIndex()].getServerURI();
    }

    /* access modifiers changed from: protected */
    public final w a(String str) {
        w.validate(str, false);
        w wVar = (w) this.f.get(str);
        if (wVar != null) {
            return wVar;
        }
        w wVar2 = new w(str, this.f8787a);
        this.f.put(str, wVar2);
        return wVar2;
    }

    public h checkPing(Object obj, c cVar) throws p {
        this.c.fine(f8786b, "ping", "117");
        v checkForActivity = this.f8787a.checkForActivity(cVar);
        this.c.fine(f8786b, "ping", "118");
        return checkForActivity;
    }

    public h subscribe(String str, int i2, Object obj, c cVar) throws p {
        return subscribe(new String[]{str}, new int[]{i2}, obj, cVar);
    }

    public h subscribe(String str, int i2) throws p {
        return subscribe(new String[]{str}, new int[]{i2}, (Object) null, (c) null);
    }

    public h subscribe(String[] strArr, int[] iArr) throws p {
        return subscribe(strArr, iArr, (Object) null, (c) null);
    }

    public h subscribe(String[] strArr, int[] iArr, Object obj, c cVar) throws p {
        if (strArr.length == iArr.length) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                w.validate(strArr[i2], true);
                this.f8787a.removeMessageListener(strArr[i2]);
            }
            return a(strArr, iArr, obj, cVar);
        }
        throw new IllegalArgumentException();
    }

    private h a(String[] strArr, int[] iArr, Object obj, c cVar) throws p {
        if (this.c.isLoggable(5)) {
            StringBuffer stringBuffer = new StringBuffer();
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (i2 > 0) {
                    stringBuffer.append(", ");
                }
                stringBuffer.append("topic=");
                stringBuffer.append(strArr[i2]);
                stringBuffer.append(" qos=");
                stringBuffer.append(iArr[i2]);
            }
            this.c.fine(f8786b, "subscribe", "106", new Object[]{stringBuffer.toString(), obj, cVar});
        }
        v vVar = new v(getClientId());
        vVar.setActionCallback(cVar);
        vVar.setUserContext(obj);
        vVar.internalTok.setTopics(strArr);
        this.f8787a.sendNoWait(new r(strArr, iArr), vVar);
        this.c.fine(f8786b, "subscribe", "109");
        return vVar;
    }

    public h subscribe(String str, int i2, Object obj, c cVar, g gVar) throws p {
        return subscribe(new String[]{str}, new int[]{i2}, obj, cVar, new g[]{gVar});
    }

    public h subscribe(String str, int i2, g gVar) throws p {
        return subscribe(new String[]{str}, new int[]{i2}, (Object) null, (c) null, new g[]{gVar});
    }

    public h subscribe(String[] strArr, int[] iArr, g[] gVarArr) throws p {
        return subscribe(strArr, iArr, (Object) null, (c) null, gVarArr);
    }

    public h subscribe(String[] strArr, int[] iArr, Object obj, c cVar, g[] gVarArr) throws p {
        if ((gVarArr == null || gVarArr.length == iArr.length) && iArr.length == strArr.length) {
            for (int i2 = 0; i2 < strArr.length; i2++) {
                w.validate(strArr[i2], true);
                if (gVarArr == null || gVarArr[i2] == null) {
                    this.f8787a.removeMessageListener(strArr[i2]);
                } else {
                    this.f8787a.setMessageListener(strArr[i2], gVarArr[i2]);
                }
            }
            try {
                return a(strArr, iArr, obj, cVar);
            } catch (Exception e2) {
                for (String removeMessageListener : strArr) {
                    this.f8787a.removeMessageListener(removeMessageListener);
                }
                throw e2;
            }
        } else {
            throw new IllegalArgumentException();
        }
    }

    public h unsubscribe(String str, Object obj, c cVar) throws p {
        return unsubscribe(new String[]{str}, obj, cVar);
    }

    public h unsubscribe(String str) throws p {
        return unsubscribe(new String[]{str}, (Object) null, (c) null);
    }

    public h unsubscribe(String[] strArr) throws p {
        return unsubscribe(strArr, (Object) null, (c) null);
    }

    public h unsubscribe(String[] strArr, Object obj, c cVar) throws p {
        if (this.c.isLoggable(5)) {
            String str = "";
            for (int i2 = 0; i2 < strArr.length; i2++) {
                if (i2 > 0) {
                    str = String.valueOf(str) + ", ";
                }
                str = String.valueOf(str) + strArr[i2];
            }
            this.c.fine(f8786b, "unsubscribe", "107", new Object[]{str, obj, cVar});
        }
        for (String validate : strArr) {
            w.validate(validate, true);
        }
        for (String removeMessageListener : strArr) {
            this.f8787a.removeMessageListener(removeMessageListener);
        }
        v vVar = new v(getClientId());
        vVar.setActionCallback(cVar);
        vVar.setUserContext(obj);
        vVar.internalTok.setTopics(strArr);
        this.f8787a.sendNoWait(new t(strArr), vVar);
        this.c.fine(f8786b, "unsubscribe", "110");
        return vVar;
    }

    public boolean removeMessage(f fVar) throws p {
        return this.f8787a.removeMessage(fVar);
    }

    public void setCallback(j jVar) {
        this.h = jVar;
        this.f8787a.setCallback(jVar);
    }

    public void setManualAcks(boolean z) {
        this.f8787a.setManualAcks(z);
    }

    public void messageArrivedComplete(int i2, int i3) throws p {
        this.f8787a.messageArrivedComplete(i2, i3);
    }

    public static String generateClientId() {
        return "paho" + System.nanoTime();
    }

    public f[] getPendingDeliveryTokens() {
        return this.f8787a.getPendingDeliveryTokens();
    }

    public f publish(String str, byte[] bArr, int i2, boolean z, Object obj, c cVar) throws p, s {
        q qVar = new q(bArr);
        qVar.setQos(i2);
        qVar.setRetained(z);
        return publish(str, qVar, obj, cVar);
    }

    public f publish(String str, byte[] bArr, int i2, boolean z) throws p, s {
        return publish(str, bArr, i2, z, null, null);
    }

    public f publish(String str, q qVar) throws p, s {
        return publish(str, qVar, (Object) null, (c) null);
    }

    public f publish(String str, q qVar, Object obj, c cVar) throws p, s {
        this.c.fine(f8786b, "publish", "111", new Object[]{str, obj, cVar});
        w.validate(str, false);
        o oVar = new o(getClientId());
        oVar.setActionCallback(cVar);
        oVar.setUserContext(obj);
        oVar.a(qVar);
        oVar.internalTok.setTopics(new String[]{str});
        this.f8787a.sendNoWait(new org.eclipse.paho.a.a.a.a.o(str, qVar), oVar);
        this.c.fine(f8786b, "publish", "112");
        return oVar;
    }

    public void reconnect() throws p {
        this.c.fine(f8786b, "reconnect", "500", new Object[]{this.d});
        if (this.f8787a.isConnected()) {
            throw org.eclipse.paho.a.a.a.i.createMqttException(32100);
        } else if (this.f8787a.isConnecting()) {
            throw new p(32110);
        } else if (this.f8787a.isDisconnecting()) {
            throw new p(32102);
        } else if (!this.f8787a.isClosed()) {
            e();
            d();
        } else {
            throw new p(32111);
        }
    }

    /* access modifiers changed from: private */
    public void d() {
        this.c.fine(f8786b, "attemptReconnect", "500", new Object[]{this.d});
        try {
            connect(this.i, this.j, new a("attemptReconnect"));
        } catch (u e2) {
            this.c.fine(f8786b, "attemptReconnect", "804", null, e2);
        } catch (p e3) {
            this.c.fine(f8786b, "attemptReconnect", "804", null, e3);
        }
    }

    /* access modifiers changed from: private */
    public void e() {
        this.c.fine(f8786b, "stopReconnectCycle", "504", new Object[]{this.d});
        synchronized (n) {
            if (this.i.isAutomaticReconnect()) {
                if (this.k != null) {
                    this.k.cancel();
                    this.k = null;
                }
                l = 1000;
            }
        }
    }

    public void setBufferOpts(b bVar) {
        this.f8787a.setDisconnectedMessageBuffer(new h(bVar));
    }

    public int getBufferedMessageCount() {
        return this.f8787a.getBufferedMessageCount();
    }

    public q getBufferedMessage(int i2) {
        return this.f8787a.getBufferedMessage(i2);
    }

    public void deleteBufferedMessage(int i2) {
        this.f8787a.deleteBufferedMessage(i2);
    }

    public int getInFlightMessageCount() {
        return this.f8787a.getActualInFlight();
    }

    public void close() throws p {
        close(false);
    }

    public void close(boolean z) throws p {
        this.c.fine(f8786b, "close", "113");
        this.f8787a.close(z);
        this.c.fine(f8786b, "close", "114");
    }

    public org.eclipse.paho.a.a.e.a getDebug() {
        return new org.eclipse.paho.a.a.e.a(this.d, this.f8787a);
    }

    static /* synthetic */ void d(i iVar) {
        iVar.c.fine(f8786b, "startReconnectCycle", "503", new Object[]{iVar.d, Long.valueOf((long) l)});
        iVar.k = new Timer("MQTT Reconnect: " + iVar.d);
        iVar.k.schedule(new c(iVar, (byte) 0), (long) l);
    }
}
