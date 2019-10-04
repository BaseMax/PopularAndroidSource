package f.a.a.g.d.a;

import android.view.View;
import f.a.a.c.b.b;
import f.a.a.e.g;

/* compiled from: SearchAction */
public class o extends l {

    /* renamed from: d  reason: collision with root package name */
    public String f14453d = "";

    public o(String str) {
        super(str, false, false);
    }

    public void a(String str) {
        this.f14453d = str;
    }

    public void a(g gVar, View view) {
        super.a(gVar, view);
        new b(gVar.h(), a(), a(gVar)).a(new f.a.a.g.d.g(gVar, a()));
    }

    public String a() {
        return super.a() + this.f14453d;
    }
}
