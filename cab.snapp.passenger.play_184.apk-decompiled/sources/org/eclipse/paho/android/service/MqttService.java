package org.eclipse.paho.android.service;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.PowerManager;
import androidx.localbroadcastmanager.content.LocalBroadcastManager;
import cab.snapp.d.a.c;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.eclipse.paho.a.a.f;
import org.eclipse.paho.a.a.g;
import org.eclipse.paho.a.a.m;
import org.eclipse.paho.a.a.n;
import org.eclipse.paho.a.a.p;
import org.eclipse.paho.a.a.q;
import org.eclipse.paho.a.a.s;
import org.eclipse.paho.a.a.u;
import org.eclipse.paho.android.service.d;

public class MqttService extends Service implements h {

    /* renamed from: a  reason: collision with root package name */
    c f8813a;

    /* renamed from: b  reason: collision with root package name */
    private String f8814b;
    private boolean c = false;
    private b d;
    private a e;
    /* access modifiers changed from: private */
    public volatile boolean f = true;
    private f g;
    private Map<String, d> h = new ConcurrentHashMap();

    class a extends BroadcastReceiver {
        private a() {
        }

        /* synthetic */ a(MqttService mqttService, byte b2) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            MqttService.this.traceDebug("MqttService", "Reconnect since BroadcastReceiver.");
            if (!((ConnectivityManager) MqttService.this.getSystemService("connectivity")).getBackgroundDataSetting()) {
                boolean unused = MqttService.this.f = false;
                MqttService.a(MqttService.this);
            } else if (!MqttService.this.f) {
                boolean unused2 = MqttService.this.f = true;
                MqttService.this.a();
            }
        }
    }

    class b extends BroadcastReceiver {
        private b() {
        }

        /* synthetic */ b(MqttService mqttService, byte b2) {
            this();
        }

        public final void onReceive(Context context, Intent intent) {
            MqttService.this.traceDebug("MqttService", "Internal network status receive.");
            PowerManager.WakeLock newWakeLock = ((PowerManager) MqttService.this.getSystemService("power")).newWakeLock(1, c.TAG);
            newWakeLock.acquire();
            MqttService.this.traceDebug("MqttService", "Reconnect for Network recovery.");
            if (MqttService.this.isOnline()) {
                MqttService.this.traceDebug("MqttService", "Online,reconnect.");
                MqttService.this.a();
            } else {
                MqttService.a(MqttService.this);
            }
            newWakeLock.release();
        }
    }

    /* access modifiers changed from: package-private */
    public final void a(String str, i iVar, Bundle bundle) {
        Intent intent = new Intent("MqttService.callbackToActivity.v0");
        if (str != null) {
            intent.putExtra("MqttService.clientHandle", str);
        }
        intent.putExtra("MqttService.callbackStatus", iVar);
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
    }

    public String getClient(String str, String str2, String str3, m mVar) {
        String str4 = str + ":" + str2 + ":" + str3;
        if (!this.h.containsKey(str4)) {
            d dVar = new d(this, str, str2, mVar, str4);
            this.h.put(str4, dVar);
        }
        return str4;
    }

    public void connect(String str, n nVar, String str2, String str3) throws u, p {
        a(str).connect(nVar, null, str3);
    }

    /* access modifiers changed from: package-private */
    public final void a() {
        traceDebug("MqttService", "Reconnect to server, client size=" + this.h.size());
        for (d next : this.h.values()) {
            traceDebug("Reconnect Client:", next.getClientId() + '/' + next.getServerURI());
            if (isOnline()) {
                next.b();
            }
        }
    }

    public void close(String str) {
        d a2 = a(str);
        a2.d.traceDebug("MqttConnection", "close()");
        try {
            if (a2.c != null) {
                a2.c.close();
            }
        } catch (p e2) {
            a2.a(new Bundle(), (Exception) e2);
        }
    }

    public void disconnect(String str, String str2, String str3) {
        a(str).a(str2, str3);
        this.h.remove(str);
        stopSelf();
    }

    public void disconnect(String str, long j, String str2, String str3) {
        d a2 = a(str);
        a2.d.traceDebug("MqttConnection", "disconnect()");
        a2.e = true;
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.activityToken", str3);
        bundle.putString("MqttService.invocationContext", str2);
        bundle.putString("MqttService.callbackAction", "disconnect");
        if (a2.c == null || !a2.c.isConnected()) {
            bundle.putString("MqttService.errorMessage", "not connected");
            a2.d.traceError("disconnect", "not connected");
            a2.d.a(a2.f8832b, i.ERROR, bundle);
        } else {
            try {
                a2.c.disconnect(j, str2, new d.a(a2, bundle, (byte) 0));
            } catch (Exception e2) {
                a2.a(bundle, e2);
            }
        }
        if (a2.f8831a != null && a2.f8831a.isCleanSession()) {
            a2.d.f8813a.clearArrivedMessages(a2.f8832b);
        }
        a2.a();
        this.h.remove(str);
        stopSelf();
    }

    public boolean isConnected(String str) {
        return a(str).isConnected();
    }

    public f publish(String str, String str2, byte[] bArr, int i, boolean z, String str3, String str4) throws s, p {
        return a(str).publish(str2, bArr, i, z, str3, str4);
    }

    public f publish(String str, String str2, q qVar, String str3, String str4) throws s, p {
        return a(str).publish(str2, qVar, str3, str4);
    }

    public void subscribe(String str, String str2, int i, String str3, String str4) {
        a(str).subscribe(str2, i, str3, str4);
    }

    public void subscribe(String str, String[] strArr, int[] iArr, String str2, String str3) {
        a(str).subscribe(strArr, iArr, str2, str3);
    }

    public void subscribe(String str, String[] strArr, int[] iArr, String str2, String str3, g[] gVarArr) {
        a(str).subscribe(strArr, iArr, str2, str3, gVarArr);
    }

    public void unsubscribe(String str, String str2, String str3, String str4) {
        d a2 = a(str);
        MqttService mqttService = a2.d;
        mqttService.traceDebug("MqttConnection", "unsubscribe({" + str2 + "},{" + str3 + "}, {" + str4 + "})");
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "unsubscribe");
        bundle.putString("MqttService.activityToken", str4);
        bundle.putString("MqttService.invocationContext", str3);
        if (a2.c == null || !a2.c.isConnected()) {
            bundle.putString("MqttService.errorMessage", "not connected");
            a2.d.traceError("subscribe", "not connected");
            a2.d.a(a2.f8832b, i.ERROR, bundle);
            return;
        }
        try {
            a2.c.unsubscribe(str2, (Object) str3, (org.eclipse.paho.a.a.c) new d.a(a2, bundle, (byte) 0));
        } catch (Exception e2) {
            a2.a(bundle, e2);
        }
    }

    public void unsubscribe(String str, String[] strArr, String str2, String str3) {
        d a2 = a(str);
        MqttService mqttService = a2.d;
        mqttService.traceDebug("MqttConnection", "unsubscribe({" + Arrays.toString(strArr) + "},{" + str2 + "}, {" + str3 + "})");
        Bundle bundle = new Bundle();
        bundle.putString("MqttService.callbackAction", "unsubscribe");
        bundle.putString("MqttService.activityToken", str3);
        bundle.putString("MqttService.invocationContext", str2);
        if (a2.c == null || !a2.c.isConnected()) {
            bundle.putString("MqttService.errorMessage", "not connected");
            a2.d.traceError("subscribe", "not connected");
            a2.d.a(a2.f8832b, i.ERROR, bundle);
            return;
        }
        try {
            a2.c.unsubscribe(strArr, (Object) str2, (org.eclipse.paho.a.a.c) new d.a(a2, bundle, (byte) 0));
        } catch (Exception e2) {
            a2.a(bundle, e2);
        }
    }

    public f[] getPendingDeliveryTokens(String str) {
        return a(str).getPendingDeliveryTokens();
    }

    private d a(String str) {
        d dVar = this.h.get(str);
        if (dVar != null) {
            return dVar;
        }
        throw new IllegalArgumentException("Invalid ClientHandle");
    }

    public i acknowledgeMessageArrival(String str, String str2) {
        if (this.f8813a.discardArrived(str, str2)) {
            return i.OK;
        }
        return i.ERROR;
    }

    public void onCreate() {
        super.onCreate();
        this.g = new f(this);
        this.f8813a = new b(this, this);
    }

    public void onDestroy() {
        for (d a2 : this.h.values()) {
            a2.a((String) null, (String) null);
        }
        if (this.g != null) {
            this.g = null;
        }
        b bVar = this.d;
        if (bVar != null) {
            unregisterReceiver(bVar);
            this.d = null;
        }
        if (Build.VERSION.SDK_INT < 14) {
            a aVar = this.e;
            if (aVar != null) {
                unregisterReceiver(aVar);
            }
        }
        c cVar = this.f8813a;
        if (cVar != null) {
            cVar.close();
        }
        super.onDestroy();
    }

    public IBinder onBind(Intent intent) {
        String stringExtra = intent.getStringExtra("MqttService.activityToken");
        f fVar = this.g;
        fVar.f8840a = stringExtra;
        return fVar;
    }

    public void setTraceCallbackId(String str) {
        this.f8814b = str;
    }

    public void setTraceEnabled(boolean z) {
        this.c = z;
    }

    public boolean isTraceEnabled() {
        return this.c;
    }

    public void traceDebug(String str, String str2) {
        a("debug", str, str2);
    }

    public void traceError(String str, String str2) {
        a("error", str, str2);
    }

    private void a(String str, String str2, String str3) {
        if (this.f8814b != null && this.c) {
            Bundle bundle = new Bundle();
            bundle.putString("MqttService.callbackAction", "trace");
            bundle.putString("MqttService.traceSeverity", str);
            bundle.putString("MqttService.traceTag", str2);
            bundle.putString("MqttService.errorMessage", str3);
            a(this.f8814b, i.ERROR, bundle);
        }
    }

    public void traceException(String str, String str2, Exception exc) {
        if (this.f8814b != null) {
            Bundle bundle = new Bundle();
            bundle.putString("MqttService.callbackAction", "trace");
            bundle.putString("MqttService.traceSeverity", "exception");
            bundle.putString("MqttService.errorMessage", str2);
            bundle.putSerializable("MqttService.exception", exc);
            bundle.putString("MqttService.traceTag", str);
            a(this.f8814b, i.ERROR, bundle);
        }
    }

    public boolean isOnline() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isAvailable() && activeNetworkInfo.isConnected() && this.f;
    }

    public void setBufferOpts(String str, org.eclipse.paho.a.a.b bVar) {
        a(str).setBufferOpts(bVar);
    }

    public int getBufferedMessageCount(String str) {
        return a(str).getBufferedMessageCount();
    }

    public q getBufferedMessage(String str, int i) {
        return a(str).getBufferedMessage(i);
    }

    public void deleteBufferedMessage(String str, int i) {
        a(str).deleteBufferedMessage(i);
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        if (this.d == null) {
            this.d = new b(this, (byte) 0);
            registerReceiver(this.d, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }
        if (Build.VERSION.SDK_INT < 14) {
            this.f = ((ConnectivityManager) getSystemService("connectivity")).getBackgroundDataSetting();
            if (this.e == null) {
                this.e = new a(this, (byte) 0);
                registerReceiver(this.e, new IntentFilter("android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"));
            }
        }
        return 1;
    }

    static /* synthetic */ void a(MqttService mqttService) {
        for (d next : mqttService.h.values()) {
            if (!next.e && !next.f) {
                next.connectionLost(new Exception("Android offline"));
            }
        }
    }
}
