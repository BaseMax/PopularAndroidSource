package c.c.a.e.d.h.e.a.a;

import androidx.lifecycle.LiveData;
import b.r.D;
import c.c.a.e.d.h.e.a.a.a;
import c.c.a.e.f.g;
import com.farsitel.bazaar.common.model.DownloadedVideoModel;
import com.farsitel.bazaar.common.model.VideoDownloadServerState;
import com.farsitel.bazaar.data.entity.DownloadedVideoEntity;
import h.c.b;
import h.f.b.j;
import h.h;
import java.util.List;

/* compiled from: VideoDownloadLocalDataSource.kt */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final a f5122a;

    public k(a aVar) {
        j.b(aVar, "downloadDao");
        this.f5122a = aVar;
    }

    public final Object a(b<? super LiveData<List<DownloadedVideoModel>>> bVar) {
        LiveData a2 = D.a(a.C0080a.a(this.f5122a, 0, 1, null), i.f5120a);
        j.a((Object) a2, "Transformations.map(down…)\n            }\n        }");
        return a2;
    }

    public final Object b(b<? super List<String>> bVar) {
        return a.C0080a.b(this.f5122a, 0, 1, null);
    }

    public final Object c(String str, b<? super h> bVar) {
        this.f5122a.a(str, VideoDownloadServerState.SENT);
        return h.f14579a;
    }

    public final Object a(String str, b<? super h> bVar) {
        this.f5122a.a(str);
        return h.f14579a;
    }

    public final Object b(String str, b<? super DownloadedVideoModel> bVar) {
        DownloadedVideoEntity b2 = this.f5122a.b(str);
        if (b2 != null) {
            return g.a(b2);
        }
        return null;
    }

    public final Object a(DownloadedVideoModel downloadedVideoModel, b<? super h> bVar) {
        this.f5122a.a(g.a(downloadedVideoModel));
        return h.f14579a;
    }

    public final LiveData<Boolean> a(String str) {
        j.b(str, "videoId");
        LiveData<Boolean> a2 = D.a(this.f5122a.c(str), j.f5121a);
        j.a((Object) a2, "Transformations.map(down…dedItem != null\n        }");
        return a2;
    }
}
