package b.b.g;

import android.view.View;
import b.i.k.K;

/* compiled from: ToolbarWidgetWrapper */
class va extends K {

    /* renamed from: a  reason: collision with root package name */
    public boolean f2246a = false;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ int f2247b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ wa f2248c;

    public va(wa waVar, int i2) {
        this.f2248c = waVar;
        this.f2247b = i2;
    }

    public void a(View view) {
        this.f2246a = true;
    }

    public void b(View view) {
        if (!this.f2246a) {
            this.f2248c.f2250a.setVisibility(this.f2247b);
        }
    }

    public void c(View view) {
        this.f2248c.f2250a.setVisibility(0);
    }
}
