package com.farsitel.bazaar.ui.category;

import com.farsitel.bazaar.common.model.categroy.CategoryModel;
import com.farsitel.bazaar.core.model.Resource;
import com.farsitel.bazaar.core.model.ResourceState;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.f.a.b;
import h.f.b.j;
import h.h;
import kotlin.jvm.internal.Lambda;

/* compiled from: CategoriesFragment.kt */
final class CategoriesFragment$onViewCreated$$inlined$createViewModel$lambda$1 extends Lambda implements b<Resource<? extends CategoryModel>, h> {
    public final /* synthetic */ CategoriesFragment this$0;

    /* JADX INFO: super call moved to the top of the method (can break code semantics) */
    public CategoriesFragment$onViewCreated$$inlined$createViewModel$lambda$1(CategoriesFragment categoriesFragment) {
        super(1);
        this.this$0 = categoriesFragment;
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource<CategoryModel>) (Resource) obj);
        return h.f14579a;
    }

    public final void a(Resource<CategoryModel> resource) {
        CategoriesFragment.a(this.this$0, false, 1, null);
        this.this$0.Oa();
        ResourceState d2 = resource != null ? resource.d() : null;
        if (j.a((Object) d2, (Object) ResourceState.Success.f12179a)) {
            CategoriesFragment categoriesFragment = this.this$0;
            CategoryModel a2 = resource.a();
            if (a2 != null) {
                categoriesFragment.a(a2);
            } else {
                j.a();
                throw null;
            }
        } else if (j.a((Object) d2, (Object) ResourceState.Error.f12177a)) {
            CategoriesFragment categoriesFragment2 = this.this$0;
            ErrorModel c2 = resource.c();
            if (c2 != null) {
                categoriesFragment2.a(c2, false);
            } else {
                j.a();
                throw null;
            }
        } else if (j.a((Object) d2, (Object) ResourceState.Loading.f12178a)) {
            this.this$0.k(true);
        }
    }
}
