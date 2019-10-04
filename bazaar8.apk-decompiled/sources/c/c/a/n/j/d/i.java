package c.c.a.n.j.d;

import b.r.u;
import com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailFragment;
import com.farsitel.bazaar.ui.login.LoginActivity;
import h.f.b.j;

/* compiled from: EpisodeDetailFragment.kt */
final class i<T> implements u<Integer> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ EpisodeDetailFragment f6528a;

    public i(EpisodeDetailFragment episodeDetailFragment) {
        this.f6528a = episodeDetailFragment;
    }

    public final void a(Integer num) {
        LoginActivity.a aVar = LoginActivity.w;
        EpisodeDetailFragment episodeDetailFragment = this.f6528a;
        j.a((Object) num, "requestCode");
        LoginActivity.a.a(aVar, episodeDetailFragment, num.intValue(), null, null, 12, null);
    }
}
