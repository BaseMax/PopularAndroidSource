package com.farsitel.bazaar.common.model.page;

import com.farsitel.bazaar.common.model.RecyclerData;
import com.farsitel.bazaar.common.model.recycler.AbstractSectionRowData;
import h.f.b.f;
import h.f.b.j;
import java.util.List;

/* compiled from: VitrinSectionItems.kt */
public class MovieVitrinSection implements AbstractSectionRowData<MovieItem>, RecyclerData {
    public final String _actionLabel;
    public final String _title;
    public final List<MovieItem> apps;
    public int currentPosition;
    public int currentPositionOffset;
    public final String referrer;
    public final String slug;
    public final int viewType;

    public MovieVitrinSection(List<? extends MovieItem> list, String str, String str2, String str3, String str4, int i2) {
        j.b(list, "apps");
        j.b(str, "_title");
        j.b(str4, "referrer");
        this.apps = list;
        this._title = str;
        this._actionLabel = str2;
        this.slug = str3;
        this.referrer = str4;
        this.viewType = i2;
    }

    public String getActionLabel() {
        return this._actionLabel;
    }

    public int getCurrentPosition() {
        return this.currentPosition;
    }

    public int getCurrentPositionOffset() {
        return this.currentPositionOffset;
    }

    public List<MovieItem> getItems() {
        return this.apps;
    }

    public int getOrientation() {
        return 0;
    }

    public String getReferrer() {
        return this.referrer;
    }

    public String getSlug() {
        return this.slug;
    }

    public String getTitle() {
        return this._title;
    }

    public int getViewType() {
        return this.viewType;
    }

    public void setCurrentPosition(int i2) {
        this.currentPosition = i2;
    }

    public void setCurrentPositionOffset(int i2) {
        this.currentPositionOffset = i2;
    }

    /* JADX INFO: this call moved to the top of the method (can break code semantics) */
    public /* synthetic */ MovieVitrinSection(List list, String str, String str2, String str3, String str4, int i2, int i3, f fVar) {
        this(list, str, str2, str3, str4, (i3 & 32) != 0 ? CommonItemType.VITRIN_VIDEO.getValue() : i2);
    }
}
