package c.c.a.n.j.k;

import b.w.b.b;
import c.c.a.d;
import c.c.a.i.c;
import c.c.a.n.c.d.o;
import com.farsitel.bazaar.common.model.page.MovieItem;
import com.farsitel.bazaar.common.model.recycler.AbstractSectionRowData;
import com.farsitel.bazaar.ui.cinema.video.VideoDetailFragment;

/* compiled from: VideoDetailFragment.kt */
public final class m implements o.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ VideoDetailFragment f6632a;

    public m(VideoDetailFragment videoDetailFragment) {
        this.f6632a = videoDetailFragment;
    }

    public <SectionItem> void a(SectionItem sectionitem) {
        if (sectionitem instanceof MovieItem.VideoItem) {
            MovieItem.VideoItem videoItem = (MovieItem.VideoItem) sectionitem;
            c.a(b.a(this.f6632a), d.f4738a.c(videoItem.getVideoId(), videoItem.getReferrer()));
        }
    }

    public <Section> void b(Section section) {
        if (section instanceof AbstractSectionRowData) {
            AbstractSectionRowData abstractSectionRowData = (AbstractSectionRowData) section;
            String slug = abstractSectionRowData.getSlug();
            if (slug != null) {
                if (slug.length() > 0) {
                    this.f6632a.a(slug, abstractSectionRowData.getTitle(), abstractSectionRowData.getReferrer());
                }
            }
        }
    }
}
