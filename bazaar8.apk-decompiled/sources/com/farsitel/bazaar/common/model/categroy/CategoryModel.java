package com.farsitel.bazaar.common.model.categroy;

import com.farsitel.bazaar.common.model.RecyclerData;
import h.f.b.j;
import java.util.List;

/* compiled from: CategoryModel.kt */
public final class CategoryModel {
    public final List<RecyclerData> appItems;
    public final List<RecyclerData> gameItems;

    public CategoryModel(List<? extends RecyclerData> list, List<? extends RecyclerData> list2) {
        j.b(list, "appItems");
        j.b(list2, "gameItems");
        this.appItems = list;
        this.gameItems = list2;
    }

    public final List<RecyclerData> getAppItems() {
        return this.appItems;
    }

    public final List<RecyclerData> getGameItems() {
        return this.gameItems;
    }
}
