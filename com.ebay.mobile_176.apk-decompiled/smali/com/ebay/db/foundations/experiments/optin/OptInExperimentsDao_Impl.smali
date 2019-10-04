.class public final Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;
.super Ljava/lang/Object;
.source "OptInExperimentsDao_Impl.java"

# interfaces
.implements Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao;


# instance fields
.field private final __dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfOptInTreatment:Landroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfOptInTreatment:Landroidx/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-direct {v0}, Lcom/ebay/db/typeconverters/DateTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    .line 38
    iput-object p1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 39
    new-instance v0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$1;-><init>(Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__insertionAdapterOfOptInTreatment:Landroidx/room/EntityInsertionAdapter;

    .line 94
    new-instance v0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$2;-><init>(Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__updateAdapterOfOptInTreatment:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 154
    new-instance v0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$3;-><init>(Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public clearAll()V
    .locals 3

    .line 187
    iget-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 190
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 191
    iget-object v1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 194
    iget-object v1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    :catchall_0
    move-exception v1

    .line 193
    iget-object v2, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 194
    iget-object v2, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__preparedStmtOfClearAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 195
    throw v1
.end method

.method public getExperimentList()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "select distinct experimentName, experimentId, experimentType from opt_in_treatment"

    const/4 v1, 0x0

    .line 201
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "experimentName"

    .line 204
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "experimentId"

    .line 205
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "experimentType"

    .line 206
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 207
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 208
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 210
    new-instance v6, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;

    invoke-direct {v6}, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;-><init>()V

    .line 211
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentName:Ljava/lang/String;

    .line 212
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentId:Ljava/lang/String;

    .line 213
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentType:Ljava/lang/String;

    .line 214
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 219
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v5

    :catchall_0
    move-exception v2

    .line 218
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 219
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 220
    throw v2
.end method

.method public getTreatment(Ljava/lang/String;)Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;
    .locals 12

    const-string/jumbo v0, "select * from opt_in_treatment where id LIKE ?"

    const/4 v1, 0x1

    .line 362
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 365
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 369
    :goto_0
    iget-object p1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v2, "name"

    .line 371
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "id"

    .line 372
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    const-string v4, "optedIn"

    .line 373
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v5, "isEnabled"

    .line 374
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "lastUpdate"

    .line 375
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "experimentName"

    .line 376
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "experimentId"

    .line 377
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "experimentType"

    .line 378
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 380
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_6

    .line 382
    invoke-interface {p1, v7}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_1

    goto :goto_1

    :cond_1
    move-object v10, v11

    goto :goto_2

    .line 383
    :cond_2
    :goto_1
    new-instance v10, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;

    invoke-direct {v10}, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;-><init>()V

    .line 384
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentName:Ljava/lang/String;

    .line 385
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentId:Ljava/lang/String;

    .line 386
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v10, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentType:Ljava/lang/String;

    .line 390
    :goto_2
    new-instance v7, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;

    invoke-direct {v7}, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;-><init>()V

    .line 391
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->name:Ljava/lang/String;

    .line 392
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->id:Ljava/lang/String;

    .line 394
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    .line 395
    :goto_3
    iput-boolean v2, v7, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->optedIn:Z

    .line 397
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .line 398
    :goto_4
    iput-boolean v1, v7, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->isEnabled:Z

    .line 400
    invoke-interface {p1, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_5

    .line 403
    :cond_5
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 405
    :goto_5
    iget-object v1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-virtual {v1, v11}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, v7, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->lastUpdate:Ljava/util/Date;

    .line 406
    iput-object v10, v7, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->experiment:Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :cond_6
    move-object v7, v11

    .line 412
    :goto_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 413
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v7

    :catchall_0
    move-exception v1

    .line 412
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 413
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 414
    throw v1
.end method

.method public getTreatments(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;",
            ">;>;"
        }
    .end annotation

    const-string/jumbo v0, "select * from opt_in_treatment where experimentId LIKE ?"

    const/4 v1, 0x1

    .line 226
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 229
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 233
    :goto_0
    new-instance p1, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;

    iget-object v1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;-><init>(Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/RoomSQLiteQuery;)V

    .line 298
    invoke-virtual {p1}, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl$4;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public getTreatmentsList(Ljava/lang/String;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string/jumbo v2, "select * from opt_in_treatment where experimentId LIKE ?"

    const/4 v3, 0x1

    .line 304
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    if-nez v0, :cond_0

    .line 307
    invoke-virtual {v2, v3}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {v2, v3, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 311
    :goto_0
    iget-object v0, v1, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "name"

    .line 313
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v5, "id"

    .line 314
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "optedIn"

    .line 315
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "isEnabled"

    .line 316
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string v8, "lastUpdate"

    .line 317
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "experimentName"

    .line 318
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string v10, "experimentId"

    .line 319
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "experimentType"

    .line 320
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 321
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 322
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 325
    invoke-interface {v4, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    const/4 v14, 0x0

    if-eqz v13, :cond_2

    invoke-interface {v4, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v4, v11}, Landroid/database/Cursor;->isNull(I)Z

    move-result v13

    if-nez v13, :cond_1

    goto :goto_2

    :cond_1
    move-object v13, v14

    goto :goto_3

    .line 326
    :cond_2
    :goto_2
    new-instance v13, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;

    invoke-direct {v13}, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;-><init>()V

    .line 327
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentName:Ljava/lang/String;

    .line 328
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentId:Ljava/lang/String;

    .line 329
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v13, Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;->experimentType:Ljava/lang/String;

    .line 333
    :goto_3
    new-instance v15, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;

    invoke-direct {v15}, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;-><init>()V

    .line 334
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->name:Ljava/lang/String;

    .line 335
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v15, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->id:Ljava/lang/String;

    .line 337
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v16, 0x0

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    .line 338
    :goto_4
    iput-boolean v3, v15, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->optedIn:Z

    .line 340
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v3, 0x0

    .line 341
    :goto_5
    iput-boolean v3, v15, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->isEnabled:Z

    .line 343
    invoke-interface {v4, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_6

    .line 346
    :cond_5
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 348
    :goto_6
    iget-object v3, v1, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-virtual {v3, v14}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v3

    iput-object v3, v15, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->lastUpdate:Ljava/util/Date;

    .line 349
    iput-object v13, v15, Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;->experiment:Lcom/ebay/db/foundations/experiments/optin/OptInExperiment;

    .line 350
    invoke-interface {v12, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    goto :goto_1

    .line 354
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 355
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v12

    :catchall_0
    move-exception v0

    .line 354
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 355
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 356
    throw v0
.end method

.method public insert(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;",
            ">;)V"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__insertionAdapterOfOptInTreatment:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insert(Ljava/lang/Iterable;)V

    .line 168
    iget-object p1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object p1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 171
    throw p1
.end method

.method public update(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/db/foundations/experiments/optin/OptInTreatment;",
            ">;)V"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__updateAdapterOfOptInTreatment:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handleMultiple(Ljava/lang/Iterable;)I

    .line 179
    iget-object p1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    iget-object p1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 182
    throw p1
.end method

.method public updateTreatments(ZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 419
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "update opt_in_treatment set isEnabled = "

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " where experimentType IN ("

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 424
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    const-string v1, ")"

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    iget-object v1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    int-to-long v1, p1

    const/4 p1, 0x1

    .line 431
    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    const/4 p1, 0x2

    .line 433
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 435
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_1

    .line 437
    :cond_0
    invoke-interface {v0, p1, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 441
    :cond_1
    iget-object p1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 443
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 444
    iget-object p1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    iget-object p1, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 447
    throw p1
.end method
