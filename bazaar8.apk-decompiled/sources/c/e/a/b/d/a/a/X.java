package c.e.a.b.d.a.a;

import com.google.android.gms.common.api.internal.LifecycleCallback;

public final class X implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ LifecycleCallback f9844a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f9845b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ W f9846c;

    public X(W w, LifecycleCallback lifecycleCallback, String str) {
        this.f9846c = w;
        this.f9844a = lifecycleCallback;
        this.f9845b = str;
    }

    public final void run() {
        if (this.f9846c.f9842c > 0) {
            this.f9844a.a(this.f9846c.f9843d != null ? this.f9846c.f9843d.getBundle(this.f9845b) : null);
        }
        if (this.f9846c.f9842c >= 2) {
            this.f9844a.d();
        }
        if (this.f9846c.f9842c >= 3) {
            this.f9844a.c();
        }
        if (this.f9846c.f9842c >= 4) {
            this.f9844a.e();
        }
        if (this.f9846c.f9842c >= 5) {
            this.f9844a.b();
        }
    }
}
