package c.c.a.n.j.c;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import c.c.a.f.tc;
import c.c.a.n.c.d.a;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.cinema.DownloadedVideoItem;
import h.f.b.j;

/* compiled from: VideoDownloadListAdapter.kt */
public final class f extends a<DownloadedVideoItem> {

    /* renamed from: f  reason: collision with root package name */
    public final p f6490f;

    public f(p pVar) {
        j.b(pVar, "videoDownloadedCommunicator");
        this.f6490f = pVar;
    }

    public n<DownloadedVideoItem> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        tc a2 = tc.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
        j.a((Object) a2, "ItemVideoDownloadedBindi…      false\n            )");
        return new q(a2, this.f6490f);
    }
}
