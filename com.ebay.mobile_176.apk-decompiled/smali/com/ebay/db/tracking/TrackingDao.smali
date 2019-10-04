.class public abstract Lcom/ebay/db/tracking/TrackingDao;
.super Ljava/lang/Object;
.source "TrackingDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# static fields
.field private static final STALE_TIME:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/ebay/db/tracking/TrackingDao;->STALE_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract delete(J)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM trackingentity WHERE _id = :id"
    .end annotation
.end method

.method public abstract delete(Lcom/ebay/db/tracking/TrackingEntity;)I
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract getCount()I
    .annotation build Landroidx/room/Query;
        value = "SELECT COUNT(*) FROM trackingentity"
    .end annotation
.end method

.method public abstract insert(Lcom/ebay/db/tracking/TrackingEntity;)J
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
            "Lcom/ebay/db/tracking/TrackingEntity;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract insert([Lcom/ebay/db/tracking/TrackingEntity;)Ljava/util/List;
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/ebay/db/tracking/TrackingEntity;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeAll()I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM trackingentity"
    .end annotation
.end method

.method public removeStaleEntries()I
    .locals 4

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/ebay/db/tracking/TrackingDao;->STALE_TIME:J

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/ebay/db/tracking/TrackingDao;->removeStaleEntries(J)I

    move-result v0

    return v0
.end method

.method abstract removeStaleEntries(J)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM trackingentity WHERE dirty = 1 OR createdTime <= :time"
    .end annotation
.end method

.method public abstract select(J)Lcom/ebay/db/tracking/TrackingEntity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM trackingentity WHERE _id = :id"
    .end annotation
.end method

.method public abstract selectAll()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM trackingentity"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/db/tracking/TrackingEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcom/ebay/db/tracking/TrackingEntity;)V
    .annotation build Landroidx/room/Update;
        onConflict = 0x1
    .end annotation
.end method
