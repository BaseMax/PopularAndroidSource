package c.c.a.n.j.b.a;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import c.c.a.f.C0446na;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.cinema.GenreItem;
import com.farsitel.bazaar.common.model.cinema.VideoInfoClickListener;
import h.f.b.j;

/* compiled from: GenreAdapter.kt */
public final class c extends a<GenreItem> {

    /* renamed from: f  reason: collision with root package name */
    public final VideoInfoClickListener f6453f;

    public c(VideoInfoClickListener videoInfoClickListener) {
        j.b(videoInfoClickListener, "videoInfoClickListener");
        this.f6453f = videoInfoClickListener;
    }

    public n<GenreItem> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        C0446na a2 = C0446na.a(LayoutInflater.from(viewGroup.getContext()));
        j.a((Object) a2, "ItemGenreBinding.inflate…ter.from(parent.context))");
        a2.a(41, (Object) this.f6453f);
        return new n<>(a2);
    }
}
