package c.e.a.b.h.b;

import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzm;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: c.e.a.b.h.b.kb  reason: case insensitive filesystem */
public final class C0933kb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtomicReference f10964a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ zzm f10965b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ C0921gb f10966c;

    public C0933kb(C0921gb gbVar, AtomicReference atomicReference, zzm zzm) {
        this.f10966c = gbVar;
        this.f10964a = atomicReference;
        this.f10965b = zzm;
    }

    public final void run() {
        synchronized (this.f10964a) {
            try {
                C0934l d2 = this.f10966c.f10901d;
                if (d2 == null) {
                    this.f10966c.e().t().a("Failed to get app instance id");
                    this.f10964a.notify();
                    return;
                }
                this.f10964a.set(d2.c(this.f10965b));
                String str = (String) this.f10964a.get();
                if (str != null) {
                    this.f10966c.p().a(str);
                    this.f10966c.h().m.a(str);
                }
                this.f10966c.H();
                this.f10964a.notify();
            } catch (RemoteException e2) {
                try {
                    this.f10966c.e().t().a("Failed to get app instance id", e2);
                    this.f10964a.notify();
                } catch (Throwable th) {
                    this.f10964a.notify();
                    throw th;
                }
            }
        }
    }
}
