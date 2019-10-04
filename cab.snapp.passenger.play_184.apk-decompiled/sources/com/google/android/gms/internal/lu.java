package com.google.android.gms.internal;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

final class lu implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ AtomicReference f3357a;

    /* renamed from: b  reason: collision with root package name */
    private /* synthetic */ zzcgi f3358b;
    private /* synthetic */ lr c;

    lu(lr lrVar, AtomicReference atomicReference, zzcgi zzcgi) {
        this.c = lrVar;
        this.f3357a = atomicReference;
        this.f3358b = zzcgi;
    }

    public final void run() {
        AtomicReference atomicReference;
        synchronized (this.f3357a) {
            try {
                ir irVar = this.c.f3353b;
                if (irVar == null) {
                    this.c.zzawy().zzazd().log("Failed to get app instance id");
                    this.f3357a.notify();
                    return;
                }
                this.f3357a.set(irVar.zzc(this.f3358b));
                String str = (String) this.f3357a.get();
                if (str != null) {
                    this.c.zzawm().a(str);
                    this.c.zzawz().zzjcx.zzjq(str);
                }
                this.c.f();
                atomicReference = this.f3357a;
                atomicReference.notify();
            } catch (RemoteException e) {
                try {
                    this.c.zzawy().zzazd().zzj("Failed to get app instance id", e);
                    atomicReference = this.f3357a;
                } catch (Throwable th) {
                    this.f3357a.notify();
                    throw th;
                }
            }
        }
    }
}
