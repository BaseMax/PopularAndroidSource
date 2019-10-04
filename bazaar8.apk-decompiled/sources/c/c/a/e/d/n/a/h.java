package c.c.a.e.d.n.a;

import androidx.lifecycle.LiveData;
import com.farsitel.bazaar.common.model.PlayedVideoModel;
import com.farsitel.bazaar.common.model.cinema.PlayedVideoDetails;
import h.f.b.j;
import java.util.List;

/* compiled from: PlayedVideoLocalDataSource.kt */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    public final a f5316a;

    public h(a aVar) {
        j.b(aVar, "playedVideoDao");
        this.f5316a = aVar;
    }

    public final LiveData<List<f>> a() {
        return this.f5316a.getAll();
    }

    public final void a(PlayedVideoModel playedVideoModel, PlayedVideoDetails playedVideoDetails) {
        j.b(playedVideoModel, "playedVideoModel");
        j.b(playedVideoDetails, "playedVideoInfoDetails");
        this.f5316a.a(f.f5303a.a(playedVideoModel, playedVideoDetails));
    }
}
