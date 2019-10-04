package org.eclipse.paho.a.a;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.eclipse.paho.a.a.b.b;
import org.eclipse.paho.a.a.b.c;

public class x implements t {
    /* access modifiers changed from: private */

    /* renamed from: a  reason: collision with root package name */
    public static final String f8803a = x.class.getName();
    /* access modifiers changed from: private */

    /* renamed from: b  reason: collision with root package name */
    public final b f8804b = c.getLogger(c.MQTT_CLIENT_MSG_CAT, f8803a);
    /* access modifiers changed from: private */
    public org.eclipse.paho.a.a.a.a c;
    private ScheduledExecutorService d;
    private ScheduledFuture e;
    /* access modifiers changed from: private */
    public String f;

    class a implements Runnable {
        private a() {
        }

        /* synthetic */ a(x xVar, byte b2) {
            this();
        }

        public final void run() {
            String name = Thread.currentThread().getName();
            Thread currentThread = Thread.currentThread();
            currentThread.setName("MQTT Ping: " + x.this.f);
            x.this.f8804b.fine(x.f8803a, "PingTask.run", "660", new Object[]{Long.valueOf(System.nanoTime())});
            x.this.c.checkForActivity();
            Thread.currentThread().setName(name);
        }
    }

    public x(ScheduledExecutorService scheduledExecutorService) {
        if (scheduledExecutorService != null) {
            this.d = scheduledExecutorService;
            return;
        }
        throw new IllegalArgumentException("ExecutorService cannot be null.");
    }

    public void init(org.eclipse.paho.a.a.a.a aVar) {
        if (aVar != null) {
            this.c = aVar;
            this.f = aVar.getClient().getClientId();
            return;
        }
        throw new IllegalArgumentException("ClientComms cannot be null.");
    }

    public void start() {
        this.f8804b.fine(f8803a, "start", "659", new Object[]{this.f});
        schedule(this.c.getKeepAlive());
    }

    public void stop() {
        this.f8804b.fine(f8803a, "stop", "661", null);
        ScheduledFuture scheduledFuture = this.e;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
        }
    }

    public void schedule(long j) {
        this.e = this.d.schedule(new a(this, (byte) 0), j, TimeUnit.MILLISECONDS);
    }
}
