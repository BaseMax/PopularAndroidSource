package f.a.a.e.b;

import com.crashlytics.android.Crashlytics;
import f.a.a.c.b.o;
import f.a.a.d.f;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;
import org.w3c.dom.Document;

/* renamed from: f.a.a.e.b.u  reason: case insensitive filesystem */
/* compiled from: ListInflater */
class C1078u implements o.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ C1079v f14270a;

    public C1078u(C1079v vVar) {
        this.f14270a = vVar;
    }

    public void a() {
        C1079v vVar = this.f14270a;
        vVar.f14272b.a((C1072n) vVar.f14273c);
    }

    public void a(String str) {
        if (this.f14270a.f14271a.f() != null && this.f14270a.f14271a.f().y()) {
            this.f14270a.f14275e.f14285f.set(false);
            C1079v vVar = this.f14270a;
            vVar.f14272b.b((C1072n) vVar.f14273c);
            try {
                f g2 = this.f14270a.f14271a.h().g();
                C1082y yVar = (C1082y) g2.a("list", ((Document) g2.a((InputStream) new ByteArrayInputStream(str.getBytes("UTF-8")))).getElementsByTagName("list").item(0));
                this.f14270a.f14272b.a((List<C1072n>) yVar.f14282c);
                String unused = this.f14270a.f14275e.f14284e = yVar.f14284e;
                if (this.f14270a.f14275e.f14284e == null) {
                    this.f14270a.f14272b.c(this.f14270a.f14274d).setOnScrollChangeListener(null);
                }
            } catch (Exception e2) {
                Crashlytics.logException(e2);
            }
        }
    }

    public void a(int i2, String str) {
        if (this.f14270a.f14271a.f() != null && this.f14270a.f14271a.f().y()) {
            C1079v vVar = this.f14270a;
            vVar.f14272b.b((C1072n) vVar.f14273c);
            this.f14270a.f14275e.f14285f.set(false);
        }
    }
}
