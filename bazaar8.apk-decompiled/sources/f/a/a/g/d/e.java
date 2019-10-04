package f.a.a.g.d;

import android.view.View;
import f.a.a.e.C;
import f.a.a.e.g;

/* compiled from: ChangeActionCallListener */
public class e extends a {

    /* renamed from: c  reason: collision with root package name */
    public View f14471c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f14472d;

    public e(g gVar, View view, boolean z) {
        super(gVar);
        this.f14471c = view;
        this.f14472d = z;
    }

    public void a() {
        if (this.f14472d) {
            super.a();
        }
    }

    public void a(String str) {
        if (this.f14442b.isShowing() || (b().k() instanceof C)) {
            super.a(str);
            b().k().a(str, this.f14471c);
        }
    }

    public void a(int i2, String str) {
        if (this.f14442b.isShowing()) {
            super.a(i2, str);
        }
    }
}
