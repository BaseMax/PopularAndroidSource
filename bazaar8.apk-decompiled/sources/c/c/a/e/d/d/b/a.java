package c.c.a.e.d.d.b;

import com.farsitel.bazaar.common.model.bookmark.BookmarkModel;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;
import java.util.List;

/* compiled from: BookmarkRemoteDataSource.kt */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final e f5062a;

    public a(e eVar) {
        j.b(eVar, "bookmarkService");
        this.f5062a = eVar;
    }

    public final Object a(String str, b<? super Either<Boolean>> bVar) {
        return c.c.a.e.c.b.a(this.f5062a.a(new c(str, true)), BookmarkRemoteDataSource$bookmarkApp$2.f12216a, bVar);
    }

    public final Object b(String str, b<? super Either<Boolean>> bVar) {
        return c.c.a.e.c.b.a(this.f5062a.a(new c(str, false)), BookmarkRemoteDataSource$removeBookmark$2.f12217a, bVar);
    }

    public final Object a(b<? super Either<? extends List<BookmarkModel>>> bVar) {
        return c.c.a.e.c.b.a(this.f5062a.a(new g()), BookmarkRemoteDataSource$syncBookmark$2.f12218a, bVar);
    }
}
