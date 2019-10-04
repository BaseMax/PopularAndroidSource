package org.eclipse.paho.android.service;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.util.SparseArray;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import javax.net.ssl.TrustManagerFactory;
import org.eclipse.paho.a.a.b;
import org.eclipse.paho.a.a.c;
import org.eclipse.paho.a.a.d;
import org.eclipse.paho.a.a.f;
import org.eclipse.paho.a.a.g;
import org.eclipse.paho.a.a.h;
import org.eclipse.paho.a.a.j;
import org.eclipse.paho.a.a.k;
import org.eclipse.paho.a.a.m;
import org.eclipse.paho.a.a.n;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.q;
import org.eclipse.paho.a.a.s;
import org.eclipse.paho.a.a.u;

public final class MqttAndroidClient extends BroadcastReceiver implements d {

    /* renamed from: a  reason: collision with root package name */
    private static final ExecutorService f8809a = Executors.newCachedThreadPool();

    /* renamed from: b  reason: collision with root package name */
    private final a f8810b;
    /* access modifiers changed from: private */
    public MqttService c;
    private String d;
    private Context e;
    private final SparseArray<h> f;
    private int g;
    private final String h;
    private final String i;
    private m j;
    private n k;
    private h l;
    private j m;
    private h n;
    private final Ack o;
    private boolean p;
    /* access modifiers changed from: private */
    public volatile boolean q;
    /* access modifiers changed from: private */
    public volatile boolean r;

    public enum Ack {
        AUTO_ACK,
        MANUAL_ACK
    }

    final class a implements ServiceConnection {
        private a() {
        }

        /* synthetic */ a(MqttAndroidClient mqttAndroidClient, byte b2) {
            this();
        }

        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            MqttService unused = MqttAndroidClient.this.c = ((f) iBinder).getService();
            boolean unused2 = MqttAndroidClient.this.r = true;
            MqttAndroidClient.b(MqttAndroidClient.this);
        }

        public final void onServiceDisconnected(ComponentName componentName) {
            MqttService unused = MqttAndroidClient.this.c = null;
        }
    }

    public MqttAndroidClient(Context context, String str, String str2) {
        this(context, str, str2, null, Ack.AUTO_ACK);
    }

    public MqttAndroidClient(Context context, String str, String str2, Ack ack) {
        this(context, str, str2, null, ack);
    }

    public MqttAndroidClient(Context context, String str, String str2, m mVar) {
        this(context, str, str2, mVar, Ack.AUTO_ACK);
    }

    public MqttAndroidClient(Context context, String str, String str2, m mVar, Ack ack) {
        this.f8810b = new a(this, (byte) 0);
        this.f = new SparseArray<>();
        this.g = 0;
        this.j = null;
        this.p = false;
        this.q = false;
        this.r = false;
        this.e = context;
        this.h = str;
        this.i = str2;
        this.j = mVar;
        this.o = ack;
    }

    public final boolean isConnected() {
        String str = this.d;
        if (str != null) {
            MqttService mqttService = this.c;
            if (mqttService != null && mqttService.isConnected(str)) {
                return true;
            }
        }
        return false;
    }

    public final String getClientId() {
        return this.i;
    }

    public final String getServerURI() {
        return this.h;
    }

    public final void close() {
        MqttService mqttService = this.c;
        if (mqttService != null) {
            if (this.d == null) {
                this.d = mqttService.getClient(this.h, this.i, this.e.getApplicationInfo().packageName, this.j);
            }
            this.c.close(this.d);
        }
    }

    public final h connect() throws p {
        return connect(null, null);
    }

    public final h connect(n nVar) throws p {
        return connect(nVar, null, null);
    }

    public final h connect(Object obj, c cVar) throws p {
        return connect(new n(), obj, cVar);
    }

    public final h connect(n nVar, Object obj, c cVar) throws p {
        g gVar = new g(this, obj, cVar);
        this.k = nVar;
        this.l = gVar;
        if (this.c == null) {
            Intent intent = new Intent();
            intent.setClassName(this.e, "org.eclipse.paho.android.service.MqttService");
            if (this.e.startService(intent) == null) {
                c actionCallback = gVar.getActionCallback();
                if (actionCallback != null) {
                    actionCallback.onFailure(gVar, new RuntimeException("cannot start service org.eclipse.paho.android.service.MqttService"));
                }
            }
            this.e.bindService(intent, this.f8810b, 1);
            if (!this.q) {
                a((BroadcastReceiver) this);
            }
        } else {
            f8809a.execute(new Runnable() {
                public final void run() {
                    MqttAndroidClient.b(MqttAndroidClient.this);
                    if (!MqttAndroidClient.this.q) {
                        MqttAndroidClient mqttAndroidClient = MqttAndroidClient.this;
                        mqttAndroidClient.a((BroadcastReceiver) mqttAndroidClient);
                    }
                }
            });
        }
        return gVar;
    }

    /* access modifiers changed from: private */
    public void a(BroadcastReceiver broadcastReceiver) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("MqttService.callbackToActivity.v0");
        LocalBroadcastManager.getInstance(this.e).registerReceiver(broadcastReceiver, intentFilter);
        this.q = true;
    }

    public final h disconnect() throws p {
        g gVar = new g(this, null, null);
        this.c.disconnect(this.d, null, a((h) gVar));
        return gVar;
    }

    public final h disconnect(long j2) throws p {
        g gVar = new g(this, null, null);
        this.c.disconnect(this.d, j2, null, a((h) gVar));
        return gVar;
    }

    public final h disconnect(Object obj, c cVar) throws p {
        g gVar = new g(this, obj, cVar);
        this.c.disconnect(this.d, null, a((h) gVar));
        return gVar;
    }

    public final h disconnect(long j2, Object obj, c cVar) throws p {
        g gVar = new g(this, obj, cVar);
        this.c.disconnect(this.d, j2, null, a((h) gVar));
        return gVar;
    }

    public final f publish(String str, byte[] bArr, int i2, boolean z) throws p, s {
        return publish(str, bArr, i2, z, null, null);
    }

    public final f publish(String str, q qVar) throws p, s {
        return publish(str, qVar, (Object) null, (c) null);
    }

    public final f publish(String str, byte[] bArr, int i2, boolean z, Object obj, c cVar) throws p, s {
        q qVar = new q(bArr);
        qVar.setQos(i2);
        qVar.setRetained(z);
        e eVar = new e(this, obj, cVar, qVar);
        String a2 = a((h) eVar);
        eVar.f8842a = this.c.publish(this.d, str, bArr, i2, z, null, a2);
        return eVar;
    }

    public final f publish(String str, q qVar, Object obj, c cVar) throws p, s {
        e eVar = new e(this, obj, cVar, qVar);
        eVar.f8842a = this.c.publish(this.d, str, qVar, null, a((h) eVar));
        return eVar;
    }

    public final h subscribe(String str, int i2) throws p, u {
        return subscribe(str, i2, (Object) null, (c) null);
    }

    public final h subscribe(String[] strArr, int[] iArr) throws p, u {
        return subscribe(strArr, iArr, (Object) null, (c) null);
    }

    public final h subscribe(String str, int i2, Object obj, c cVar) throws p {
        g gVar = new g(this, obj, cVar, new String[]{str});
        this.c.subscribe(this.d, str, i2, (String) null, a((h) gVar));
        return gVar;
    }

    public final h subscribe(String[] strArr, int[] iArr, Object obj, c cVar) throws p {
        g gVar = new g(this, obj, cVar, strArr);
        this.c.subscribe(this.d, strArr, iArr, (String) null, a((h) gVar));
        return gVar;
    }

    public final h subscribe(String str, int i2, Object obj, c cVar, g gVar) throws p {
        return subscribe(new String[]{str}, new int[]{i2}, obj, cVar, new g[]{gVar});
    }

    public final h subscribe(String str, int i2, g gVar) throws p {
        return subscribe(str, i2, (Object) null, (c) null, gVar);
    }

    public final h subscribe(String[] strArr, int[] iArr, g[] gVarArr) throws p {
        return subscribe(strArr, iArr, (Object) null, (c) null, gVarArr);
    }

    public final h subscribe(String[] strArr, int[] iArr, Object obj, c cVar, g[] gVarArr) throws p {
        this.c.subscribe(this.d, strArr, iArr, null, a((h) new g(this, obj, cVar, strArr)), gVarArr);
        return null;
    }

    public final h unsubscribe(String str) throws p {
        return unsubscribe(str, (Object) null, (c) null);
    }

    public final h unsubscribe(String[] strArr) throws p {
        return unsubscribe(strArr, (Object) null, (c) null);
    }

    public final h unsubscribe(String str, Object obj, c cVar) throws p {
        g gVar = new g(this, obj, cVar);
        this.c.unsubscribe(this.d, str, (String) null, a((h) gVar));
        return gVar;
    }

    public final h unsubscribe(String[] strArr, Object obj, c cVar) throws p {
        g gVar = new g(this, obj, cVar);
        this.c.unsubscribe(this.d, strArr, (String) null, a((h) gVar));
        return gVar;
    }

    public final f[] getPendingDeliveryTokens() {
        return this.c.getPendingDeliveryTokens(this.d);
    }

    public final void setCallback(j jVar) {
        this.m = jVar;
    }

    public final void setTraceCallback(h hVar) {
        this.n = hVar;
    }

    public final void setTraceEnabled(boolean z) {
        this.p = z;
        MqttService mqttService = this.c;
        if (mqttService != null) {
            mqttService.setTraceEnabled(z);
        }
    }

    public final void onReceive(Context context, Intent intent) {
        Bundle extras = intent.getExtras();
        String string = extras.getString("MqttService.clientHandle");
        if (string != null && string.equals(this.d)) {
            String string2 = extras.getString("MqttService.callbackAction");
            if ("connect".equals(string2)) {
                h hVar = this.l;
                a(extras);
                a(hVar, extras);
            } else if ("connectExtended".equals(string2)) {
                if (this.m instanceof k) {
                    ((k) this.m).connectComplete(extras.getBoolean("MqttService.reconnect", false), extras.getString("MqttService.serverURI"));
                }
            } else if ("messageArrived".equals(string2)) {
                if (this.m != null) {
                    String string3 = extras.getString("MqttService.messageId");
                    String string4 = extras.getString("MqttService.destinationName");
                    ParcelableMqttMessage parcelableMqttMessage = (ParcelableMqttMessage) extras.getParcelable("MqttService.PARCEL");
                    try {
                        if (this.o == Ack.AUTO_ACK) {
                            this.m.messageArrived(string4, parcelableMqttMessage);
                            this.c.acknowledgeMessageArrival(this.d, string3);
                            return;
                        }
                        parcelableMqttMessage.f8817a = string3;
                        this.m.messageArrived(string4, parcelableMqttMessage);
                    } catch (Exception unused) {
                    }
                }
            } else if ("subscribe".equals(string2)) {
                a(a(extras), extras);
            } else if ("unsubscribe".equals(string2)) {
                a(a(extras), extras);
            } else if ("send".equals(string2)) {
                a(b(extras), extras);
            } else if ("messageDelivered".equals(string2)) {
                h a2 = a(extras);
                if (a2 != null && this.m != null && ((i) extras.getSerializable("MqttService.callbackStatus")) == i.OK && (a2 instanceof f)) {
                    this.m.deliveryComplete((f) a2);
                }
            } else if ("onConnectionLost".equals(string2)) {
                if (this.m != null) {
                    this.m.connectionLost((Exception) extras.getSerializable("MqttService.exception"));
                }
            } else if ("disconnect".equals(string2)) {
                this.d = null;
                h a3 = a(extras);
                if (a3 != null) {
                    ((g) a3).a();
                }
                j jVar = this.m;
                if (jVar != null) {
                    jVar.connectionLost(null);
                }
            } else if ("trace".equals(string2)) {
                if (this.n != null) {
                    String string5 = extras.getString("MqttService.traceSeverity");
                    String string6 = extras.getString("MqttService.errorMessage");
                    String string7 = extras.getString("MqttService.traceTag");
                    if ("debug".equals(string5)) {
                        this.n.traceDebug(string7, string6);
                    } else if ("error".equals(string5)) {
                        this.n.traceError(string7, string6);
                    } else {
                        this.n.traceException(string7, string6, (Exception) extras.getSerializable("MqttService.exception"));
                    }
                }
            } else {
                this.c.traceError("MqttService", "Callback action doesn't exist.");
            }
        }
    }

    public final boolean acknowledgeMessage(String str) {
        if (this.o == Ack.MANUAL_ACK && this.c.acknowledgeMessageArrival(this.d, str) == i.OK) {
            return true;
        }
        return false;
    }

    public final void messageArrivedComplete(int i2, int i3) throws p {
        throw new UnsupportedOperationException();
    }

    public final void setManualAcks(boolean z) {
        throw new UnsupportedOperationException();
    }

    private void a(h hVar, Bundle bundle) {
        if (hVar == null) {
            this.c.traceError("MqttService", "simpleAction : token is null");
        } else if (((i) bundle.getSerializable("MqttService.callbackStatus")) == i.OK) {
            ((g) hVar).a();
        } else {
            ((g) hVar).a((Exception) bundle.getSerializable("MqttService.exception"));
        }
    }

    private synchronized String a(h hVar) {
        int i2;
        this.f.put(this.g, hVar);
        i2 = this.g;
        this.g = i2 + 1;
        return Integer.toString(i2);
    }

    private synchronized h a(Bundle bundle) {
        String string = bundle.getString("MqttService.activityToken");
        if (string == null) {
            return null;
        }
        int parseInt = Integer.parseInt(string);
        h hVar = this.f.get(parseInt);
        this.f.delete(parseInt);
        return hVar;
    }

    private synchronized h b(Bundle bundle) {
        return this.f.get(Integer.parseInt(bundle.getString("MqttService.activityToken")));
    }

    public final void setBufferOpts(b bVar) {
        this.c.setBufferOpts(this.d, bVar);
    }

    public final int getBufferedMessageCount() {
        return this.c.getBufferedMessageCount(this.d);
    }

    public final q getBufferedMessage(int i2) {
        return this.c.getBufferedMessage(this.d, i2);
    }

    public final void deleteBufferedMessage(int i2) {
        this.c.deleteBufferedMessage(this.d, i2);
    }

    public final SSLSocketFactory getSSLSocketFactory(InputStream inputStream, String str) throws u {
        try {
            KeyStore instance = KeyStore.getInstance("BKS");
            instance.load(inputStream, str.toCharArray());
            TrustManagerFactory instance2 = TrustManagerFactory.getInstance("X509");
            instance2.init(instance);
            TrustManager[] trustManagers = instance2.getTrustManagers();
            SSLContext instance3 = SSLContext.getInstance("TLSv1");
            instance3.init(null, trustManagers, null);
            return instance3.getSocketFactory();
        } catch (IOException | KeyManagementException | KeyStoreException | NoSuchAlgorithmException | CertificateException e2) {
            throw new u(e2);
        }
    }

    public final void disconnectForcibly() throws p {
        throw new UnsupportedOperationException();
    }

    public final void disconnectForcibly(long j2) throws p {
        throw new UnsupportedOperationException();
    }

    public final void disconnectForcibly(long j2, long j3) throws p {
        throw new UnsupportedOperationException();
    }

    public final void unregisterResources() {
        if (this.e != null && this.q) {
            synchronized (this) {
                LocalBroadcastManager.getInstance(this.e).unregisterReceiver(this);
                this.q = false;
            }
            if (this.r) {
                try {
                    this.e.unbindService(this.f8810b);
                    this.r = false;
                } catch (IllegalArgumentException unused) {
                }
            }
        }
    }

    public final void registerResources(Context context) {
        if (context != null) {
            this.e = context;
            if (!this.q) {
                a((BroadcastReceiver) this);
            }
        }
    }

    static /* synthetic */ void b(MqttAndroidClient mqttAndroidClient) {
        if (mqttAndroidClient.d == null) {
            mqttAndroidClient.d = mqttAndroidClient.c.getClient(mqttAndroidClient.h, mqttAndroidClient.i, mqttAndroidClient.e.getApplicationInfo().packageName, mqttAndroidClient.j);
        }
        mqttAndroidClient.c.setTraceEnabled(mqttAndroidClient.p);
        mqttAndroidClient.c.setTraceCallbackId(mqttAndroidClient.d);
        try {
            mqttAndroidClient.c.connect(mqttAndroidClient.d, mqttAndroidClient.k, null, mqttAndroidClient.a(mqttAndroidClient.l));
        } catch (p e2) {
            c actionCallback = mqttAndroidClient.l.getActionCallback();
            if (actionCallback != null) {
                actionCallback.onFailure(mqttAndroidClient.l, e2);
            }
        }
    }
}
