package c.c.a.e.d.n;

import androidx.lifecycle.LiveData;
import b.r.D;
import c.c.a.e.d.n.a.h;
import com.farsitel.bazaar.common.model.PlayedVideoModel;
import com.farsitel.bazaar.common.model.cinema.PlayedVideoDetails;
import com.farsitel.bazaar.common.model.page.ListItem;
import h.f.b.j;
import java.util.List;

/* compiled from: PlayedVideoRepository.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final h f5318a;

    public b(h hVar) {
        j.b(hVar, "playedVideoLocalDataSource");
        this.f5318a = hVar;
    }

    public final LiveData<List<ListItem>> a() {
        LiveData<List<ListItem>> a2 = D.a(this.f5318a.a(), a.f5295a);
        j.a((Object) a2, "Transformations.map(play… it.toMovieItem() }\n    }");
        return a2;
    }

    public final void a(PlayedVideoModel playedVideoModel, PlayedVideoDetails playedVideoDetails) {
        j.b(playedVideoModel, "playedVideoModel");
        j.b(playedVideoDetails, "playedVideoInfoDetails");
        this.f5318a.a(playedVideoModel, playedVideoDetails);
    }
}
