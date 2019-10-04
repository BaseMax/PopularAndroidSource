package com.farsitel.bazaar.ui.base.recycler.loadmore;

import com.farsitel.bazaar.R;
import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.data.entity.ErrorModel;
import h.f.b.f;
import h.f.b.j;

/* compiled from: MoreItem.kt */
public final class MoreItem implements RecyclerData {

    /* renamed from: a  reason: collision with root package name */
    public static final a f12330a = new a(null);
    public final ErrorModel error;
    public final State state;

    /* compiled from: MoreItem.kt */
    public static final class a {
        public a() {
        }

        public /* synthetic */ a(f fVar) {
            this();
        }
    }

    public MoreItem(State state2, ErrorModel errorModel) {
        j.b(state2, "state");
        this.state = state2;
        this.error = errorModel;
    }

    public final ErrorModel a() {
        return this.error;
    }

    public final State b() {
        return this.state;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:6:0x001a, code lost:
        if (h.f.b.j.a((java.lang.Object) r2.error, (java.lang.Object) r3.error) != false) goto L_0x001f;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean equals(java.lang.Object r3) {
        /*
            r2 = this;
            if (r2 == r3) goto L_0x001f
            boolean r0 = r3 instanceof com.farsitel.bazaar.ui.base.recycler.loadmore.MoreItem
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.ui.base.recycler.loadmore.MoreItem r3 = (com.farsitel.bazaar.ui.base.recycler.loadmore.MoreItem) r3
            com.farsitel.bazaar.ui.base.recycler.loadmore.State r0 = r2.state
            com.farsitel.bazaar.ui.base.recycler.loadmore.State r1 = r3.state
            boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
            if (r0 == 0) goto L_0x001d
            com.farsitel.bazaar.data.entity.ErrorModel r0 = r2.error
            com.farsitel.bazaar.data.entity.ErrorModel r3 = r3.error
            boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
            if (r3 == 0) goto L_0x001d
            goto L_0x001f
        L_0x001d:
            r3 = 0
            return r3
        L_0x001f:
            r3 = 1
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.ui.base.recycler.loadmore.MoreItem.equals(java.lang.Object):boolean");
    }

    public int getViewType() {
        return R.layout.item_load_more;
    }

    public int hashCode() {
        State state2 = this.state;
        int i2 = 0;
        int hashCode = (state2 != null ? state2.hashCode() : 0) * 31;
        ErrorModel errorModel = this.error;
        if (errorModel != null) {
            i2 = errorModel.hashCode();
        }
        return hashCode + i2;
    }

    public String toString() {
        return "MoreItem(state=" + this.state + ", error=" + this.error + ")";
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MoreItem(State state2, ErrorModel errorModel, int i2, f fVar) {
        this(state2, (i2 & 2) != 0 ? null : errorModel);
    }
}
