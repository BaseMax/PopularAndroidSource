package c.c.a.n.b.d.a;

import c.c.a.n.b.d.a.a;
import c.c.a.n.b.d.a.c;
import com.farsitel.bazaar.common.model.appdetail.AppScreenshotItem;
import java.util.ArrayList;

/* compiled from: ScreenshotAdapter.kt */
public final class b implements c.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ a f6240a;

    public b(a aVar) {
        this.f6240a = aVar;
    }

    public void a(int i2) {
        int i3 = 0;
        boolean z = !((AppScreenshotItem) this.f6240a.e().get(0)).isImage();
        a.C0090a a2 = this.f6240a.f6239k;
        if (a2 != null) {
            if (z) {
                i2--;
            }
            ArrayList e2 = this.f6240a.e();
            if (z) {
                i3 = 1;
            }
            a2.a(i2, new ArrayList(e2.subList(i3, this.f6240a.e().size())));
        }
    }
}
