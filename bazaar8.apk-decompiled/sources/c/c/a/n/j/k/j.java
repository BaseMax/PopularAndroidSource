package c.c.a.n.j.k;

import b.r.u;
import com.farsitel.bazaar.ui.cinema.video.VideoDetailFragment;
import com.farsitel.bazaar.ui.login.LoginActivity;

/* compiled from: VideoDetailFragment.kt */
final class j<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoDetailFragment f6629a;

    public j(VideoDetailFragment videoDetailFragment) {
        this.f6629a = videoDetailFragment;
    }

    public final void a(Integer num) {
        LoginActivity.a aVar = LoginActivity.w;
        VideoDetailFragment videoDetailFragment = this.f6629a;
        h.f.b.j.a((Object) num, "requestCode");
        LoginActivity.a.a(aVar, videoDetailFragment, num.intValue(), null, null, 12, null);
    }
}
