package c.c.a.e.d.b;

import androidx.lifecycle.LiveData;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.data.entity.DownloadedApp;
import h.c.b;
import h.f.b.j;
import h.h;
import java.util.List;

/* renamed from: c.c.a.e.d.b.m  reason: case insensitive filesystem */
/* compiled from: DownloadedAppRepository.kt */
public final class C0383m {

    /* renamed from: a  reason: collision with root package name */
    public final C0381k f5004a;

    public C0383m(C0381k kVar) {
        j.b(kVar, "dataSource");
        this.f5004a = kVar;
    }

    public final Object a(DownloadedApp downloadedApp, b<? super h> bVar) {
        return this.f5004a.a(downloadedApp, bVar);
    }

    public final Object a(b<? super LiveData<List<ListItem.App>>> bVar) {
        return this.f5004a.a(bVar);
    }
}
