package com.google.android.gms.c;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

final class y implements a<Void, List<TResult>> {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Collection f2719a;

    y(Collection collection) {
        this.f2719a = collection;
    }

    public final /* synthetic */ Object then(f fVar) throws Exception {
        if (this.f2719a.size() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (f result : this.f2719a) {
            arrayList.add(result.getResult());
        }
        return arrayList;
    }
}
