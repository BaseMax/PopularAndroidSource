package org.eclipse.paho.a.a;

import java.util.Timer;
import java.util.TimerTask;
import org.eclipse.paho.a.a.b.b;
import org.eclipse.paho.a.a.b.c;

public class y implements t {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static final String f8806a = y.class.getName();
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public b f8807b = c.getLogger(c.MQTT_CLIENT_MSG_CAT, f8806a);
    /* access modifiers changed from: private */
    public org.eclipse.paho.a.a.a.a c;
    private Timer d;
    private String e;

    class a extends TimerTask {
        private a() {
        }

        /* synthetic */ a(y yVar, byte b2) {
            this();
        }

        public final void run() {
            y.this.f8807b.fine(y.f8806a, "PingTask.run", "660", new Object[]{Long.valueOf(System.nanoTime())});
            y.this.c.checkForActivity();
        }
    }

    public void init(org.eclipse.paho.a.a.a.a aVar) {
        if (aVar != null) {
            this.c = aVar;
            this.e = aVar.getClient().getClientId();
            this.f8807b.setResourceName(this.e);
            return;
        }
        throw new IllegalArgumentException("ClientComms cannot be null.");
    }

    public void start() {
        this.f8807b.fine(f8806a, "start", "659", new Object[]{this.e});
        this.d = new Timer("MQTT Ping: " + this.e);
        this.d.schedule(new a(this, (byte) 0), this.c.getKeepAlive());
    }

    public void stop() {
        this.f8807b.fine(f8806a, "stop", "661", null);
        Timer timer = this.d;
        if (timer != null) {
            timer.cancel();
        }
    }

    public void schedule(long j) {
        this.d.schedule(new a(this, (byte) 0), j);
    }
}
