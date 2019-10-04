package c.c.a.n.j.c;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import c.c.a.f.pc;
import c.c.a.f.rc;
import c.c.a.n.c.d.n;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.ui.cinema.download.VideoDownloadQualityViewType;
import h.f.b.j;

/* compiled from: VideoDownloadAdapter.kt */
public final class a extends c.c.a.n.c.d.a<RecyclerData> {
    public n<RecyclerData> c(ViewGroup viewGroup, int i2) {
        j.b(viewGroup, "parent");
        if (i2 == VideoDownloadQualityViewType.HEADER.ordinal()) {
            pc a2 = pc.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a2, "ItemVideoDownloadHeaderB…, false\n                )");
            return new n<>(a2);
        } else if (i2 == VideoDownloadQualityViewType.NORMAL.ordinal()) {
            rc a3 = rc.a(LayoutInflater.from(viewGroup.getContext()), viewGroup, false);
            j.a((Object) a3, "ItemVideoDownloadNormalB…, false\n                )");
            return new n<>(a3);
        } else {
            throw new IllegalStateException("");
        }
    }
}
