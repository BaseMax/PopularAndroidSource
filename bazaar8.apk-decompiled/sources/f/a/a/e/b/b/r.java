package f.a.a.e.b.b;

import f.a.a.e.b.b.B;
import ir.cafebazaar.inline.ui.inflaters.inputs.ControllableInputInflater;

/* compiled from: ControllableInputInflater */
class r implements B.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ boolean f14192a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ B.a f14193b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ ControllableInputInflater f14194c;

    public r(ControllableInputInflater controllableInputInflater, boolean z, B.a aVar) {
        this.f14194c = controllableInputInflater;
        this.f14192a = z;
        this.f14193b = aVar;
    }

    public String a() {
        Object b2 = b();
        if (!this.f14192a || (b2 != null && (!(b2 instanceof String) || !((String) b2).trim().equals("")))) {
            return this.f14193b.a();
        }
        return null;
    }

    public Object b() {
        return this.f14193b.b();
    }
}
