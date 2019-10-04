.class Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;
.super Landroidx/lifecycle/ComputableLiveData;
.source "DcsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->getLastServiceUpdateTime()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/ComputableLiveData<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# instance fields
.field private _observer:Landroidx/room/InvalidationTracker$Observer;

.field final synthetic this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    iput-object p3, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0, p2}, Landroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic compute()Ljava/lang/Object;
    .locals 1

    .line 453
    invoke-virtual {p0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->compute()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method protected compute()Ljava/util/Date;
    .locals 4

    .line 458
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->_observer:Landroidx/room/InvalidationTracker$Observer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 459
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8$1;

    const-string v2, "dcs_property"

    new-array v3, v1, [Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8$1;-><init>(Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->_observer:Landroidx/room/InvalidationTracker$Observer;

    .line 465
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$200(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iget-object v2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->_observer:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v2}, Landroidx/room/InvalidationTracker;->addWeakObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 467
    :cond_0
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$200(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v2, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v0

    .line 470
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 472
    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 475
    :cond_1
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 477
    :goto_0
    iget-object v1, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->this$0:Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-static {v1}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;->access$100(Lcom/ebay/db/foundations/dcs/DcsDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 484
    throw v1
.end method

.method protected finalize()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl$8;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
