package f.a.a.e.a;

import android.view.View;
import android.widget.ImageView;
import f.a.a.e.a.a.a;
import f.a.a.e.a.a.c;
import f.a.a.e.g;
import f.a.a.f.e;
import ir.cafebazaar.inline.ui.inflaters.ImageInflater;

/* compiled from: ImageChanger */
public class k extends d {

    /* renamed from: c  reason: collision with root package name */
    public String f14036c = null;

    public k() {
        a((a) new c());
    }

    public void b(String str) {
        this.f14036c = str;
    }

    public boolean c() {
        return this.f14036c != null;
    }

    public void b(View view, g gVar) {
        ImageView imageView = (ImageView) view;
        if (this.f14036c != null) {
            e.a().a(this.f14036c, imageView, false, 0, ((ImageInflater.Style) imageView.getTag(f.a.a.e.image_style_tag)).g());
        }
    }
}
