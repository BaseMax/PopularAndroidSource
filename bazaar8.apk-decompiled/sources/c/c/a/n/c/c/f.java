package c.c.a.n.c.c;

import c.c.a.n.c.c.a.a.a.j;
import com.farsitel.bazaar.common.model.page.ListItem;

/* compiled from: PageFragment.kt */
public final class f implements j {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ n f6325a;

    public f(n nVar) {
        this.f6325a = nVar;
    }

    public void a(ListItem listItem) {
        h.f.b.j.b(listItem, "serialItem");
        if (listItem instanceof ListItem.Serial) {
            ListItem.Serial serial = (ListItem.Serial) listItem;
            this.f6325a.b(serial.getSerial().getSerialId(), serial.getSerial().getSeasonIdx(), serial.getSerial().getReferrer());
        } else if (listItem instanceof ListItem.Episode) {
            ListItem.Episode episode = (ListItem.Episode) listItem;
            this.f6325a.a(episode.getEpisode().getEpisodeId(), episode.getEpisode().getSeasonIdx(), episode.getEpisode().getReferrer());
        }
    }
}
