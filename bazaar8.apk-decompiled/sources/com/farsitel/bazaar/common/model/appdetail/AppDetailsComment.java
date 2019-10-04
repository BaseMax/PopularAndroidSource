package com.farsitel.bazaar.common.model.appdetail;

import h.f.b.j;
import java.util.List;

/* compiled from: AppDetail.kt */
public final class AppDetailsComment {
    public final String defaultSortTypeChoice;
    public final List<SortTypeChoice> sortTypeChoices;

    public AppDetailsComment(List<SortTypeChoice> list, String str) {
        j.b(str, "defaultSortTypeChoice");
        this.sortTypeChoices = list;
        this.defaultSortTypeChoice = str;
    }

    public final String getDefaultSortTypeChoice() {
        return this.defaultSortTypeChoice;
    }

    public final List<SortTypeChoice> getSortTypeChoices() {
        return this.sortTypeChoices;
    }
}
