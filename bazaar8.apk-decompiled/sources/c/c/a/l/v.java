package c.c.a.l;

import android.content.Context;
import android.graphics.Typeface;
import android.widget.ImageView;
import b.i.b.a.h;
import b.r.u;
import c.c.a.d.b.l;
import c.e.a.a.k.a;
import com.farsitel.bazaar.player.CafePlayer;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.google.android.exoplayer2.ui.SubtitleView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.f.b.j;
import java.util.List;

/* compiled from: LiveData.kt */
public final class v<T> implements u<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CafePlayer f6144a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6145b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6146c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f6147d;

    public v(CafePlayer cafePlayer, VideoPlayerActivity videoPlayerActivity, VideoPlayerActivity videoPlayerActivity2, BottomSheetBehavior bottomSheetBehavior) {
        this.f6144a = cafePlayer;
        this.f6145b = videoPlayerActivity;
        this.f6146c = videoPlayerActivity2;
        this.f6147d = bottomSheetBehavior;
    }

    public final void a(T t) {
        if (t != null) {
            List list = (List) t;
            ImageView imageView = (ImageView) this.f6145b.d(k.buttonSubtitle);
            j.a((Object) imageView, "buttonSubtitle");
            l.c(imageView);
            ImageView imageView2 = (ImageView) this.f6145b.d(k.buttonSubtitleLive);
            j.a((Object) imageView2, "buttonSubtitleLive");
            l.c(imageView2);
            SubtitleView subtitleView = (SubtitleView) this.f6145b.findViewById(k.exo_subtitles);
            if (subtitleView != null) {
                a aVar = new a(b.i.b.a.a((Context) this.f6145b, h.white), b.i.b.a.a((Context) this.f6145b, h.background_dark_transparent), b.i.b.a.a((Context) this.f6145b, h.transparent), 0, b.i.b.a.a((Context) this.f6145b, h.white), Typeface.create(h.a(this.f6145b, j.regular), 0));
                subtitleView.setStyle(aVar);
            }
            VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1 videoPlayerActivity$onCreate$$inlined$with$lambda$5$1 = new VideoPlayerActivity$onCreate$$inlined$with$lambda$5$1(list, this);
            ((ImageView) this.f6145b.d(k.buttonSubtitle)).setOnClickListener(new A(videoPlayerActivity$onCreate$$inlined$with$lambda$5$1));
            ((ImageView) this.f6145b.d(k.buttonSubtitleLive)).setOnClickListener(new A(videoPlayerActivity$onCreate$$inlined$with$lambda$5$1));
        }
    }
}
