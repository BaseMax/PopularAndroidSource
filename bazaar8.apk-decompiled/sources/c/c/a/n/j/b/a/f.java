package c.c.a.n.j.b.a;

import android.view.View;
import c.c.a.n.j.b.a.d;

/* compiled from: ScreenshotAdapter.kt */
final class f implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ d f6461a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f6462b;

    public f(d dVar, int i2) {
        this.f6461a = dVar;
        this.f6462b = i2;
    }

    public final void onClick(View view) {
        int a2 = this.f6461a.f(this.f6462b);
        d.a b2 = this.f6461a.f6457i;
        if (b2 != null) {
            b2.a(a2, this.f6461a.h());
        }
    }
}
