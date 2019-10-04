package org.eclipse.paho.android.service;

import android.os.Bundle;
import android.os.PowerManager;
import android.util.Log;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.paho.a.a.b;
import org.eclipse.paho.a.a.c;
import org.eclipse.paho.a.a.f;
import org.eclipse.paho.a.a.g;
import org.eclipse.paho.a.a.h;
import org.eclipse.paho.a.a.i;
import org.eclipse.paho.a.a.k;
import org.eclipse.paho.a.a.m;
import org.eclipse.paho.a.a.n;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.q;
import org.eclipse.paho.a.a.s;
import org.eclipse.paho.android.service.c;

final class d implements k {

    /* renamed from: a  reason: collision with root package name */
    n f8831a;

    /* renamed from: b  reason: collision with root package name */
    String f8832b;
    i c = null;
    MqttService d = null;
    volatile boolean e = true;
    boolean f = true;
    private String g;
    private String h;
    private m i = null;
    private String j = null;
    private a k = null;
    private volatile boolean l = false;
    private Map<f, String> m = new HashMap();
    private Map<f, q> n = new HashMap();
    private Map<f, String> o = new HashMap();
    private Map<f, String> p = new HashMap();
    private PowerManager.WakeLock q = null;
    private String r = null;
    private b s = null;

    class a implements c {

        /* renamed from: a  reason: collision with root package name */
        private final Bundle f8838a;

        /* synthetic */ a(d dVar, Bundle bundle, byte b2) {
            this(bundle);
        }

        private a(Bundle bundle) {
            this.f8838a = bundle;
        }

        public void onSuccess(h hVar) {
            d.this.d.a(d.this.f8832b, i.OK, this.f8838a);
        }

        public void onFailure(h hVar, Throwable th) {
            this.f8838a.putString("MqttService.errorMessage", th.getLocalizedMessage());
            this.f8838a.putSerializable("MqttService.exception", th);
            d.this.d.a(d.this.f8832b, i.ERROR, this.f8838a);
        }
    }

    public final String getServerURI() {
        return this.g;
    }

    public final void setServerURI(String str) {
        this.g = str;
    }

    public final String getClientId() {
        return this.h;
    }

    public final void setClientId(String str) {
        this.h = str;
    }

    public final n getConnectOptions() {
        return this.f8831a;
    }

    public final void setConnectOptions(n nVar) {
        this.f8831a = nVar;
    }

    public final String getClientHandle() {
        return this.f8832b;
    }

    public final void setClientHandle(String str) {
        this.f8832b = str;
    }

    d(MqttService mqttService, String str, String str2, m mVar, String str3) {
        this.g = str;
        this.d = mqttService;
        this.h = str2;
        this.i = mVar;
        this.f8832b = str3;
        this.r = getClass().getCanonicalName() + " " + str2 + " " + "on host " + str;
    }

    public final void connect(n nVar, String str, String str2) {
        this.f8831a = nVar;
        this.j = str2;
        if (nVar != null) {
            this.f = nVar.isCleanSession();
        }
        if (this.f8831a.isCleanSession()) {
            this.d.f8813a.clearArrivedMessages(this.f8832b);
        }
        MqttService mqttService = this.d;
        mqttService.traceDebug("MqttConnection", "Connecting {" + this.g + "} as {" + this.h + "}");
        final Bundle bundle = new Bundle();
        bundle.putString("MqttService.activityToken", str2);
        bundle.putString("MqttService.invocationContext", str);
        bundle.putString("MqttService.callbackAction", "connect");
        try {
            if (this.i == null) {
                File externalFilesDir = this.d.getExternalFilesDir("MqttConnection");
                if (externalFilesDir == null) {
                    externalFilesDir = this.d.getDir("MqttConnection", 0);
                    if (externalFilesDir == null) {
                        bundle.putString("MqttService.errorMessage", "Error! No external and internal storage available");
                        bundle.putSerializable("MqttService.exception", new s());
                        this.d.a(this.f8832b, i.ERROR, bundle);
                        return;
                    }
                }
                this.i = new org.eclipse.paho.a.a.c.b(externalFilesDir.getAbsolutePath());
            }
            AnonymousClass1 r0 = new a(bundle) {
                public final void onSuccess(h hVar) {
                    d.this.a(bundle);
                    d.this.d.traceDebug("MqttConnection", "connect success!");
                }

                public final void onFailure(h hVar, Throwable th) {
                    bundle.putString("MqttService.errorMessage", th.getLocalizedMessage());
                    bundle.putSerializable("MqttService.exception", th);
                    MqttService mqttService = d.this.d;
                    mqttService.traceError("MqttConnection", "connect fail, call connect to reconnect.reason:" + th.getMessage());
                    d.a(d.this, bundle);
                }
            };
            if (this.c == null) {
                this.k = new a(this.d);
                this.c = new i(this.g, this.h, this.i, this.k);
                this.c.setCallback(this);
                this.d.traceDebug("MqttConnection", "Do Real connect!");
                a(true);
                this.c.connect(this.f8831a, str, r0);
            } else if (this.l) {
                this.d.traceDebug("MqttConnection", "myClient != null and the client is connecting. Connect return directly.");
                MqttService mqttService2 = this.d;
                mqttService2.traceDebug("MqttConnection", "Connect return:isConnecting:" + this.l + ".disconnected:" + this.e);
            } else if (!this.e) {
                this.d.traceDebug("MqttConnection", "myClient != null and the client is connected and notify!");
                a(bundle);
            } else {
                this.d.traceDebug("MqttConnection", "myClient != null and the client is not connected");
                this.d.traceDebug("MqttConnection", "Do Real connect!");
                a(true);
                this.c.connect(this.f8831a, str, r0);
            }
        } catch (Exception e2) {
            MqttService mqttService3 = this.d;
            mqttService3.traceError("MqttConnection", "Exception occurred attempting to connect: " + e2.getMessage());
            a(false);
            a(bundle, e2);
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(Bundle bundle) {
        d();
        this.d.a(this.f8832b, i.OK, bundle);
        c();
        a(false);
        this.e = false;
        a();
    }

    public final void connectComplete(boolean z, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "connectExtended");
        bundle.putBoolean("MqttService.reconnect", z);
        bundle.putString("MqttService.serverURI", str);
        this.d.a(this.f8832b, i.OK, bundle);
    }

    /* access modifiers changed from: package-private */
    public final void a(Bundle bundle, Exception exc) {
        bundle.putString("MqttService.errorMessage", exc.getLocalizedMessage());
        bundle.putSerializable("MqttService.exception", exc);
        this.d.a(this.f8832b, i.ERROR, bundle);
    }

    private void c() {
        Iterator<c.a> allArrivedMessages = this.d.f8813a.getAllArrivedMessages(this.f8832b);
        while (allArrivedMessages.hasNext()) {
            c.a next = allArrivedMessages.next();
            Bundle a2 = a(next.getMessageId(), next.getTopic(), next.getMessage());
            a2.putString("MqttService.callbackAction", "messageArrived");
            this.d.a(this.f8832b, i.OK, a2);
        }
    }

    private static Bundle a(String str, String str2, q qVar) {
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.messageId", str);
        bundle.putString("MqttService.destinationName", str2);
        bundle.putParcelable("MqttService.PARCEL", new ParcelableMqttMessage(qVar));
        return bundle;
    }

    /* access modifiers changed from: package-private */
    public final void a(String str, String str2) {
        this.d.traceDebug("MqttConnection", "disconnect()");
        this.e = true;
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.activityToken", str2);
        bundle.putString("MqttService.invocationContext", str);
        bundle.putString("MqttService.callbackAction", "disconnect");
        i iVar = this.c;
        if (iVar == null || !iVar.isConnected()) {
            bundle.putString("MqttService.errorMessage", "not connected");
            this.d.traceError("disconnect", "not connected");
            this.d.a(this.f8832b, i.ERROR, bundle);
        } else {
            try {
                this.c.disconnect(str, new a(this, bundle, (byte) 0));
            } catch (Exception e2) {
                a(bundle, e2);
            }
        }
        n nVar = this.f8831a;
        if (nVar != null && nVar.isCleanSession()) {
            this.d.f8813a.clearArrivedMessages(this.f8832b);
        }
        a();
    }

    public final boolean isConnected() {
        i iVar = this.c;
        return iVar != null && iVar.isConnected();
    }

    public final f publish(String str, byte[] bArr, int i2, boolean z, String str2, String str3) {
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "send");
        bundle.putString("MqttService.activityToken", str3);
        bundle.putString("MqttService.invocationContext", str2);
        i iVar = this.c;
        f fVar = null;
        if (iVar == null || !iVar.isConnected()) {
            bundle.putString("MqttService.errorMessage", "not connected");
            this.d.traceError("send", "not connected");
            this.d.a(this.f8832b, i.ERROR, bundle);
            return null;
        }
        a aVar = new a(this, bundle, (byte) 0);
        try {
            q qVar = new q(bArr);
            qVar.setQos(i2);
            qVar.setRetained(z);
            f publish = this.c.publish(str, bArr, i2, z, str2, aVar);
            try {
                a(str, qVar, publish, str2, str3);
                return publish;
            } catch (Exception e2) {
                e = e2;
                fVar = publish;
                a(bundle, e);
                return fVar;
            }
        } catch (Exception e3) {
            e = e3;
            a(bundle, e);
            return fVar;
        }
    }

    public final f publish(String str, q qVar, String str2, String str3) {
        f publish;
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "send");
        bundle.putString("MqttService.activityToken", str3);
        bundle.putString("MqttService.invocationContext", str2);
        i iVar = this.c;
        f fVar = null;
        if (iVar == null || !iVar.isConnected()) {
            if (this.c != null) {
                b bVar = this.s;
                if (bVar != null && bVar.isBufferEnabled()) {
                    try {
                        publish = this.c.publish(str, qVar, (Object) str2, (org.eclipse.paho.a.a.c) new a(this, bundle, (byte) 0));
                        try {
                            a(str, qVar, publish, str2, str3);
                        } catch (Exception e2) {
                            e = e2;
                            fVar = publish;
                        }
                    } catch (Exception e3) {
                        e = e3;
                        a(bundle, e);
                        return fVar;
                    }
                }
            }
            bundle.putString("MqttService.errorMessage", "not connected");
            this.d.traceError("send", "not connected");
            this.d.a(this.f8832b, i.ERROR, bundle);
            return null;
        }
        try {
            publish = this.c.publish(str, qVar, (Object) str2, (org.eclipse.paho.a.a.c) new a(this, bundle, (byte) 0));
            try {
                a(str, qVar, publish, str2, str3);
            } catch (Exception e4) {
                e = e4;
                fVar = publish;
                a(bundle, e);
                return fVar;
            }
        } catch (Exception e5) {
            e = e5;
            a(bundle, e);
            return fVar;
        }
        return publish;
    }

    public final void subscribe(String str, int i2, String str2, String str3) {
        MqttService mqttService = this.d;
        mqttService.traceDebug("MqttConnection", "subscribe({" + str + "}," + i2 + ",{" + str2 + "}, {" + str3 + "}");
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "subscribe");
        bundle.putString("MqttService.activityToken", str3);
        bundle.putString("MqttService.invocationContext", str2);
        i iVar = this.c;
        if (iVar == null || !iVar.isConnected()) {
            bundle.putString("MqttService.errorMessage", "not connected");
            this.d.traceError("subscribe", "not connected");
            this.d.a(this.f8832b, i.ERROR, bundle);
            return;
        }
        try {
            this.c.subscribe(str, i2, (Object) str2, (org.eclipse.paho.a.a.c) new a(this, bundle, (byte) 0));
        } catch (Exception e2) {
            a(bundle, e2);
        }
    }

    public final void subscribe(String[] strArr, int[] iArr, String str, String str2) {
        MqttService mqttService = this.d;
        mqttService.traceDebug("MqttConnection", "subscribe({" + Arrays.toString(strArr) + "}," + Arrays.toString(iArr) + ",{" + str + "}, {" + str2 + "}");
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "subscribe");
        bundle.putString("MqttService.activityToken", str2);
        bundle.putString("MqttService.invocationContext", str);
        i iVar = this.c;
        if (iVar == null || !iVar.isConnected()) {
            bundle.putString("MqttService.errorMessage", "not connected");
            this.d.traceError("subscribe", "not connected");
            this.d.a(this.f8832b, i.ERROR, bundle);
            return;
        }
        try {
            this.c.subscribe(strArr, iArr, (Object) str, (org.eclipse.paho.a.a.c) new a(this, bundle, (byte) 0));
        } catch (Exception e2) {
            a(bundle, e2);
        }
    }

    public final void subscribe(String[] strArr, int[] iArr, String str, String str2, g[] gVarArr) {
        MqttService mqttService = this.d;
        mqttService.traceDebug("MqttConnection", "subscribe({" + Arrays.toString(strArr) + "}," + Arrays.toString(iArr) + ",{" + str + "}, {" + str2 + "}");
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "subscribe");
        bundle.putString("MqttService.activityToken", str2);
        bundle.putString("MqttService.invocationContext", str);
        i iVar = this.c;
        if (iVar == null || !iVar.isConnected()) {
            bundle.putString("MqttService.errorMessage", "not connected");
            this.d.traceError("subscribe", "not connected");
            this.d.a(this.f8832b, i.ERROR, bundle);
            return;
        }
        new a(this, bundle, (byte) 0);
        try {
            this.c.subscribe(strArr, iArr, gVarArr);
        } catch (Exception e2) {
            a(bundle, e2);
        }
    }

    public final f[] getPendingDeliveryTokens() {
        return this.c.getPendingDeliveryTokens();
    }

    public final void connectionLost(Throwable th) {
        MqttService mqttService = this.d;
        mqttService.traceDebug("MqttConnection", "connectionLost(" + th.getMessage() + ")");
        this.e = true;
        try {
            if (!this.f8831a.isAutomaticReconnect()) {
                this.c.disconnect(null, new org.eclipse.paho.a.a.c() {
                    public final void onFailure(h hVar, Throwable th) {
                    }

                    public final void onSuccess(h hVar) {
                    }
                });
            } else {
                this.k.schedule(100);
            }
        } catch (Exception unused) {
        }
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "onConnectionLost");
        if (th != null) {
            bundle.putString("MqttService.errorMessage", th.getMessage());
            if (th instanceof p) {
                bundle.putSerializable("MqttService.exception", th);
            }
            bundle.putString("MqttService.exceptionStack", Log.getStackTraceString(th));
        }
        this.d.a(this.f8832b, i.OK, bundle);
        a();
    }

    public final void deliveryComplete(f fVar) {
        MqttService mqttService = this.d;
        mqttService.traceDebug("MqttConnection", "deliveryComplete(" + fVar + ")");
        q remove = this.n.remove(fVar);
        if (remove != null) {
            String remove2 = this.o.remove(fVar);
            String remove3 = this.p.remove(fVar);
            Bundle a2 = a(null, this.m.remove(fVar), remove);
            if (remove2 != null) {
                a2.putString("MqttService.callbackAction", "send");
                a2.putString("MqttService.activityToken", remove2);
                a2.putString("MqttService.invocationContext", remove3);
                this.d.a(this.f8832b, i.OK, a2);
            }
            a2.putString("MqttService.callbackAction", "messageDelivered");
            this.d.a(this.f8832b, i.OK, a2);
        }
    }

    public final void messageArrived(String str, q qVar) throws Exception {
        MqttService mqttService = this.d;
        mqttService.traceDebug("MqttConnection", "messageArrived(" + str + ",{" + qVar.toString() + "})");
        String storeArrived = this.d.f8813a.storeArrived(this.f8832b, str, qVar);
        Bundle a2 = a(storeArrived, str, qVar);
        a2.putString("MqttService.callbackAction", "messageArrived");
        a2.putString("MqttService.messageId", storeArrived);
        this.d.a(this.f8832b, i.OK, a2);
    }

    private void a(String str, q qVar, f fVar, String str2, String str3) {
        this.m.put(fVar, str);
        this.n.put(fVar, qVar);
        this.o.put(fVar, str3);
        this.p.put(fVar, str2);
    }

    private void d() {
        if (this.q == null) {
            this.q = ((PowerManager) this.d.getSystemService("power")).newWakeLock(1, this.r);
        }
        this.q.acquire();
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        PowerManager.WakeLock wakeLock = this.q;
        if (wakeLock != null && wakeLock.isHeld()) {
            this.q.release();
        }
    }

    /* access modifiers changed from: package-private */
    public final synchronized void b() {
        if (this.c == null) {
            this.d.traceError("MqttConnection", "Reconnect myClient = null. Will not do reconnect");
        } else if (this.l) {
            this.d.traceDebug("MqttConnection", "The client is connecting. Reconnect return directly.");
        } else if (!this.d.isOnline()) {
            this.d.traceDebug("MqttConnection", "The network is not reachable. Will not do reconnect");
        } else if (this.f8831a.isAutomaticReconnect()) {
            Bundle bundle = new Bundle();
            bundle.putString("MqttService.activityToken", this.j);
            bundle.putString("MqttService.invocationContext", null);
            bundle.putString("MqttService.callbackAction", "connect");
            try {
                this.c.reconnect();
            } catch (p e2) {
                new StringBuilder("Exception occurred attempting to reconnect: ").append(e2.getMessage());
                a(false);
                a(bundle, (Exception) e2);
            }
        } else if (this.e && !this.f) {
            this.d.traceDebug("MqttConnection", "Do Real Reconnect!");
            final Bundle bundle2 = new Bundle();
            bundle2.putString("MqttService.activityToken", this.j);
            bundle2.putString("MqttService.invocationContext", null);
            bundle2.putString("MqttService.callbackAction", "connect");
            try {
                this.c.connect(this.f8831a, null, new a(bundle2) {
                    public final void onSuccess(h hVar) {
                        d.this.d.traceDebug("MqttConnection", "Reconnect Success!");
                        d.this.d.traceDebug("MqttConnection", "DeliverBacklog when reconnect.");
                        d.this.a(bundle2);
                    }

                    public final void onFailure(h hVar, Throwable th) {
                        bundle2.putString("MqttService.errorMessage", th.getLocalizedMessage());
                        bundle2.putSerializable("MqttService.exception", th);
                        d.this.d.a(d.this.f8832b, i.ERROR, bundle2);
                        d.a(d.this, bundle2);
                    }
                });
                a(true);
            } catch (p e3) {
                MqttService mqttService = this.d;
                mqttService.traceError("MqttConnection", "Cannot reconnect to remote server." + e3.getMessage());
                a(false);
                a(bundle2, (Exception) e3);
            } catch (Exception e4) {
                MqttService mqttService2 = this.d;
                mqttService2.traceError("MqttConnection", "Cannot reconnect to remote server." + e4.getMessage());
                a(false);
                a(bundle2, (Exception) new p(6, e4.getCause()));
            }
        }
    }

    private synchronized void a(boolean z) {
        this.l = z;
    }

    public final void setBufferOpts(b bVar) {
        this.s = bVar;
        this.c.setBufferOpts(bVar);
    }

    public final int getBufferedMessageCount() {
        return this.c.getBufferedMessageCount();
    }

    public final q getBufferedMessage(int i2) {
        return this.c.getBufferedMessage(i2);
    }

    public final void deleteBufferedMessage(int i2) {
        this.c.deleteBufferedMessage(i2);
    }

    static /* synthetic */ void a(d dVar, Bundle bundle) {
        dVar.d();
        dVar.e = true;
        dVar.a(false);
        dVar.d.a(dVar.f8832b, i.ERROR, bundle);
        dVar.a();
    }
}
