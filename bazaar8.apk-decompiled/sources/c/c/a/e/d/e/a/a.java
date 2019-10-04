package c.c.a.e.d.e.a;

import c.c.a.c.d.c;
import c.c.a.c.d.d;
import c.e.d.a.c;
import com.crashlytics.android.answers.AnswersRetryFilesSender;
import com.farsitel.bazaar.common.model.page.ListItem;
import com.farsitel.bazaar.common.model.page.PageAppItem;

/* compiled from: BoughtAppResponseDto.kt */
public final class a {
    @c("url")
    public final String iconUrl;
    @c("isCompatible")
    public final boolean isCompatible;
    @c("name")
    public final String name;
    @c("packageName")
    public final String packageName;
    @c("rating")
    public final float rating;

    public final ListItem.App a() {
        PageAppItem pageAppItem = new PageAppItem(this.packageName, this.name, null, null, Float.valueOf(this.rating), AnswersRetryFilesSender.BACKOFF_MS, "1000", null, true, null, false, this.iconUrl, null, null, this.isCompatible, d.a(new c.d(), null, 1, null), null, null, null, null, null, 1966080, null);
        ListItem.App app = new ListItem.App(pageAppItem, false, false, 4, null);
        app.getApp().setBought(true);
        return app;
    }
}
