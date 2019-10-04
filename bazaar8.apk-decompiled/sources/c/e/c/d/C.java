package c.e.c.d;

import android.content.Intent;

public final class C implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ Intent f11586a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Intent f11587b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ E f11588c;

    public C(E e2, Intent intent, Intent intent2) {
        this.f11588c = e2;
        this.f11586a = intent;
        this.f11587b = intent2;
    }

    public final void run() {
        this.f11588c.d(this.f11586a);
        this.f11588c.a(this.f11587b);
    }
}
