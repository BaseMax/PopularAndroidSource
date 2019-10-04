package com.farsitel.bazaar.common.model;

import com.farsitel.bazaar.common.model.common.Entity;

/* compiled from: PurchasableEntity.kt */
public interface PurchasableEntity extends Entity {
    boolean isBought();

    void setBought(boolean z);
}
