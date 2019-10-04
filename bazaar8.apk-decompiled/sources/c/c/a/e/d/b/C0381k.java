package c.c.a.e.d.b;

import androidx.lifecycle.LiveData;
import b.r.D;
import c.c.a.e.f.g;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.data.entity.DownloadedApp;
import h.c.b;
import h.f.b.j;
import h.h;
import java.util.List;

/* renamed from: c.c.a.e.d.b.k  reason: case insensitive filesystem */
/* compiled from: DownloadedAppLocalDataSource.kt */
public final class C0381k {

    /* renamed from: a  reason: collision with root package name */
    public final C0375e f5002a;

    public C0381k(C0375e eVar) {
        j.b(eVar, "downloadedAppDao");
        this.f5002a = eVar;
    }

    public final Object a(DownloadedApp downloadedApp, b<? super h> bVar) {
        this.f5002a.a(g.a(downloadedApp));
        return h.f14579a;
    }

    public final Object a(b<? super LiveData<List<ListItem.App>>> bVar) {
        LiveData<Y> a2 = D.a(this.f5002a.a(), C0380j.f5001a);
        j.a((Object) a2, "Transformations.map(down… { it.toFlatPageApp() } }");
        return a2;
    }
}
