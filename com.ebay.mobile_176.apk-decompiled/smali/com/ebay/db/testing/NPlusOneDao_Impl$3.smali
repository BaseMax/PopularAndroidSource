.class Lcom/ebay/db/testing/NPlusOneDao_Impl$3;
.super Landroidx/lifecycle/ComputableLiveData;
.source "NPlusOneDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/testing/NPlusOneDao_Impl;->findFirstAsync(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/ComputableLiveData<",
        "Lcom/ebay/db/testing/NPlusOneEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private _observer:Landroidx/room/InvalidationTracker$Observer;

.field final synthetic this$0:Lcom/ebay/db/testing/NPlusOneDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/ebay/db/testing/NPlusOneDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl$3;->this$0:Lcom/ebay/db/testing/NPlusOneDao_Impl;

    iput-object p3, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl$3;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0, p2}, Landroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method protected compute()Lcom/ebay/db/testing/NPlusOneEntity;
    .locals 6

    .line 102
    iget-object v0, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl$3;->_observer:Landroidx/room/InvalidationTracker$Observer;

    if-nez v0, :cond_0

    .line 103
    new-instance v0, Lcom/ebay/db/testing/NPlusOneDao_Impl$3$1;

    const-string v1, "n_plus_one"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/ebay/db/testing/NPlusOneDao_Impl$3$1;-><init>(Lcom/ebay/db/testing/NPlusOneDao_Impl$3;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl$3;->_observer:Landroidx/room/InvalidationTracker$Observer;

    .line 109
    iget-object v0, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl$3;->this$0:Lcom/ebay/db/testing/NPlusOneDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/testing/NPlusOneDao_Impl;->access$000(Lcom/ebay/db/testing/NPlusOneDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl$3;->_observer:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v1}, Landroidx/room/InvalidationTracker;->addWeakObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl$3;->this$0:Lcom/ebay/db/testing/NPlusOneDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/testing/NPlusOneDao_Impl;->access$000(Lcom/ebay/db/testing/NPlusOneDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl$3;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, v1}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_0
    const-string v1, "_id"

    .line 113
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "request_url"

    .line 114
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 116
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    new-instance v3, Lcom/ebay/db/testing/NPlusOneEntity;

    invoke-direct {v3}, Lcom/ebay/db/testing/NPlusOneEntity;-><init>()V

    .line 118
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/ebay/db/testing/NPlusOneEntity;->id:J

    .line 120
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v3, v1}, Lcom/ebay/db/testing/NPlusOneEntity;->setRequestUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 127
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 128
    throw v1
.end method

.method protected bridge synthetic compute()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/ebay/db/testing/NPlusOneDao_Impl$3;->compute()Lcom/ebay/db/testing/NPlusOneEntity;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl$3;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
