package f.a.a.g.d.b;

import com.crashlytics.android.Crashlytics;
import f.a.a.c.b.o;
import f.a.a.d.f;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

/* compiled from: Puller */
class b implements o.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ c f14460a;

    public b(c cVar) {
        this.f14460a = cVar;
    }

    public void a() {
    }

    public void a(String str) {
        int unused = this.f14460a.f14464d.f15069b = 0;
        if (this.f14460a.f14464d.f15073f) {
            try {
                f g2 = this.f14460a.f14462b.h().g();
                a aVar = (a) g2.a("pullResponse", g2.a((InputStream) new ByteArrayInputStream(str.getBytes("UTF-8"))));
                if (aVar != null) {
                    if (aVar.a(this.f14460a.f14464d.f15072e)) {
                        this.f14460a.f14464d.a(this.f14460a.f14463c, this.f14460a.f14462b, aVar.b());
                    }
                    if (aVar.a() != null) {
                        this.f14460a.f14462b.f().v().a(aVar.a(), this.f14460a.f14462b.k().aa());
                    }
                }
            } catch (Exception e2) {
                Crashlytics.logException(e2);
            }
        }
    }

    public void a(int i2, String str) {
        int unused = this.f14460a.f14464d.f15069b = this.f14460a.f14464d.f15069b + 1;
        if (this.f14460a.f14464d.f15069b <= 3) {
            c cVar = this.f14460a;
            cVar.f14464d.a(cVar.f14463c, cVar.f14462b, cVar.f14461a);
        }
    }
}
