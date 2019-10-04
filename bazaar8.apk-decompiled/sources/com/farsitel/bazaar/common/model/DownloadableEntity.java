package com.farsitel.bazaar.common.model;

import com.farsitel.bazaar.common.model.common.Entity;
import com.farsitel.bazaar.common.model.ui.EntityState;

/* compiled from: DownloadableEntity.kt */
public interface DownloadableEntity extends Entity {
    EntityState getEntityState();

    EntityType getEntityType();

    DownloaderProgressInfo getProgressInfo();

    void setEntityState(EntityState entityState);

    void setProgressInfo(DownloaderProgressInfo downloaderProgressInfo);
}
