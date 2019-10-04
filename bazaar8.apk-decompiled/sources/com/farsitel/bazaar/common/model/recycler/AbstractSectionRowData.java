package com.farsitel.bazaar.common.model.recycler;

import java.util.List;

/* compiled from: AbstractSectionRowData.kt */
public interface AbstractSectionRowData<T> {
    String getActionLabel();

    int getCurrentPosition();

    int getCurrentPositionOffset();

    List<T> getItems();

    int getOrientation();

    String getReferrer();

    String getSlug();

    String getTitle();

    void setCurrentPosition(int i2);

    void setCurrentPositionOffset(int i2);
}
