.class public interface abstract Lcom/farsitel/bazaar/common/model/DownloadableEntity;
.super Ljava/lang/Object;
.source "DownloadableEntity.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/common/Entity;


# virtual methods
.method public abstract getEntityState()Lcom/farsitel/bazaar/common/model/ui/EntityState;
.end method

.method public abstract getEntityType()Lcom/farsitel/bazaar/common/model/EntityType;
.end method

.method public abstract getProgressInfo()Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;
.end method

.method public abstract setEntityState(Lcom/farsitel/bazaar/common/model/ui/EntityState;)V
.end method

.method public abstract setProgressInfo(Lcom/farsitel/bazaar/common/model/DownloaderProgressInfo;)V
.end method
