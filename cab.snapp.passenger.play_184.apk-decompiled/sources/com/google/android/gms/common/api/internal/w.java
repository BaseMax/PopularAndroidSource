package com.google.android.gms.common.api.internal;

abstract class w implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ m f2880a;

    private w(m mVar) {
        this.f2880a = mVar;
    }

    /* synthetic */ w(m mVar, byte b2) {
        this(mVar);
    }

    /* access modifiers changed from: protected */
    public abstract void zzaib();

    public void run() {
        this.f2880a.f2865b.lock();
        try {
            if (!Thread.interrupted()) {
                zzaib();
                this.f2880a.f2865b.unlock();
            }
        } catch (RuntimeException e) {
            ah ahVar = this.f2880a.f2864a;
            ahVar.e.sendMessage(ahVar.e.obtainMessage(2, e));
        } finally {
            this.f2880a.f2865b.unlock();
        }
    }
}
