package com.farsitel.bazaar.ui.base.recycler;

import c.c.a.n.c.d.f;
import com.farsitel.bazaar.core.model.Resource;
import h.f.a.b;
import h.f.b.k;
import h.h;
import h.i.e;
import java.util.List;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: BaseRecyclerDaggerFragment.kt */
final /* synthetic */ class BaseRecyclerDaggerFragment$onViewCreated$1$1 extends FunctionReference implements b<Resource<? extends List<? extends T>>, h> {
    public BaseRecyclerDaggerFragment$onViewCreated$1$1(f fVar) {
        super(1, fVar);
    }

    public /* bridge */ /* synthetic */ Object a(Object obj) {
        a((Resource) obj);
        return h.f14579a;
    }

    public final e e() {
        return k.a(f.class);
    }

    public final String g() {
        return "handleResourceState(Lcom/farsitel/bazaar/core/model/Resource;)V";
    }

    public final String getName() {
        return "handleResourceState";
    }

    public final void a(Resource<? extends List<? extends T>> resource) {
        ((f) this.receiver).a(resource);
    }
}
