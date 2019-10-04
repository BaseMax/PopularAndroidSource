package c.c.a.e.d.d.a;

import androidx.lifecycle.LiveData;
import b.r.D;
import c.c.a.e.d.d.a.a;
import com.farsitel.bazaar.common.model.bookmark.BookmarkModel;
import com.farsitel.bazaar.data.entity.EntityDatabaseStatus;
import com.farsitel.bazaar.data.feature.bookmark.local.BookmarkStatus;
import h.a.m;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;

/* compiled from: BookmarkLocalDataSource.kt */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public final a f5058a;

    public l(a aVar) {
        j.b(aVar, "bookmarkDao");
        this.f5058a = aVar;
    }

    public final LiveData<Boolean> a(String str) {
        j.b(str, "packageName");
        return D.a(this.f5058a.b(str), k.f5057a);
    }

    public final void b(String str) {
        j.b(str, "packageName");
        j a2 = this.f5058a.a(str);
        if (a2 != null) {
            this.f5058a.b(j.a(a2, null, null, null, 0, null, BookmarkStatus.REMOVE, EntityDatabaseStatus.PENDING, 31, null));
        }
    }

    public final List<j> c() {
        return this.f5058a.a(EntityDatabaseStatus.PENDING);
    }

    public final void a(BookmarkModel bookmarkModel) {
        j.b(bookmarkModel, "bookmarkModel");
        j a2 = this.f5058a.a(bookmarkModel.getPackageName());
        j a3 = a2 != null ? j.a(a2, null, null, null, 0, null, BookmarkStatus.BOOKMARK, EntityDatabaseStatus.PENDING, 31, null) : null;
        if (a3 == null) {
            a aVar = this.f5058a;
            j jVar = new j(bookmarkModel.getPackageName(), bookmarkModel.getIconUrl(), bookmarkModel.getAppName(), bookmarkModel.getPrice(), bookmarkModel.getPriceString(), BookmarkStatus.BOOKMARK, null, 64, null);
            aVar.a(jVar);
            return;
        }
        this.f5058a.b(a3);
    }

    public final LiveData<List<j>> b() {
        return a.C0079a.a(this.f5058a, null, 1, null);
    }

    public final void a(List<BookmarkModel> list) {
        j.b(list, "bookmarkModels");
        a aVar = this.f5058a;
        ArrayList arrayList = new ArrayList(m.a(list, 10));
        for (BookmarkModel bookmarkModel : list) {
            j jVar = new j(bookmarkModel.getPackageName(), bookmarkModel.getIconUrl(), bookmarkModel.getAppName(), bookmarkModel.getPrice(), bookmarkModel.getPriceString(), BookmarkStatus.BOOKMARK, EntityDatabaseStatus.SENT);
            arrayList.add(jVar);
        }
        aVar.a((List<j>) arrayList);
    }

    public final void a(String str, boolean z) {
        j.b(str, "packageName");
        j a2 = this.f5058a.a(str);
        if (a2 == null) {
            return;
        }
        if ((z && a2.a() == BookmarkStatus.BOOKMARK) || (!z && a2.a() == BookmarkStatus.REMOVE)) {
            if (z) {
                a2.a(EntityDatabaseStatus.SENT);
                this.f5058a.b(a2);
                return;
            }
            this.f5058a.c(str);
        }
    }

    public final void a() {
        this.f5058a.a();
    }
}
