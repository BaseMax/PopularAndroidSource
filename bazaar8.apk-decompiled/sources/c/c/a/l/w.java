package c.c.a.l;

import android.content.Context;
import android.graphics.PorterDuff;
import android.widget.ImageView;
import b.i.b.a;
import b.r.u;
import c.c.a.l.a.c;
import com.farsitel.bazaar.analytics.model.what.PlayerActionEvent;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.a.z;
import h.f;
import h.f.b.j;
import java.util.Map;

/* compiled from: LiveData.kt */
public final class w<T> implements u<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6148a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6149b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f6150c;

    public w(VideoPlayerActivity videoPlayerActivity, VideoPlayerActivity videoPlayerActivity2, BottomSheetBehavior bottomSheetBehavior) {
        this.f6148a = videoPlayerActivity;
        this.f6149b = videoPlayerActivity2;
        this.f6150c = bottomSheetBehavior;
    }

    public final void a(T t) {
        if (t != null) {
            c cVar = (c) t;
            this.f6148a.a(PlayerActionEvent.PlayerAction.SUBTITLE_CHANGED, (Map<String, String>) z.a(f.a("subtitleName", cVar.b())));
            if (cVar.a() == 0) {
                ImageView imageView = (ImageView) this.f6148a.d(k.buttonSubtitle);
                j.a((Object) imageView, "buttonSubtitle");
                imageView.setColorFilter(null);
                return;
            }
            ((ImageView) this.f6148a.d(k.buttonSubtitle)).setColorFilter(a.a((Context) this.f6149b, h.md_red_900), PorterDuff.Mode.SRC_IN);
        }
    }
}
