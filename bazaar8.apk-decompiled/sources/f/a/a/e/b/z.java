package f.a.a.e.b;

import android.view.View;
import f.a.a.e.b.A;
import ir.cafebazaar.inline.ui.inflaters.activities.FullScreenImageActivity;

/* compiled from: PhotoSliderInflater */
class z implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ int f14288a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ A.a f14289b;

    public z(A.a aVar, int i2) {
        this.f14289b = aVar;
        this.f14288a = i2;
    }

    public void onClick(View view) {
        FullScreenImageActivity.a(this.f14289b.f14047c.f(), view, A.this.c(), this.f14288a);
    }
}
