package c.e.a.b.h.b;

import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.measurement.internal.zzm;
import java.util.Collections;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: c.e.a.b.h.b.vb  reason: case insensitive filesystem */
public final class C0965vb implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtomicReference f11088a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f11089b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f11090c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ String f11091d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f11092e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ zzm f11093f;

    /* renamed from: g  reason: collision with root package name */
    public final /* synthetic */ C0921gb f11094g;

    public C0965vb(C0921gb gbVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z, zzm zzm) {
        this.f11094g = gbVar;
        this.f11088a = atomicReference;
        this.f11089b = str;
        this.f11090c = str2;
        this.f11091d = str3;
        this.f11092e = z;
        this.f11093f = zzm;
    }

    public final void run() {
        synchronized (this.f11088a) {
            try {
                C0934l d2 = this.f11094g.f10901d;
                if (d2 == null) {
                    this.f11094g.e().t().a("Failed to get user properties", C0957t.a(this.f11089b), this.f11090c, this.f11091d);
                    this.f11088a.set(Collections.emptyList());
                    this.f11088a.notify();
                    return;
                }
                if (TextUtils.isEmpty(this.f11089b)) {
                    this.f11088a.set(d2.a(this.f11090c, this.f11091d, this.f11092e, this.f11093f));
                } else {
                    this.f11088a.set(d2.a(this.f11089b, this.f11090c, this.f11091d, this.f11092e));
                }
                this.f11094g.H();
                this.f11088a.notify();
            } catch (RemoteException e2) {
                try {
                    this.f11094g.e().t().a("Failed to get user properties", C0957t.a(this.f11089b), this.f11090c, e2);
                    this.f11088a.set(Collections.emptyList());
                    this.f11088a.notify();
                } catch (Throwable th) {
                    this.f11088a.notify();
                    throw th;
                }
            }
        }
    }
}
