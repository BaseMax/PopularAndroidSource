package c.c.a.l;

import androidx.constraintlayout.widget.ConstraintLayout;
import b.r.u;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.farsitel.bazaar.player.view.PlayPauseControl;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.f.b.j;

/* compiled from: LiveData.kt */
public final class s<T> implements u<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6135a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6136b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f6137c;

    public s(VideoPlayerActivity videoPlayerActivity, VideoPlayerActivity videoPlayerActivity2, BottomSheetBehavior bottomSheetBehavior) {
        this.f6135a = videoPlayerActivity;
        this.f6136b = videoPlayerActivity2;
        this.f6137c = bottomSheetBehavior;
    }

    public final void a(T t) {
        if (t != null) {
            boolean booleanValue = ((Boolean) t).booleanValue();
            ConstraintLayout constraintLayout = (ConstraintLayout) this.f6135a.d(k.bottomContainerLive);
            j.a((Object) constraintLayout, "bottomContainerLive");
            int i2 = 0;
            constraintLayout.setVisibility(booleanValue ? 0 : 8);
            ConstraintLayout constraintLayout2 = (ConstraintLayout) this.f6135a.d(k.bottomContainer);
            j.a((Object) constraintLayout2, "bottomContainer");
            constraintLayout2.setVisibility(booleanValue ^ true ? 0 : 8);
            PlayPauseControl playPauseControl = (PlayPauseControl) this.f6135a.d(k.buttonPlayPause);
            j.a((Object) playPauseControl, "buttonPlayPause");
            if (!(!booleanValue)) {
                i2 = 8;
            }
            playPauseControl.setVisibility(i2);
        }
    }
}
