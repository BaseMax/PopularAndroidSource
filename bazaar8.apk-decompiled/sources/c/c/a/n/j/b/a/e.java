package c.c.a.n.j.b.a;

import android.view.View;
import c.c.a.n.c.d.n;
import c.c.a.n.j.b.a.d;

/* compiled from: ScreenshotAdapter.kt */
final class e implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f6458a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ n f6459b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ int f6460c;

    public e(d dVar, n nVar, int i2) {
        this.f6458a = dVar;
        this.f6459b = nVar;
        this.f6460c = i2;
    }

    public final void onClick(View view) {
        int a2 = this.f6458a.f(this.f6460c);
        d.a b2 = this.f6458a.f6457i;
        if (b2 != null) {
            b2.a(a2, this.f6458a.h());
        }
    }
}
