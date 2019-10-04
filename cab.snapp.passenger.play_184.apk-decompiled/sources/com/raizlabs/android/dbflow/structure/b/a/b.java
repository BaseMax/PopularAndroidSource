package com.raizlabs.android.dbflow.structure.b.a;

import android.os.Looper;
import android.os.Process;
import com.raizlabs.android.dbflow.config.FlowLog;
import java.util.Iterator;
import java.util.concurrent.LinkedBlockingQueue;

public final class b extends Thread implements d {

    /* renamed from: a  reason: collision with root package name */
    private final LinkedBlockingQueue<g> f5201a = new LinkedBlockingQueue<>();

    /* renamed from: b  reason: collision with root package name */
    private boolean f5202b = false;

    public b(String str) {
        super(str);
    }

    public final void run() {
        Looper.prepare();
        Process.setThreadPriority(10);
        while (true) {
            try {
                g take = this.f5201a.take();
                if (!this.f5202b) {
                    take.executeSync();
                }
            } catch (InterruptedException unused) {
                synchronized (this) {
                    if (this.f5202b) {
                        synchronized (this.f5201a) {
                            this.f5201a.clear();
                            return;
                        }
                    }
                }
            }
        }
    }

    public final void add(g gVar) {
        synchronized (this.f5201a) {
            if (!this.f5201a.contains(gVar)) {
                this.f5201a.add(gVar);
            }
        }
    }

    public final void cancel(g gVar) {
        synchronized (this.f5201a) {
            if (this.f5201a.contains(gVar)) {
                this.f5201a.remove(gVar);
            }
        }
    }

    public final void cancel(String str) {
        synchronized (this.f5201a) {
            Iterator<g> it = this.f5201a.iterator();
            while (it.hasNext()) {
                g next = it.next();
                if (next.name() != null && next.name().equals(str)) {
                    it.remove();
                }
            }
        }
    }

    public final void startIfNotAlive() {
        synchronized (this) {
            if (!isAlive()) {
                try {
                    start();
                } catch (IllegalThreadStateException e) {
                    FlowLog.log(FlowLog.Level.E, (Throwable) e);
                }
            }
        }
    }

    public final void quit() {
        synchronized (this) {
            this.f5202b = true;
        }
        interrupt();
    }
}
