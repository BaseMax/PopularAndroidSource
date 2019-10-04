.class public abstract Lcom/ebay/db/foundations/dcs/DcsDao;
.super Ljava/lang/Object;
.source "DcsDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# static fields
.field public static final DEVELOPER_OVERRIDE_PRIORITY:I = 0x0

.field public static final SERVICE_PRIORITY_START:I = 0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAll()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM dcs_property ORDER BY propertyName, priority ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getAllSynchronous()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM dcs_property ORDER BY propertyName, priority ASC"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getByName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM dcs_property WHERE propertyName = :propertyName ORDER BY priority"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getByNameSynchronous(Ljava/lang/String;)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM dcs_property WHERE propertyName = :propertyName ORDER BY priority"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeveloperOverrideByName(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM dcs_property WHERE propertyName = :propertyName AND priority = 0 ORDER BY priority LIMIT 1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastServiceUpdateTime()Landroidx/lifecycle/LiveData;
    .annotation build Landroidx/room/Query;
        value = "SELECT state_lastServiceUpdate FROM dcs_property WHERE priority >= 100 LIMIT 1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastServiceUpdateTimeSynchronous()J
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Landroidx/room/Query;
        value = "SELECT state_lastServiceUpdate FROM dcs_property WHERE priority >= 100 LIMIT 1"
    .end annotation
.end method

.method public abstract insert(Ljava/lang/Iterable;)V
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeAllDeveloperOverrideEntries()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM dcs_property WHERE priority = 0"
    .end annotation
.end method

.method public abstract removeAllServiceEntries()V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM dcs_property WHERE priority >= 100"
    .end annotation
.end method

.method public abstract removeAllServiceEntriesOlderThan(Ljava/util/Date;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM dcs_property WHERE state_lastServiceUpdate < :timeStamp AND priority >= 100"
    .end annotation
.end method

.method public abstract removeDeveloperOverride(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM dcs_property WHERE propertyName = :propertyName AND priority = 0"
    .end annotation
.end method

.method public setDeveloperOverride(Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;)V
    .locals 1
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .line 162
    iget v0, p1, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->priority:I

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p1, Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;->propertyName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ebay/db/foundations/dcs/DcsDao;->removeDeveloperOverride(Ljava/lang/String;)V

    .line 165
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/db/foundations/dcs/DcsDao;->insert(Ljava/lang/Iterable;)V

    return-void

    .line 163
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public abstract setLastServiceUpdateTime(J)V
    .annotation build Landroidx/room/Query;
        value = "UPDATE dcs_property SET state_lastServiceUpdate = :serviceUpdateTime"
    .end annotation
.end method

.method public updateDcsState(Lcom/ebay/db/foundations/dcs/DcsStateEntity;)V
    .locals 10
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .line 201
    iget-object v1, p1, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->lastUpdate:Ljava/util/Date;

    iget-object v2, p1, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->ebaySite:Lcom/ebay/db/foundations/dcs/DcsSiteCode;

    iget v3, p1, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->rolloutThreshold:F

    iget-boolean v4, p1, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->devOverridesEnabled:Z

    iget-object v5, p1, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->lastServiceUpdate:Ljava/util/Date;

    iget-object v6, p1, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->country:Lcom/ebay/nautilus/base/CountryCode;

    iget-object v7, p1, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->language:Lcom/ebay/nautilus/base/LanguageCode;

    iget-object v8, p1, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->isGbh:Ljava/lang/Boolean;

    iget-object v9, p1, Lcom/ebay/db/foundations/dcs/DcsStateEntity;->entityTag:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/ebay/db/foundations/dcs/DcsDao;->updateDcsStateFields(Ljava/util/Date;Lcom/ebay/db/foundations/dcs/DcsSiteCode;FZLjava/util/Date;Lcom/ebay/nautilus/base/CountryCode;Lcom/ebay/nautilus/base/LanguageCode;Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method abstract updateDcsStateFields(Ljava/util/Date;Lcom/ebay/db/foundations/dcs/DcsSiteCode;FZLjava/util/Date;Lcom/ebay/nautilus/base/CountryCode;Lcom/ebay/nautilus/base/LanguageCode;Ljava/lang/Boolean;Ljava/lang/String;)V
    .param p1    # Ljava/util/Date;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/db/foundations/dcs/DcsSiteCode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/util/Date;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/ebay/nautilus/base/CountryCode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/ebay/nautilus/base/LanguageCode;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "UPDATE dcs_property SET state_lastUpdate = :lastUpdate, state_lastServiceUpdate = :lastServiceUpdate, state_eBaySite = :ebaySite, state_rolloutThreshold = :rolloutThreshold, state_devOverridesEnabled = :devOverridesEnabled, state_country = :country, state_language = :language, state_isGbh = :isGbh, state_entityTag = :entityTag"
    .end annotation
.end method

.method public updateServiceEntities(Lcom/ebay/db/foundations/dcs/DcsStateEntity;Ljava/lang/Iterable;)V
    .locals 0
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/db/foundations/dcs/DcsStateEntity;",
            "Ljava/lang/Iterable<",
            "Lcom/ebay/db/foundations/dcs/DcsPropertyEntity;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lcom/ebay/db/foundations/dcs/DcsDao;->removeAllServiceEntries()V

    .line 142
    invoke-virtual {p0, p1}, Lcom/ebay/db/foundations/dcs/DcsDao;->updateDcsState(Lcom/ebay/db/foundations/dcs/DcsStateEntity;)V

    .line 143
    invoke-virtual {p0, p2}, Lcom/ebay/db/foundations/dcs/DcsDao;->insert(Ljava/lang/Iterable;)V

    return-void
.end method
