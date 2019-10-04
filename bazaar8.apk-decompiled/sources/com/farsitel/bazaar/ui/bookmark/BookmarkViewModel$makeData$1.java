package com.farsitel.bazaar.ui.bookmark;

import androidx.lifecycle.LiveData;
import c.c.a.c.a.a;
import com.farsitel.bazaar.common.model.page.ListItem;
import h.c.b;
import h.c.b.a.d;
import h.e;
import h.f.a.c;
import h.f.b.j;
import h.h;
import i.a.H;
import java.util.List;
import kotlin.coroutines.jvm.internal.SuspendLambda;

@d(c = "com.farsitel.bazaar.ui.bookmark.BookmarkViewModel$makeData$1", f = "BookmarkViewModel.kt", l = {27}, m = "invokeSuspend")
/* compiled from: BookmarkViewModel.kt */
final class BookmarkViewModel$makeData$1 extends SuspendLambda implements c<H, b<? super h>, Object> {
    public final /* synthetic */ String $pageName;
    public int label;
    public H p$;
    public final /* synthetic */ c.c.a.n.d.b this$0;

    @d(c = "com.farsitel.bazaar.ui.bookmark.BookmarkViewModel$makeData$1$1", f = "BookmarkViewModel.kt", l = {27}, m = "invokeSuspend")
    /* renamed from: com.farsitel.bazaar.ui.bookmark.BookmarkViewModel$makeData$1$1  reason: invalid class name */
    /* compiled from: BookmarkViewModel.kt */
    static final class AnonymousClass1 extends SuspendLambda implements c<H, b<? super LiveData<List<? extends ListItem.App>>>, Object> {
        public int label;
        public H p$;
        public final /* synthetic */ BookmarkViewModel$makeData$1 this$0;

        {
            this.this$0 = r1;
        }

        public final b<h> a(Object obj, b<?> bVar) {
            j.b(bVar, "completion");
            AnonymousClass1 r0 = new AnonymousClass1(this.this$0, bVar);
            r0.p$ = (H) obj;
            return r0;
        }

        public final Object b(Object obj, Object obj2) {
            return ((AnonymousClass1) a(obj, (b) obj2)).d(h.f14579a);
        }

        public final Object d(Object obj) {
            Object a2 = h.c.a.b.a();
            int i2 = this.label;
            if (i2 == 0) {
                e.a(obj);
                H h2 = this.p$;
                c.c.a.e.d.d.b a3 = this.this$0.this$0.z;
                this.label = 1;
                obj = a3.a(this);
                if (obj == a2) {
                    return a2;
                }
            } else if (i2 == 1) {
                e.a(obj);
            } else {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            return obj;
        }
    }

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public BookmarkViewModel$makeData$1(c.c.a.n.d.b bVar, String str, b bVar2) {
        super(2, bVar2);
        this.this$0 = bVar;
        this.$pageName = str;
    }

    public final b<h> a(Object obj, b<?> bVar) {
        j.b(bVar, "completion");
        BookmarkViewModel$makeData$1 bookmarkViewModel$makeData$1 = new BookmarkViewModel$makeData$1(this.this$0, this.$pageName, bVar);
        bookmarkViewModel$makeData$1.p$ = (H) obj;
        return bookmarkViewModel$makeData$1;
    }

    public final Object b(Object obj, Object obj2) {
        return ((BookmarkViewModel$makeData$1) a(obj, (b) obj2)).d(h.f14579a);
    }

    public final Object d(Object obj) {
        Object a2 = h.c.a.b.a();
        int i2 = this.label;
        if (i2 == 0) {
            e.a(obj);
            H h2 = this.p$;
            AnonymousClass1 r4 = new AnonymousClass1(this, null);
            this.label = 1;
            obj = a.a(r4, this);
            if (obj == a2) {
                return a2;
            }
        } else if (i2 == 1) {
            e.a(obj);
        } else {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        LiveData liveData = (LiveData) obj;
        c.c.a.n.d.b bVar = this.this$0;
        j.a((Object) liveData, "source");
        bVar.b(liveData, new BookmarkViewModel$makeData$1$invokeSuspend$$inlined$also$lambda$1(this));
        return h.f14579a;
    }
}
