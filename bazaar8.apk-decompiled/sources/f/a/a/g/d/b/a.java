package f.a.a.g.d.b;

import f.a.a.g.d.a.b;
import ir.cafebazaar.inline.ux.flow.pull.Puller;

/* compiled from: PullResponse */
public class a implements f.a.a.d.a {

    /* renamed from: a  reason: collision with root package name */
    public b f14457a;

    /* renamed from: b  reason: collision with root package name */
    public Boolean f14458b = null;

    /* renamed from: c  reason: collision with root package name */
    public String f14459c;

    public void a(b bVar) {
        this.f14457a = bVar;
    }

    public String b() {
        return this.f14459c;
    }

    public void a(boolean z) {
        this.f14458b = Boolean.valueOf(z);
    }

    public b a() {
        return this.f14457a;
    }

    public boolean a(Puller.a aVar) {
        Boolean bool = this.f14458b;
        if (bool != null) {
            return bool.booleanValue();
        }
        return aVar.a(this.f14457a);
    }

    public void a(String str) {
        this.f14459c = str;
    }
}
