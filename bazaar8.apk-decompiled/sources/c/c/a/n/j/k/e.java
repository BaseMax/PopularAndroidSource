package c.c.a.n.j.k;

import android.view.View;
import com.farsitel.bazaar.ui.cinema.video.VideoDetailFragment;
import com.farsitel.bazaar.widget.LoadingButton;

/* compiled from: VideoDetailFragment.kt */
final class e implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoDetailFragment f6623a;

    public e(VideoDetailFragment videoDetailFragment) {
        this.f6623a = videoDetailFragment;
    }

    public final void onClick(View view) {
        ((LoadingButton) this.f6623a.e(c.c.a.e.playFloatingButton)).setShowLoading(true);
        this.f6623a.wb();
    }
}
