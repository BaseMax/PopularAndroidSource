package c.e.a.b.h.b;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzm;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: c.e.a.b.h.b.tb  reason: case insensitive filesystem */
public final class C0959tb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtomicReference f11060a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f11061b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f11062c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ String f11063d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ zzm f11064e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C0921gb f11065f;

    public C0959tb(C0921gb gbVar, AtomicReference atomicReference, String str, String str2, String str3, zzm zzm) {
        this.f11065f = gbVar;
        this.f11060a = atomicReference;
        this.f11061b = str;
        this.f11062c = str2;
        this.f11063d = str3;
        this.f11064e = zzm;
    }

    public final void run() {
        synchronized (this.f11060a) {
            try {
                C0934l d2 = this.f11065f.f10901d;
                if (d2 == null) {
                    this.f11065f.e().t().a("Failed to get conditional properties", C0957t.a(this.f11061b), this.f11062c, this.f11063d);
                    this.f11060a.set(Collections.emptyList());
                    this.f11060a.notify();
                    return;
                }
                if (TextUtils.isEmpty(this.f11061b)) {
                    this.f11060a.set(d2.a(this.f11062c, this.f11063d, this.f11064e));
                } else {
                    this.f11060a.set(d2.a(this.f11061b, this.f11062c, this.f11063d));
                }
                this.f11065f.H();
                this.f11060a.notify();
            } catch (RemoteException e2) {
                try {
                    this.f11065f.e().t().a("Failed to get conditional properties", C0957t.a(this.f11061b), this.f11062c, e2);
                    this.f11060a.set(Collections.emptyList());
                    this.f11060a.notify();
                } catch (Throwable th) {
                    this.f11060a.notify();
                    throw th;
                }
            }
        }
    }
}
