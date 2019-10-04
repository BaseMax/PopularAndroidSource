package com.google.android.gms.common.internal;

public abstract class bc<TListener> {

    /* renamed from: a  reason: collision with root package name */
    private TListener f2939a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f2940b = false;
    private /* synthetic */ ax c;

    public bc(ax axVar, TListener tlistener) {
        this.c = axVar;
        this.f2939a = tlistener;
    }

    /* access modifiers changed from: protected */
    public abstract void a(TListener tlistener);

    public final void removeListener() {
        synchronized (this) {
            this.f2939a = null;
        }
    }

    public final void unregister() {
        removeListener();
        synchronized (this.c.r) {
            this.c.r.remove(this);
        }
    }

    public final void zzaks() {
        TListener tlistener;
        synchronized (this) {
            tlistener = this.f2939a;
            if (this.f2940b) {
                String valueOf = String.valueOf(this);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 47);
                sb.append("Callback proxy ");
                sb.append(valueOf);
                sb.append(" being reused. This is not safe.");
            }
        }
        if (tlistener != null) {
            try {
                a(tlistener);
            } catch (RuntimeException e) {
                throw e;
            }
        }
        synchronized (this) {
            this.f2940b = true;
        }
        unregister();
    }
}
