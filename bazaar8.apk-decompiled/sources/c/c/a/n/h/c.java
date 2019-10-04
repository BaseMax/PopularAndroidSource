package c.c.a.n.h;

import androidx.lifecycle.LiveData;
import b.r.t;
import c.c.a.d.f.p;
import c.c.a.e.d.g.a;
import com.farsitel.bazaar.common.model.categroy.CategoryDividerItem;
import com.farsitel.bazaar.common.model.categroy.CategoryItem;
import com.farsitel.bazaar.common.model.categroy.CategoryModel;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.f.b.j;
import i.a.C1103g;
import i.a.C1125ra;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CategoryViewModel.kt */
public final class c extends p {

    /* renamed from: d  reason: collision with root package name */
    public final t<Resource<CategoryModel>> f6417d = new t<>();

    /* renamed from: e  reason: collision with root package name */
    public final a f6418e;

    public c(a aVar) {
        j.b(aVar, "categoryRepository");
        this.f6418e = aVar;
    }

    public final LiveData<Resource<CategoryModel>> e() {
        return this.f6417d;
    }

    public final void f() {
        Resource a2 = this.f6417d.a();
        ResourceState d2 = a2 != null ? a2.d() : null;
        if (!j.a((Object) d2, (Object) ResourceState.Loading.f12178a) && !j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
            C1125ra unused = C1103g.b(this, null, null, new CategoryViewModel$loadData$1(this, null), 3, null);
        }
    }

    public final void a(List<CategoryItem> list) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        CategoryDividerItem categoryDividerItem = new CategoryDividerItem(68);
        for (CategoryItem categoryItem : list) {
            if (categoryItem.getGame()) {
                arrayList.add(categoryItem);
                arrayList.add(categoryDividerItem);
            } else {
                arrayList2.add(categoryItem);
                arrayList2.add(categoryDividerItem);
            }
        }
        arrayList2.remove(arrayList2.size() - 1);
        arrayList.remove(arrayList.size() - 1);
        this.f6417d.b(new Resource(ResourceState.Success.f12179a, new CategoryModel(arrayList2, arrayList), null));
    }

    public final void a(ErrorModel errorModel) {
        this.f6417d.b(new Resource(ResourceState.Error.f12177a, null, errorModel));
    }
}
