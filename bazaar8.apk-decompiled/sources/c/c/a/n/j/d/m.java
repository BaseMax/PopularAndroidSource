package c.c.a.n.j.d;

import b.w.b.b;
import c.c.a.d;
import c.c.a.i.c;
import c.c.a.n.c.d.o;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.common.model.recycler.AbstractSectionRowData;
import com.farsitel.bazaar.ui.cinema.episode.EpisodeDetailFragment;

/* compiled from: EpisodeDetailFragment.kt */
public final class m implements o.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ EpisodeDetailFragment f6532a;

    public m(EpisodeDetailFragment episodeDetailFragment) {
        this.f6532a = episodeDetailFragment;
    }

    public <SectionItem> void a(SectionItem sectionitem) {
        if (sectionitem instanceof MovieItem.VideoItem) {
            c.a(b.a(this.f6532a), d.f4738a.c(((MovieItem.VideoItem) sectionitem).getVideoId(), ""));
        }
    }

    public <Section> void b(Section section) {
        if (section instanceof AbstractSectionRowData) {
            AbstractSectionRowData abstractSectionRowData = (AbstractSectionRowData) section;
            String slug = abstractSectionRowData.getSlug();
            if (slug != null) {
                if (slug.length() > 0) {
                    this.f6532a.a(slug, abstractSectionRowData.getTitle(), abstractSectionRowData.getReferrer());
                }
            }
        }
    }
}
