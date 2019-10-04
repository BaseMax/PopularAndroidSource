package c.c.a.e.g;

import com.farsitel.bazaar.common.model.reviews.ReviewItem;
import h.f.b.j;

/* compiled from: DeveloperReplyModel.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final ReviewItem f5441a;

    /* renamed from: b  reason: collision with root package name */
    public final String f5442b;

    /* renamed from: c  reason: collision with root package name */
    public final String f5443c;

    public a(ReviewItem reviewItem, String str, String str2) {
        j.b(reviewItem, "reviewItem");
        j.b(str, "appName");
        j.b(str2, "iconUrl");
        this.f5441a = reviewItem;
        this.f5442b = str;
        this.f5443c = str2;
    }

    public final String a() {
        return this.f5442b;
    }

    public final String b() {
        return this.f5443c;
    }

    public final ReviewItem c() {
        return this.f5441a;
    }
}
