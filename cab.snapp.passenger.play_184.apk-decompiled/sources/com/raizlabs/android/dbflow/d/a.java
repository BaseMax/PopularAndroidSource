package com.raizlabs.android.dbflow.d;

import com.raizlabs.android.dbflow.config.FlowLog;
import com.raizlabs.android.dbflow.config.c;
import com.raizlabs.android.dbflow.structure.b.a.d;
import com.raizlabs.android.dbflow.structure.b.a.g;

public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private final d f5120a;

    /* renamed from: b  reason: collision with root package name */
    private c f5121b;

    public a(d dVar, c cVar) {
        this.f5120a = dVar;
        this.f5121b = new c(cVar);
        checkQueue();
    }

    public c getSaveQueue() {
        try {
            if (!this.f5121b.isAlive()) {
                this.f5121b.start();
            }
        } catch (IllegalThreadStateException e) {
            FlowLog.logError(e);
        }
        return this.f5121b;
    }

    public d getQueue() {
        return this.f5120a;
    }

    public void checkQueue() {
        getQueue().startIfNotAlive();
    }

    public void stopQueue() {
        getQueue().quit();
    }

    public void addTransaction(g gVar) {
        getQueue().add(gVar);
    }

    public void cancelTransaction(g gVar) {
        getQueue().cancel(gVar);
    }
}
