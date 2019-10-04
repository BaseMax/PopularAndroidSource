package org.eclipse.paho.android.service;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.PowerManager;
import androidx.core.app.NotificationCompat;
import org.eclipse.paho.a.a.c;
import org.eclipse.paho.a.a.h;
import org.eclipse.paho.a.a.t;

final class a implements t {

    /* renamed from: a  reason: collision with root package name */
    org.eclipse.paho.a.a.a.a f8818a;

    /* renamed from: b  reason: collision with root package name */
    MqttService f8819b;
    a c;
    private BroadcastReceiver d;
    private PendingIntent e;
    private volatile boolean f = false;

    /* renamed from: org.eclipse.paho.android.service.a$a  reason: collision with other inner class name */
    class C0210a extends BroadcastReceiver {
        /* access modifiers changed from: private */

        /* renamed from: b  reason: collision with root package name */
        public PowerManager.WakeLock f8821b;
        /* access modifiers changed from: private */
        public final String c = ("MqttService.client." + a.this.c.f8818a.getClient().getClientId());

        C0210a() {
        }

        public final void onReceive(Context context, Intent intent) {
            new StringBuilder("Sending Ping at:").append(System.currentTimeMillis());
            this.f8821b = ((PowerManager) a.this.f8819b.getSystemService("power")).newWakeLock(1, this.c);
            this.f8821b.acquire();
            if (a.this.f8818a.checkForActivity(new c() {
                public final void onSuccess(h hVar) {
                    StringBuilder sb = new StringBuilder("Success. Release lock(");
                    sb.append(C0210a.this.c);
                    sb.append("):");
                    sb.append(System.currentTimeMillis());
                    C0210a.this.f8821b.release();
                }

                public final void onFailure(h hVar, Throwable th) {
                    StringBuilder sb = new StringBuilder("Failure. Release lock(");
                    sb.append(C0210a.this.c);
                    sb.append("):");
                    sb.append(System.currentTimeMillis());
                    C0210a.this.f8821b.release();
                }
            }) == null && this.f8821b.isHeld()) {
                this.f8821b.release();
            }
        }
    }

    public a(MqttService mqttService) {
        if (mqttService != null) {
            this.f8819b = mqttService;
            this.c = this;
            return;
        }
        throw new IllegalArgumentException("Neither service nor client can be null.");
    }

    public final void init(org.eclipse.paho.a.a.a.a aVar) {
        this.f8818a = aVar;
        this.d = new C0210a();
    }

    public final void start() {
        String str = "MqttService.pingSender." + this.f8818a.getClient().getClientId();
        this.f8819b.registerReceiver(this.d, new IntentFilter(str));
        this.e = PendingIntent.getBroadcast(this.f8819b, 0, new Intent(str), 134217728);
        schedule(this.f8818a.getKeepAlive());
        this.f = true;
    }

    public final void stop() {
        new StringBuilder("Unregister alarmreceiver to MqttService").append(this.f8818a.getClient().getClientId());
        if (this.f) {
            if (this.e != null) {
                ((AlarmManager) this.f8819b.getSystemService(NotificationCompat.CATEGORY_ALARM)).cancel(this.e);
            }
            this.f = false;
            try {
                this.f8819b.unregisterReceiver(this.d);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    public final void schedule(long j) {
        long currentTimeMillis = System.currentTimeMillis() + j;
        AlarmManager alarmManager = (AlarmManager) this.f8819b.getSystemService(NotificationCompat.CATEGORY_ALARM);
        if (Build.VERSION.SDK_INT >= 23) {
            alarmManager.setExactAndAllowWhileIdle(0, currentTimeMillis, this.e);
        } else if (Build.VERSION.SDK_INT >= 19) {
            alarmManager.setExact(0, currentTimeMillis, this.e);
        } else {
            alarmManager.set(0, currentTimeMillis, this.e);
        }
    }
}
