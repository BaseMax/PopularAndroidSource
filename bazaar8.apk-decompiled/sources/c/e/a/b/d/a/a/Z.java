package c.e.a.b.d.a.a;

import com.google.android.gms.common.api.internal.LifecycleCallback;

public final class Z implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ LifecycleCallback f9847a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f9848b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ Y f9849c;

    public Z(Y y, LifecycleCallback lifecycleCallback, String str) {
        this.f9849c = y;
        this.f9847a = lifecycleCallback;
        this.f9848b = str;
    }

    public final void run() {
        if (this.f9849c.aa > 0) {
            this.f9847a.a(this.f9849c.ba != null ? this.f9849c.ba.getBundle(this.f9848b) : null);
        }
        if (this.f9849c.aa >= 2) {
            this.f9847a.d();
        }
        if (this.f9849c.aa >= 3) {
            this.f9847a.c();
        }
        if (this.f9849c.aa >= 4) {
            this.f9847a.e();
        }
        if (this.f9849c.aa >= 5) {
            this.f9847a.b();
        }
    }
}
