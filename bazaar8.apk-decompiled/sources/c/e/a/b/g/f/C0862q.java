package c.e.a.b.g.f;

import android.util.Log;
import c.e.a.b.g.f.C0802b;
import c.e.a.b.h.b.Da;

/* renamed from: c.e.a.b.g.f.q  reason: case insensitive filesystem */
public final class C0862q extends C0802b.a {

    /* renamed from: e  reason: collision with root package name */
    public final /* synthetic */ Da f10506e;

    /* renamed from: f  reason: collision with root package name */
    public final /* synthetic */ C0802b f10507f;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public C0862q(C0802b bVar, Da da) {
        super(bVar);
        this.f10507f = bVar;
        this.f10506e = da;
    }

    public final void a() {
        if (this.f10507f.f10334j.containsKey(this.f10506e)) {
            Log.w(this.f10507f.f10330f, "OnEventListener already registered.");
            return;
        }
        C0802b.C0129b bVar = new C0802b.C0129b(this.f10506e);
        this.f10507f.f10334j.put(this.f10506e, bVar);
        this.f10507f.n.registerOnMeasurementEventListener(bVar);
    }
}
