package c.c.a.n.b;

import b.w.b.b;
import c.c.a.d;
import c.c.a.i.c;
import c.c.a.n.c.d.o;
import com.farsitel.bazaar.common.model.page.PageAppItem;
import com.farsitel.bazaar.common.model.recycler.AbstractSectionRowData;
import com.farsitel.bazaar.ui.appdetail.AppDetailFragment;

/* compiled from: AppDetailFragment.kt */
public final class r implements o.a {

    /* renamed from: a  reason: collision with root package name */
    public final /* synthetic */ AppDetailFragment f6261a;

    public r(AppDetailFragment appDetailFragment) {
        this.f6261a = appDetailFragment;
    }

    public <SectionItem> void a(SectionItem sectionitem) {
        if (sectionitem instanceof PageAppItem) {
            PageAppItem pageAppItem = (PageAppItem) sectionitem;
            c.a(b.a(this.f6261a), d.l.a(d.f4738a, pageAppItem.getPackageName(), pageAppItem.getReferrer(), false, 4, (Object) null));
        }
    }

    public <Section> void b(Section section) {
        if (section instanceof AbstractSectionRowData) {
            AbstractSectionRowData abstractSectionRowData = (AbstractSectionRowData) section;
            String slug = abstractSectionRowData.getSlug();
            if (slug != null) {
                if (slug.length() > 0) {
                    this.f6261a.a(slug, abstractSectionRowData.getTitle(), abstractSectionRowData.getReferrer());
                }
            }
        }
    }
}
