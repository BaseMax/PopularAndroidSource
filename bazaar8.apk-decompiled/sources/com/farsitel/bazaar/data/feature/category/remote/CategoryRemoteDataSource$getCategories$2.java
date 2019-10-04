package com.farsitel.bazaar.data.feature.category.remote;

import c.c.a.e.d.g.a.a;
import c.c.a.e.f.g;
import com.farsitel.bazaar.common.model.categroy.CategoryItem;
import h.a.m;
import h.f.a.b;
import h.f.b.j;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.Lambda;

/* compiled from: CategoryRemoteDataSource.kt */
final class CategoryRemoteDataSource$getCategories$2 extends Lambda implements b<a, List<? extends CategoryItem>> {

    /* renamed from: a  reason: collision with root package name */
    public static final CategoryRemoteDataSource$getCategories$2 f12221a = new CategoryRemoteDataSource$getCategories$2();

    public CategoryRemoteDataSource$getCategories$2() {
        super(1);
    }

    public final List<CategoryItem> a(a aVar) {
        j.b(aVar, "categoryDto");
        List<c.c.a.e.d.g.a.b> a2 = aVar.a();
        ArrayList arrayList = new ArrayList(m.a(a2, 10));
        for (c.c.a.e.d.g.a.b a3 : a2) {
            arrayList.add(g.a(a3));
        }
        return arrayList;
    }
}
