package c.c.a.e.d.g.a;

import com.farsitel.bazaar.common.model.categroy.CategoryItem;
import com.farsitel.bazaar.data.entity.Either;
import h.c.b;
import h.f.b.j;
import java.util.List;

/* compiled from: CategoryRemoteDataSource.kt */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public final f f5075a;

    public c(f fVar) {
        j.b(fVar, "categoryService");
        this.f5075a = fVar;
    }

    public final Object a(b<? super Either<? extends List<CategoryItem>>> bVar) {
        return c.c.a.e.c.b.a(this.f5075a.a(new e()), CategoryRemoteDataSource$getCategories$2.f12221a, bVar);
    }
}
