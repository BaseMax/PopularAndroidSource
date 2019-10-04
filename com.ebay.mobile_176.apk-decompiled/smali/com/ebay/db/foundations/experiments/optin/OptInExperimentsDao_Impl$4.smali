.class Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;
.super Landroidx/lifecycle/ComputableLiveData;
.source "OptInExperimentsDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->getTreatments(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/ComputableLiveData<",
        "Ljava/util/List<",
        "Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;",
        ">;>;"
    }
.end annotation


# instance fields
.field private _observer:Landroidx/room/InvalidationTracker$Observer;

.field final synthetic this$0:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;

.field final synthetic val$_statement:Landroidx/room/RoomSQLiteQuery;


# direct methods
.method constructor <init>(Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/RoomSQLiteQuery;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;->this$0:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;

    iput-object p3, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-direct {p0, p2}, Landroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic compute()Ljava/lang/Object;
    .locals 1

    .line 233
    invoke-virtual {p0}, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;->compute()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected compute()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 238
    iget-object v0, v1, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;->_observer:Landroidx/room/InvalidationTracker$Observer;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4$1;

    const-string v3, "opt_in_treatment"

    new-array v4, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v3, v4}, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4$1;-><init>(Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, v1, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;->_observer:Landroidx/room/InvalidationTracker$Observer;

    .line 245
    iget-object v0, v1, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;->this$0:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->access$100(Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    move-result-object v0

    iget-object v3, v1, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;->_observer:Landroidx/room/InvalidationTracker$Observer;

    invoke-virtual {v0, v3}, Landroidx/room/InvalidationTracker;->addWeakObserver(Landroidx/room/InvalidationTracker$Observer;)V

    .line 247
    :cond_0
    iget-object v0, v1, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;->this$0:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;

    invoke-static {v0}, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->access$100(Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v0

    iget-object v3, v1, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0, v3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v0, "name"

    .line 249
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v4, "id"

    .line 250
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "optedIn"

    .line 251
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "isEnabled"

    .line 252
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "lastUpdate"

    .line 253
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "experimentName"

    .line 254
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "experimentId"

    .line 255
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "experimentType"

    .line 256
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 257
    new-instance v11, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    .line 258
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 261
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    const/4 v13, 0x0

    if-eqz v12, :cond_2

    invoke-interface {v3, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v3, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v12

    if-nez v12, :cond_1

    goto :goto_1

    :cond_1
    move-object v12, v13

    goto :goto_2

    .line 262
    :cond_2
    :goto_1
    new-instance v12, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;

    invoke-direct {v12}, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;-><init>()V

    .line 263
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentName:Ljava/lang/String;

    .line 264
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentId:Ljava/lang/String;

    .line 265
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentType:Ljava/lang/String;

    .line 269
    :goto_2
    new-instance v14, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;

    invoke-direct {v14}, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;-><init>()V

    .line 270
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->name:Ljava/lang/String;

    .line 271
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v14, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->id:Ljava/lang/String;

    .line 273
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/16 v16, 0x1

    if-eqz v15, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    .line 274
    :goto_3
    iput-boolean v15, v14, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->optedIn:Z

    .line 276
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_4

    const/4 v15, 0x1

    goto :goto_4

    :cond_4
    const/4 v15, 0x0

    .line 277
    :goto_4
    iput-boolean v15, v14, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->isEnabled:Z

    .line 279
    invoke-interface {v3, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v15

    if-eqz v15, :cond_5

    goto :goto_5

    .line 282
    :cond_5
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 284
    :goto_5
    iget-object v15, v1, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;->this$0:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;

    invoke-static {v15}, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->access$000(Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v13

    iput-object v13, v14, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->lastUpdate:Ljava/util/Date;

    .line 285
    iput-object v12, v14, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->experiment:Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;

    .line 286
    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 290
    :cond_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-object v11

    :catchall_0
    move-exception v0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 291
    throw v0
.end method

.method protected finalize()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;->val$_statement:Landroidx/room/RoomSQLiteQuery;

    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-void
.end method
