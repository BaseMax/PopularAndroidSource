package c.c.a.n.j.k;

import b.r.u;
import com.farsitel.bazaar.common.model.cinema.CinemaActionsItem;

/* compiled from: VideoDetailViewModel.kt */
final class r<T> implements u<S> {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoDetailViewModel$makeData$1 f6642a;

    public r(VideoDetailViewModel$makeData$1 videoDetailViewModel$makeData$1) {
        this.f6642a = videoDetailViewModel$makeData$1;
    }

    public final void a(Boolean bool) {
        CinemaActionsItem a2 = s.a(this.f6642a.this$0, null, 1, null);
        if (a2 != null) {
            this.f6642a.this$0.a(a2);
            this.f6642a.this$0.f6645l.a(a2.getVideoState());
            int n = this.f6642a.this$0.n();
            if (n >= 0) {
                this.f6642a.this$0.p.a(Integer.valueOf(n));
            }
        }
    }
}
