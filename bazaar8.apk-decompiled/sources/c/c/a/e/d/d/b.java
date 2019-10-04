package c.c.a.e.d.d;

import androidx.lifecycle.LiveData;
import b.r.D;
import c.c.a.e.d.d.a.l;
import c.c.a.e.d.d.b.a;
import com.farsitel.bazaar.common.model.bookmark.BookmarkModel;
import com.farsitel.bazaar.common.model.page.ListItem;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BookmarkRepository.kt */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public final l f5060a;

    /* renamed from: b  reason: collision with root package name */
    public final a f5061b;

    public b(l lVar, a aVar) {
        j.b(lVar, "bookmarkLocalDataSource");
        j.b(aVar, "bookmarkRemoteDataSource");
        this.f5060a = lVar;
        this.f5061b = aVar;
    }

    public final Object a(String str, h.c.b<? super LiveData<Boolean>> bVar) {
        return this.f5060a.a(str);
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0064  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object b(java.lang.String r5, h.c.b<? super java.lang.Boolean> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$removeBookmark$1
            if (r0 == 0) goto L_0x0013
            r0 = r6
            com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$removeBookmark$1 r0 = (com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$removeBookmark$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$removeBookmark$1 r0 = new com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$removeBookmark$1
            r0.<init>(r4, r6)
        L_0x0018:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0039
            if (r2 != r3) goto L_0x0031
            java.lang.Object r5 = r0.L$1
            java.lang.String r5 = (java.lang.String) r5
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.d.b r0 = (c.c.a.e.d.d.b) r0
            h.e.a((java.lang.Object) r6)
            goto L_0x0051
        L_0x0031:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x0039:
            h.e.a((java.lang.Object) r6)
            c.c.a.e.d.d.a.l r6 = r4.f5060a
            r6.b(r5)
            c.c.a.e.d.d.b.a r6 = r4.f5061b
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r6 = r6.b(r5, r0)
            if (r6 != r1) goto L_0x0050
            return r1
        L_0x0050:
            r0 = r4
        L_0x0051:
            com.farsitel.bazaar.data.entity.Either r6 = (com.farsitel.bazaar.data.entity.Either) r6
            r1 = 0
            java.lang.Boolean r2 = h.c.b.a.a.a((boolean) r1)
            java.lang.Object r6 = com.farsitel.bazaar.data.entity.EitherKt.getOrDefault(r6, r2)
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L_0x006a
            c.c.a.e.d.d.a.l r6 = r0.f5060a
            r6.a(r5, r1)
            r1 = 1
        L_0x006a:
            java.lang.Boolean r5 = h.c.b.a.a.a((boolean) r1)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.d.b.b(java.lang.String, h.c.b):java.lang.Object");
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0039  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0068  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object a(com.farsitel.bazaar.common.model.bookmark.BookmarkModel r5, h.c.b<? super java.lang.Boolean> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$bookmarkApp$1
            if (r0 == 0) goto L_0x0013
            r0 = r6
            com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$bookmarkApp$1 r0 = (com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$bookmarkApp$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$bookmarkApp$1 r0 = new com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$bookmarkApp$1
            r0.<init>(r4, r6)
        L_0x0018:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0039
            if (r2 != r3) goto L_0x0031
            java.lang.Object r5 = r0.L$1
            com.farsitel.bazaar.common.model.bookmark.BookmarkModel r5 = (com.farsitel.bazaar.common.model.bookmark.BookmarkModel) r5
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.d.b r0 = (c.c.a.e.d.d.b) r0
            h.e.a((java.lang.Object) r6)
            goto L_0x0055
        L_0x0031:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L_0x0039:
            h.e.a((java.lang.Object) r6)
            c.c.a.e.d.d.a.l r6 = r4.f5060a
            r6.a((com.farsitel.bazaar.common.model.bookmark.BookmarkModel) r5)
            c.c.a.e.d.d.b.a r6 = r4.f5061b
            java.lang.String r2 = r5.getPackageName()
            r0.L$0 = r4
            r0.L$1 = r5
            r0.label = r3
            java.lang.Object r6 = r6.a(r2, r0)
            if (r6 != r1) goto L_0x0054
            return r1
        L_0x0054:
            r0 = r4
        L_0x0055:
            com.farsitel.bazaar.data.entity.Either r6 = (com.farsitel.bazaar.data.entity.Either) r6
            r1 = 0
            java.lang.Boolean r2 = h.c.b.a.a.a((boolean) r1)
            java.lang.Object r6 = com.farsitel.bazaar.data.entity.EitherKt.getOrDefault(r6, r2)
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r6 = r6.booleanValue()
            if (r6 == 0) goto L_0x0072
            c.c.a.e.d.d.a.l r6 = r0.f5060a
            java.lang.String r5 = r5.getPackageName()
            r6.a(r5, r3)
            r1 = 1
        L_0x0072:
            java.lang.Boolean r5 = h.c.b.a.a.a((boolean) r1)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.d.b.a(com.farsitel.bazaar.common.model.bookmark.BookmarkModel, h.c.b):java.lang.Object");
    }

    public final List<BookmarkModel> b() {
        List<c.c.a.e.d.d.a.j> c2 = this.f5060a.c();
        ArrayList arrayList = new ArrayList(m.a(c2, 10));
        for (c.c.a.e.d.d.a.j h2 : c2) {
            arrayList.add(h2.h());
        }
        return arrayList;
    }

    public final Object a(h.c.b<? super LiveData<List<ListItem.App>>> bVar) {
        return D.a(this.f5060a.b(), a.f5034a);
    }

    public final void a() {
        this.f5060a.a();
    }

    /* JADX WARNING: Removed duplicated region for block: B:12:0x0035  */
    /* JADX WARNING: Removed duplicated region for block: B:18:0x0051  */
    /* JADX WARNING: Removed duplicated region for block: B:8:0x0023  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final java.lang.Object b(h.c.b<? super com.farsitel.bazaar.data.entity.Either<? extends java.util.List<com.farsitel.bazaar.common.model.bookmark.BookmarkModel>>> r5) {
        /*
            r4 = this;
            boolean r0 = r5 instanceof com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$syncBookmarks$1
            if (r0 == 0) goto L_0x0013
            r0 = r5
            com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$syncBookmarks$1 r0 = (com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$syncBookmarks$1) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L_0x0013
            int r1 = r1 - r2
            r0.label = r1
            goto L_0x0018
        L_0x0013:
            com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$syncBookmarks$1 r0 = new com.farsitel.bazaar.data.feature.bookmark.BookmarkRepository$syncBookmarks$1
            r0.<init>(r4, r5)
        L_0x0018:
            java.lang.Object r5 = r0.result
            java.lang.Object r1 = h.c.a.b.a()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L_0x0035
            if (r2 != r3) goto L_0x002d
            java.lang.Object r0 = r0.L$0
            c.c.a.e.d.d.b r0 = (c.c.a.e.d.d.b) r0
            h.e.a((java.lang.Object) r5)
            goto L_0x0046
        L_0x002d:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L_0x0035:
            h.e.a((java.lang.Object) r5)
            c.c.a.e.d.d.b.a r5 = r4.f5061b
            r0.L$0 = r4
            r0.label = r3
            java.lang.Object r5 = r5.a(r0)
            if (r5 != r1) goto L_0x0045
            return r1
        L_0x0045:
            r0 = r4
        L_0x0046:
            r1 = r5
            com.farsitel.bazaar.data.entity.Either r1 = (com.farsitel.bazaar.data.entity.Either) r1
            java.lang.Object r1 = com.farsitel.bazaar.data.entity.EitherKt.getOrNull(r1)
            java.util.List r1 = (java.util.List) r1
            if (r1 == 0) goto L_0x0056
            c.c.a.e.d.d.a.l r0 = r0.f5060a
            r0.a((java.util.List<com.farsitel.bazaar.common.model.bookmark.BookmarkModel>) r1)
        L_0x0056:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: c.c.a.e.d.d.b.b(h.c.b):java.lang.Object");
    }
}
