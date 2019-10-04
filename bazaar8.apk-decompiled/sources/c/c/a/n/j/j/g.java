package c.c.a.n.j.j;

import b.w.b.b;
import c.c.a.d;
import c.c.a.i.c;
import c.c.a.n.c.d.o;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.common.model.recycler.AbstractSectionRowData;
import com.farsitel.bazaar.ui.cinema.series.SeriesDetailFragment;

/* compiled from: SeriesDetailFragment.kt */
public final class g implements o.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ SeriesDetailFragment f6600a;

    public g(SeriesDetailFragment seriesDetailFragment) {
        this.f6600a = seriesDetailFragment;
    }

    public <SectionItem> void a(SectionItem sectionitem) {
        if (sectionitem instanceof MovieItem.VideoItem) {
            MovieItem.VideoItem videoItem = (MovieItem.VideoItem) sectionitem;
            c.a(b.a(this.f6600a), d.f4738a.c(videoItem.getVideoId(), videoItem.getReferrer()));
        }
    }

    public <Section> void b(Section section) {
        if (section instanceof AbstractSectionRowData) {
            AbstractSectionRowData abstractSectionRowData = (AbstractSectionRowData) section;
            String slug = abstractSectionRowData.getSlug();
            if (slug != null) {
                if (slug.length() > 0) {
                    this.f6600a.a(slug, abstractSectionRowData.getTitle(), abstractSectionRowData.getReferrer());
                }
            }
        }
    }
}
