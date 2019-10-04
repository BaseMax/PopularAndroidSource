package c.c.a.n.b.c;

import c.c.a.d.f.p;
import c.c.a.p.I;
import com.farsitel.bazaar.R;
import h.a.A;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: ReportViewModel.kt */
public final class g extends p {

    /* renamed from: d  reason: collision with root package name */
    public final Map<Integer, String> f6230d = A.b(f.a(Integer.valueOf(R.id.reportInappropriate), "P"), f.a(Integer.valueOf(R.id.unpleasantImage), "S"), f.a(Integer.valueOf(R.id.offensiveContent), "H"), f.a(Integer.valueOf(R.id.violentImages), "V"), f.a(Integer.valueOf(R.id.otherObjection), "O"));

    /* renamed from: e  reason: collision with root package name */
    public final I f6231e;

    public g(I i2) {
        j.b(i2, "workManagerScheduler");
        this.f6231e = i2;
    }

    public final void a(String str, int i2, String str2) {
        j.b(str, "packageName");
        String str3 = this.f6230d.get(Integer.valueOf(i2));
        if (str3 != null) {
            this.f6231e.a(str, str3, str2);
        }
    }
}
