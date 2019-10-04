package c.c.a.n.j.k;

import b.r.u;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;
import com.farsitel.bazaar.common.model.ui.EntityState;
import com.farsitel.bazaar.ui.cinema.video.VideoDetailFragment;

/* compiled from: VideoDetailFragment.kt */
final class f<T> implements u<EntityState> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoDetailFragment f6624a;

    public f(VideoDetailFragment videoDetailFragment) {
        this.f6624a = videoDetailFragment;
    }

    public final void a(EntityState entityState) {
        CinemaActionsItem a2 = s.a(VideoDetailFragment.e(this.f6624a), null, 1, null);
        if (a2 != null) {
            VideoDetailFragment videoDetailFragment = this.f6624a;
            Integer price = a2.getPrice();
            videoDetailFragment.Ga = price != null ? Long.valueOf((long) price.intValue()) : null;
            if (entityState == null) {
                entityState = VideoDetailFragment.e(this.f6624a).j();
            }
            VideoDetailFragment.a(this.f6624a).a(entityState);
            CinemaActionsItem a3 = s.a(VideoDetailFragment.e(this.f6624a), null, 1, null);
            if (a3 != null) {
                VideoDetailFragment.a(this.f6624a).b(a3.isFree());
            }
            a2.setVideoState(entityState);
            this.f6624a.ub();
            VideoDetailFragment.e(this.f6624a).b(entityState);
            this.f6624a.a(entityState);
        }
    }
}
