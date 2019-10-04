package f.a.a.g.d.a;

import android.widget.Toast;
import f.a.a.c.b.b;
import f.a.a.e.g;
import f.a.a.e.o;
import java.util.HashMap;

/* compiled from: ReportSpamAction */
class m implements o.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f14450a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ n f14451b;

    public m(n nVar, g gVar) {
        this.f14451b = nVar;
        this.f14450a = gVar;
    }

    public void a() {
        HashMap hashMap = new HashMap();
        hashMap.put("commentId", this.f14451b.f14452b);
        new b(this.f14450a.h(), this.f14451b.a(), hashMap).a(null);
        Toast.makeText(this.f14450a.getApplicationContext(), f.a.a.g.submitted, 1).show();
    }
}
