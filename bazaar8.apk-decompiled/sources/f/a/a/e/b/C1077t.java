package f.a.a.e.b;

import android.view.View;
import f.a.a.e.g;
import ir.cafebazaar.inline.ui.inflaters.ImageInflater;
import ir.cafebazaar.inline.ui.inflaters.activities.FullScreenImageActivity;

/* renamed from: f.a.a.e.b.t  reason: case insensitive filesystem */
/* compiled from: ImageInflater */
class C1077t implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ g f14268a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ ImageInflater f14269b;

    public C1077t(ImageInflater imageInflater, g gVar) {
        this.f14269b = imageInflater;
        this.f14268a = gVar;
    }

    public void onClick(View view) {
        FullScreenImageActivity.a(this.f14268a.f() != null ? this.f14268a.f() : this.f14268a.getApplicationContext(), view, new String[]{this.f14269b.f14995c}, 0);
    }
}
