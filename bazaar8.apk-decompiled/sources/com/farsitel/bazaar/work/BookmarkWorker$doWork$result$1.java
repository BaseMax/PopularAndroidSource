package com.farsitel.bazaar.work;

import com.farsitel.bazaar.common.model.bookmark.BookmarkModel;
import h.c.b;
import h.c.b.a.a;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.work.BookmarkWorker$doWork$result$1", f = "BookmarkWorker.kt", l = {35, 45}, m = "invokeSuspend")
/* compiled from: BookmarkWorker.kt */
final class BookmarkWorker$doWork$result$1 extends SuspendLambda implements c<H, b<? super Boolean>, Object> {
    public final /* synthetic */ String $appName;
    public final /* synthetic */ String $iconUrl;
    public final /* synthetic */ boolean $isBookmarked;
    public final /* synthetic */ String $packageName;
    public final /* synthetic */ int $price;
    public final /* synthetic */ String $priceString;
    public int label;
    public H p$;
    public final /* synthetic */ BookmarkWorker this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BookmarkWorker$doWork$result$1(BookmarkWorker bookmarkWorker, boolean z, String str, String str2, String str3, int i2, String str4, b bVar) {
        super(2, bVar);
        this.this$0 = bookmarkWorker;
        this.$isBookmarked = z;
        this.$packageName = str;
        this.$appName = str2;
        this.$iconUrl = str3;
        this.$price = i2;
        this.$priceString = str4;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        BookmarkWorker$doWork$result$1 bookmarkWorker$doWork$result$1 = new BookmarkWorker$doWork$result$1(this.this$0, this.$isBookmarked, this.$packageName, this.$appName, this.$iconUrl, this.$price, this.$priceString, bVar);
        bookmarkWorker$doWork$result$1.p$ = (H) obj;
        return bookmarkWorker$doWork$result$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((BookmarkWorker$doWork$result$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            if (this.$isBookmarked) {
                c.c.a.e.d.d.b a3 = this.this$0.f12450i;
                BookmarkModel bookmarkModel = new BookmarkModel(this.$packageName, this.$iconUrl, this.$appName, this.$isBookmarked, this.$price, this.$priceString);
                this.label = 1;
                obj = a3.a(bookmarkModel, (b<? super Boolean>) this);
                if (obj == a2) {
                    return a2;
                }
            } else {
                c.c.a.e.d.d.b a4 = this.this$0.f12450i;
                String str = this.$packageName;
                this.label = 2;
                obj = a4.b(str, this);
                if (obj == a2) {
                    return a2;
                }
            }
        } else if (i2 == 1 || i2 == 2) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        return a.a(((Boolean) obj).booleanValue());
    }
}
