package c.c.a.l;

import b.r.u;
import c.c.a.d.b.l;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.farsitel.bazaar.player.view.InfoControl;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.f.b.j;

/* compiled from: VideoPlayerActivity.kt */
final class q<T> implements u<Boolean> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6129a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6130b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f6131c;

    public q(VideoPlayerActivity videoPlayerActivity, VideoPlayerActivity videoPlayerActivity2, BottomSheetBehavior bottomSheetBehavior) {
        this.f6129a = videoPlayerActivity;
        this.f6130b = videoPlayerActivity2;
        this.f6131c = bottomSheetBehavior;
    }

    public final void a(Boolean bool) {
        j.a((Object) bool, "it");
        if (bool.booleanValue()) {
            InfoControl infoControl = (InfoControl) this.f6129a.d(k.buttonOfflineState);
            j.a((Object) infoControl, "buttonOfflineState");
            l.c(infoControl);
        }
    }
}
