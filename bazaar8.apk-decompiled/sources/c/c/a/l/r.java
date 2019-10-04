package c.c.a.l;

import b.r.u;
import com.farsitel.bazaar.core.widget.loading.SpinKitView;
import com.farsitel.bazaar.player.VideoPlayerActivity;
import com.farsitel.bazaar.player.view.InfoControl;
import com.farsitel.bazaar.player.view.PlayPauseControl;
import com.farsitel.bazaar.player.view.PlaybackState;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import h.f.b.j;

/* compiled from: LiveData.kt */
public final class r<T> implements u<T> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6132a;

    /* renamed from: b  reason: collision with root package name */
    public final /* synthetic */ VideoPlayerActivity f6133b;

    /* renamed from: c  reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f6134c;

    public r(VideoPlayerActivity videoPlayerActivity, VideoPlayerActivity videoPlayerActivity2, BottomSheetBehavior bottomSheetBehavior) {
        this.f6132a = videoPlayerActivity;
        this.f6133b = videoPlayerActivity2;
        this.f6134c = bottomSheetBehavior;
    }

    public final void a(T t) {
        if (t != null) {
            PlaybackState playbackState = (PlaybackState) t;
            ((PlayPauseControl) this.f6132a.d(k.buttonPlayPause)).setState(playbackState);
            ((InfoControl) this.f6132a.d(k.buttonInfoControl)).setState(playbackState);
            this.f6132a.a(playbackState);
            SpinKitView spinKitView = (SpinKitView) this.f6132a.d(k.progressBar);
            j.a((Object) spinKitView, "progressBar");
            int i2 = 0;
            if (!(playbackState == PlaybackState.LOADING)) {
                i2 = 8;
            }
            spinKitView.setVisibility(i2);
            VideoPlayerActivity.a(this.f6132a, playbackState.f(), null, 2, null);
        }
    }
}
