package com.farsitel.bazaar.ui.base.recycler.detail;

import c.c.a.n.c.d.a.a;
import com.farsitel.bazaar.core.model.Resource;
import h.f.a.b;
import h.f.b.k;
import h.h;
import h.i.e;
import java.util.List;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: BaseDetailToolbarFragment.kt */
final /* synthetic */ class BaseDetailToolbarFragment$onViewCreated$1 extends FunctionReference implements b<Resource<? extends List<? extends T>>, h> {
    public BaseDetailToolbarFragment$onViewCreated$1(a aVar) {
        super(1, aVar);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource) obj);
        return h.f14579a;
    }

    public final e e() {
        return k.a(a.class);
    }

    public final String g() {
        return "handleShareMessage(Lcom/farsitel/bazaar/core/model/Resource;)V";
    }

    public final String getName() {
        return "handleShareMessage";
    }

    public final void a(Resource<? extends List<? extends T>> resource) {
        ((a) this.receiver).b(resource);
    }
}
