package com.google.android.gms.c;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

final class z implements a<Void, List<f<?>>> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Collection f2720a;

    z(Collection collection) {
        this.f2720a = collection;
    }

    public final /* synthetic */ Object then(f fVar) throws Exception {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f2720a);
        return arrayList;
    }
}
