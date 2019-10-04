.class public interface abstract Lcom/ebay/db/search/RecentSearchesDao;
.super Ljava/lang/Object;
.source "RecentSearchesDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# virtual methods
.method public abstract deleteAll(Ljava/lang/String;)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM RecentSearchEntity WHERE :userId = userid"
    .end annotation
.end method

.method public abstract deleteLeastRecentEntries(Ljava/lang/String;I)V
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM RecentSearchEntity WHERE uid IN (SELECT uid FROM RecentSearchEntity rse WHERE :userId = userid ORDER BY rse.timestamp ASC LIMIT :limit)"
    .end annotation
.end method

.method public abstract deleteTextEntries(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM RecentSearchEntity WHERE thumbnail is NULL AND :userId = userid"
    .end annotation
.end method

.method public abstract getCount(Ljava/lang/String;)I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(rse.uid) FROM RecentSearchEntity rse  WHERE :userId = userid"
    .end annotation
.end method

.method public abstract insert(Lcom/ebay/db/search/RecentSearchEntity;)J
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract insert(Ljava/util/List;)Ljava/util/List;
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/db/search/RecentSearchEntity;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selectAll(Ljava/lang/String;I)Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT rse.* FROM RecentSearchEntity rse WHERE :userId = userid ORDER BY rse.timestamp DESC LIMIT :limit"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/ebay/db/search/RecentSearchEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract selectWithThumbnail(Ljava/lang/String;[B)Lcom/ebay/db/search/RecentSearchEntity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/Query;
        value = "SELECT rse.* From RecentSearchEntity rse WHERE :userId = userid AND rse.thumbnail = :thumbnail LIMIT 1"
    .end annotation
.end method

.method public abstract update(Lcom/ebay/db/search/RecentSearchEntity;)V
    .annotation build Landroidx/room/Update;
        onConflict = 0x1
    .end annotation
.end method
