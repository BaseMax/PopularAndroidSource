package com.farsitel.bazaar.core.model;

import com.farsitel.bazaar.data.entity.ErrorModel;
import h.f.b.f;
import h.f.b.j;
import java.io.Serializable;

/* compiled from: Resource.kt */
public final class Resource<T> implements Serializable {
    public final T data;
    public final ErrorModel failure;
    public final ResourceState resourceState;

    public Resource(ResourceState resourceState2, T t, ErrorModel errorModel) {
        j.b(resourceState2, "resourceState");
        this.resourceState = resourceState2;
        this.data = t;
        this.failure = errorModel;
    }

    public final T a() {
        return this.data;
    }

    public final Throwable b() {
        ErrorModel errorModel = this.failure;
        return errorModel != null ? errorModel : new Throwable("null");
    }

    public final ErrorModel c() {
        return this.failure;
    }

    public final ResourceState d() {
        return this.resourceState;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:8:0x0024, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.failure, (java.lang.Object) r3.failure) != false) goto L_0x0029;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x0029
            boolean r0 = r3 instanceof com.farsitel.bazaar.core.model.Resource
            if (r0 == 0) goto L_0x0027
            com.farsitel.bazaar.core.model.Resource r3 = (com.farsitel.bazaar.core.model.Resource) r3
            com.farsitel.bazaar.core.model.ResourceState r0 = r2.resourceState
            com.farsitel.bazaar.core.model.ResourceState r1 = r3.resourceState
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            T r0 = r2.data
            T r1 = r3.data
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x0027
            com.farsitel.bazaar.data.entity.ErrorModel r0 = r2.failure
            com.farsitel.bazaar.data.entity.ErrorModel r3 = r3.failure
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x0027
            goto L_0x0029
        L_0x0027:
            r3 = 0
            return r3
        L_0x0029:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.core.model.Resource.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        ResourceState resourceState2 = this.resourceState;
        int i2 = 0;
        int hashCode = (resourceState2 != null ? resourceState2.hashCode() : 0) * 31;
        T t = this.data;
        int hashCode2 = (hashCode + (t != null ? t.hashCode() : 0)) * 31;
        ErrorModel errorModel = this.failure;
        if (errorModel != null) {
            i2 = errorModel.hashCode();
        }
        return hashCode2 + i2;
    }

    public String toString() {
        return "Resource(resourceState=" + this.resourceState + ", data=" + this.data + ", failure=" + this.failure + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ Resource(ResourceState resourceState2, Object obj, ErrorModel errorModel, int i2, f fVar) {
        this(resourceState2, (i2 & 2) != 0 ? null : obj, (i2 & 4) != 0 ? null : errorModel);
    }
}
