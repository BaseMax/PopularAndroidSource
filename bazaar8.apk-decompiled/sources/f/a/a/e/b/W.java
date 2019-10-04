package f.a.a.e.b;

import android.view.View;
import android.widget.ImageView;
import f.a.a.e;
import f.a.a.e.g;
import f.a.a.f;
import ir.cafebazaar.inline.ui.inflaters.views.InlineAspectRatioImageView;

/* compiled from: VideoInflater */
public class W extends C1072n {

    /* renamed from: c  reason: collision with root package name */
    public final double f14094c = 0.0d;

    /* renamed from: d  reason: collision with root package name */
    public String f14095d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f14096e;

    public void a(boolean z) {
        this.f14096e = z;
    }

    public int b() {
        return f.inline_video;
    }

    public void c(String str) {
        this.f14095d = str;
    }

    public View a(g gVar, View view) {
        InlineAspectRatioImageView inlineAspectRatioImageView = (InlineAspectRatioImageView) view.findViewById(e.video_thumbnail);
        View findViewById = view.findViewById(e.video_thumbnail_overlay);
        inlineAspectRatioImageView.setAspectRatio(0.0f);
        V v = new V(this);
        ((ImageView) view.findViewById(e.play_button)).setOnClickListener(v);
        inlineAspectRatioImageView.setOnClickListener(v);
        findViewById.setOnClickListener(v);
        return view;
    }
}
