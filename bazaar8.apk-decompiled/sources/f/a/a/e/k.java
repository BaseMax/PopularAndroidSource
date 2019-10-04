package f.a.a.e;

import android.graphics.Point;
import android.view.View;
import c.c.a.d.g.c;
import com.crashlytics.android.Crashlytics;
import f.a.a.e.a.j;
import f.a.a.e.a.p;
import f.a.a.g;
import ir.cafebazaar.inline.ui.changers.exceptions.ViewNotFoundException;

/* compiled from: InlineFragment */
class k implements j.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ View f14308a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ Point f14309b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ l f14310c;

    public k(l lVar, View view, Point point) {
        this.f14310c = lVar;
        this.f14308a = view;
        this.f14309b = point;
    }

    public int a(p pVar) {
        try {
            Point a2 = c.a(pVar.a(this.f14308a));
            return (int) (((float) Math.sqrt((double) (((this.f14309b.x - a2.x) * (this.f14309b.x - a2.x)) + ((this.f14309b.y - a2.y) * (this.f14309b.y - a2.y))))) / 2.375f);
        } catch (ViewNotFoundException e2) {
            Crashlytics.logException(e2);
            l lVar = this.f14310c;
            lVar.k();
            new j(lVar, this.f14310c.b(g.error_general), this.f14310c.b(g.error_try_again_later), e2.toString()).f();
            return -1;
        }
    }
}
