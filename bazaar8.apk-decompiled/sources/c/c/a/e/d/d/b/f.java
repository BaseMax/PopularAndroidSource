package c.c.a.e.d.d.b;

import c.e.d.a.c;
import com.farsitel.bazaar.common.model.bookmark.BookmarkModel;

/* compiled from: BookmarkResponse.kt */
public final class f {
    @c("iconUrl")
    public final String iconUrl;
    @c("name")
    public final String name;
    @c("packageName")
    public final String packageName;
    @c("price")
    public final int price;
    @c("priceString")
    public final String priceString;

    public final BookmarkModel a() {
        BookmarkModel bookmarkModel = new BookmarkModel(this.packageName, this.iconUrl, this.name, true, this.price, this.priceString);
        return bookmarkModel;
    }
}
