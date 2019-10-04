package c.c.a.e.d.h.a.a;

import c.c.a.e.d.h.e.b.h;
import c.e.d.a.c;
import com.farsitel.bazaar.common.model.Page;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageDescriptionItem;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CastInfoResponseDto.kt */
public final class a {
    @c("background")
    public final String background;
    @c("description")
    public final String description;
    @c("referrerList")
    public final String referrer;
    @c("list")
    public final List<h> rows;
    @c("textColor")
    public final String textColor;
    @c("title")
    public final String title;

    public final Page a() {
        ArrayList arrayList = new ArrayList();
        String str = this.description;
        if (str != null) {
            if (str.length() > 0) {
                arrayList.add(new PageDescriptionItem(this.description));
            }
        }
        List<h> list = this.rows;
        if (list != null) {
            for (h hVar : list) {
                if (j.a((Object) hVar.a(), (Object) "video")) {
                    arrayList.add(new ListItem.Video(hVar.b(), false, 2, null));
                }
            }
        }
        Page page = new Page(this.title, null, null, arrayList, this.referrer, 6, null);
        return page;
    }
}
