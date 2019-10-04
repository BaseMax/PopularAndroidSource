package f.a.a.g.f.a;

import android.content.Intent;
import f.a.a.e.g;
import org.json.JSONArray;

/* compiled from: IABHandler */
public class b implements f.a.a.g.d.b {

    /* renamed from: a  reason: collision with root package name */
    public g f14484a;

    /* renamed from: b  reason: collision with root package name */
    public f.a.a.a.b<JSONArray> f14485b;

    public b(g gVar, f.a.a.d.a.a.c.b bVar) {
        gVar.h().f();
        this.f14484a = gVar;
        c();
    }

    public void a() {
    }

    public boolean a(g gVar, int i2, int i3, Intent intent) {
        return true;
    }

    public JSONArray b() {
        f.a.a.a.b<JSONArray> bVar = this.f14485b;
        if (bVar == null) {
            return null;
        }
        JSONArray b2 = bVar.b();
        this.f14485b = null;
        return b2;
    }

    public final void c() {
        this.f14485b = new a(this);
        this.f14485b.c();
    }
}
