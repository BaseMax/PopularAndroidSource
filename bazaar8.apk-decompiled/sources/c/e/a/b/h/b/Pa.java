package c.e.a.b.h.b;

import java.util.concurrent.atomic.AtomicReference;

public final class Pa implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AtomicReference f10708a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ String f10709b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ String f10710c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ String f10711d;

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ boolean f10712e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ Fa f10713f;

    public Pa(Fa fa, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f10713f = fa;
        this.f10708a = atomicReference;
        this.f10709b = str;
        this.f10710c = str2;
        this.f10711d = str3;
        this.f10712e = z;
    }

    public final void run() {
        this.f10713f.f11077a.D().a(this.f10708a, this.f10709b, this.f10710c, this.f10711d, this.f10712e);
    }
}
