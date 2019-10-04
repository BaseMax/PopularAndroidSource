package com.farsitel.bazaar.common.model.common;

import android.content.Context;
import c.c.a.c.h.d;
import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.f;
import h.f.b.j;

/* compiled from: DividerItem.kt */
public abstract class DividerItem implements RecyclerData {
    public final int _endMargin;
    public final int _spaceHeight;
    public final int _startMargin;
    public final boolean showDivide;

    public DividerItem() {
        this(0, false, 0, 0, 15, null);
    }

    public DividerItem(int i2, boolean z, int i3, int i4) {
        this._spaceHeight = i2;
        this.showDivide = z;
        this._startMargin = i3;
        this._endMargin = i4;
    }

    public final int endMargin(Context context) {
        j.b(context, "context");
        return d.a(context, (float) this._endMargin);
    }

    public final boolean getShowDivide() {
        return this.showDivide;
    }

    public abstract int getViewType();

    public final int spaceHeight(Context context) {
        j.b(context, "context");
        return d.a(context, (float) this._spaceHeight);
    }

    public final int startMargin(Context context) {
        j.b(context, "context");
        return d.a(context, (float) this._startMargin);
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ DividerItem(int i2, boolean z, int i3, int i4, int i5, f fVar) {
        this((i5 & 1) != 0 ? 0 : i2, (i5 & 2) != 0 ? true : z, (i5 & 4) != 0 ? 16 : i3, (i5 & 8) != 0 ? 16 : i4);
    }
}
