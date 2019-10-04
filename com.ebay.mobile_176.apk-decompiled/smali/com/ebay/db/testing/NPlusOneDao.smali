.class public abstract Lcom/ebay/db/testing/NPlusOneDao;
.super Ljava/lang/Object;
.source "NPlusOneDao.java"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract deleteByRequestUrl(Ljava/lang/String;)I
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Landroidx/room/Query;
        value = "DELETE FROM n_plus_one WHERE request_url = :requestUrl"
    .end annotation
.end method

.method public abstract findAll()Ljava/util/List;
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM n_plus_one ORDER BY request_url"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/db/testing/NPlusOneEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract findFirstAsync(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM n_plus_one WHERE request_url = :requestUrl ORDER BY request_url LIMIT 1"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/ebay/db/testing/NPlusOneEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insert(Lcom/ebay/db/testing/NPlusOneEntity;)J
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method
