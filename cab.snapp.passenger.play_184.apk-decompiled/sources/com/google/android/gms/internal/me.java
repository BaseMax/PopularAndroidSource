package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

final class me implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ AtomicReference f3376a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ zzcgi f3377b;
    private /* synthetic */ boolean c;
    private /* synthetic */ lr d;

    me(lr lrVar, AtomicReference atomicReference, zzcgi zzcgi, boolean z) {
        this.d = lrVar;
        this.f3376a = atomicReference;
        this.f3377b = zzcgi;
        this.c = z;
    }

    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.f3376a) {
            try {
                ir irVar = this.d.f3353b;
                if (irVar == null) {
                    this.d.zzawy().zzazd().log("Failed to get user properties");
                    this.f3376a.notify();
                    return;
                }
                this.f3376a.set(irVar.zza(this.f3377b, this.c));
                this.d.f();
                atomicReference = this.f3376a;
                atomicReference.notify();
            } catch (RemoteException e) {
                try {
                    this.d.zzawy().zzazd().zzj("Failed to get user properties", e);
                    atomicReference = this.f3376a;
                } catch (Throwable th) {
                    this.f3376a.notify();
                    throw th;
                }
            }
        }
    }
}
