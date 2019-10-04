package c.c.a.l;

import c.c.a.d.b.l;
import com.farsitel.bazaar.player.CafePlayer;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.farsitel.bazaar.player.view.InfoControl;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.f.b.j;
import java.util.List;

/* compiled from: LiveData.kt */
public final class u<T> implements b.r.u<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ CafePlayer f6140a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6141b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6142c;

    /* renamed from: d  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f6143d;

    public u(CafePlayer cafePlayer, VideoPlayerActivity videoPlayerActivity, VideoPlayerActivity videoPlayerActivity2, BottomSheetBehavior bottomSheetBehavior) {
        this.f6140a = cafePlayer;
        this.f6141b = videoPlayerActivity;
        this.f6142c = videoPlayerActivity2;
        this.f6143d = bottomSheetBehavior;
    }

    public final void a(T t) {
        if (t != null) {
            InfoControl infoControl = (InfoControl) this.f6141b.d(k.buttonQualityPicker);
            j.a((Object) infoControl, "buttonQualityPicker");
            l.c(infoControl);
            ((InfoControl) this.f6141b.d(k.buttonQualityPicker)).setOnClickListener(new t((List) t, this));
        }
    }
}
