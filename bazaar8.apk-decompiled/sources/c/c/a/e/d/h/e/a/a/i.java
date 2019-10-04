package c.c.a.e.d.h.e.a.a;

import b.c.a.c.a;
import c.c.a.e.f.g;
import com.farsitel.bazaar.common.model.DownloadedVideoModel;
import com.farsitel.bazaar.data.entity.DownloadedVideoEntity;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: VideoDownloadLocalDataSource.kt */
final class i<I, O> implements a<X, Y> {

    /* renamed from: a  reason: collision with root package name */
    public static final i f5120a = new i();

    /* renamed from: a */
    public final List<DownloadedVideoModel> apply(List<DownloadedVideoEntity> list) {
        j.a((Object) list, "list");
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (DownloadedVideoEntity a2 : list) {
            arrayList.add(g.a(a2));
        }
        return arrayList;
    }
}
