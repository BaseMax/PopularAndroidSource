.class public final Lcom/ebay/db/tracking/TrackingDao_Impl;
.super Lcom/ebay/db/tracking/TrackingDao;
.source "TrackingDao_Impl.java"


# instance fields
.field private final __bundleTypeConverter:Lcom/ebay/db/typeconverters/BundleTypeConverter;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __deletionAdapterOfTrackingEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

.field private final __insertionAdapterOfTrackingEntity:Landroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRemoveAll:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfRemoveStaleEntries:Landroidx/room/SharedSQLiteStatement;

.field private final __setTypeConverter:Lcom/ebay/db/typeconverters/SetTypeConverter;

.field private final __updateAdapterOfTrackingEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/ebay/db/tracking/TrackingDao;-><init>()V

    .line 26
    new-instance v0, Lcom/ebay/db/typeconverters/BundleTypeConverter;

    invoke-direct {v0}, Lcom/ebay/db/typeconverters/BundleTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__bundleTypeConverter:Lcom/ebay/db/typeconverters/BundleTypeConverter;

    .line 28
    new-instance v0, Lcom/ebay/db/typeconverters/SetTypeConverter;

    invoke-direct {v0}, Lcom/ebay/db/typeconverters/SetTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__setTypeConverter:Lcom/ebay/db/typeconverters/SetTypeConverter;

    .line 41
    iput-object p1, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 42
    new-instance v0, Lcom/ebay/db/tracking/TrackingDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/tracking/TrackingDao_Impl$1;-><init>(Lcom/ebay/db/tracking/TrackingDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__insertionAdapterOfTrackingEntity:Landroidx/room/EntityInsertionAdapter;

    .line 107
    new-instance v0, Lcom/ebay/db/tracking/TrackingDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/tracking/TrackingDao_Impl$2;-><init>(Lcom/ebay/db/tracking/TrackingDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__deletionAdapterOfTrackingEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 118
    new-instance v0, Lcom/ebay/db/tracking/TrackingDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/tracking/TrackingDao_Impl$3;-><init>(Lcom/ebay/db/tracking/TrackingDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__updateAdapterOfTrackingEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 184
    new-instance v0, Lcom/ebay/db/tracking/TrackingDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/tracking/TrackingDao_Impl$4;-><init>(Lcom/ebay/db/tracking/TrackingDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    .line 191
    new-instance v0, Lcom/ebay/db/tracking/TrackingDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/tracking/TrackingDao_Impl$5;-><init>(Lcom/ebay/db/tracking/TrackingDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__preparedStmtOfRemoveAll:Landroidx/room/SharedSQLiteStatement;

    .line 198
    new-instance v0, Lcom/ebay/db/tracking/TrackingDao_Impl$6;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/tracking/TrackingDao_Impl$6;-><init>(Lcom/ebay/db/tracking/TrackingDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__preparedStmtOfRemoveStaleEntries:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/db/tracking/TrackingDao_Impl;)Lcom/ebay/db/typeconverters/BundleTypeConverter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__bundleTypeConverter:Lcom/ebay/db/typeconverters/BundleTypeConverter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ebay/db/tracking/TrackingDao_Impl;)Lcom/ebay/db/typeconverters/SetTypeConverter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__setTypeConverter:Lcom/ebay/db/typeconverters/SetTypeConverter;

    return-object p0
.end method


# virtual methods
.method public delete(J)I
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    .line 273
    :try_start_0
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 274
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 275
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 279
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 278
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 279
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__preparedStmtOfDelete:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 280
    throw p1
.end method

.method public delete(Lcom/ebay/db/tracking/TrackingEntity;)I
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__deletionAdapterOfTrackingEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    move-result p1

    add-int/lit8 p1, p1, 0x0

    .line 249
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 253
    throw p1
.end method

.method public getCount()I
    .locals 4

    const-string v0, "SELECT COUNT(*) FROM trackingentity"

    const/4 v1, 0x0

    .line 468
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 469
    iget-object v2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    .line 472
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 473
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 480
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v1

    :catchall_0
    move-exception v1

    .line 479
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 480
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 481
    throw v1
.end method

.method public insert(Lcom/ebay/db/tracking/TrackingEntity;)J
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__insertionAdapterOfTrackingEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 212
    iget-object p1, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    iget-object p1, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 216
    throw p1
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 1
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

    .line 233
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__insertionAdapterOfTrackingEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 236
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 240
    throw p1
.end method

.method public varargs insert([Lcom/ebay/db/tracking/TrackingEntity;)Ljava/util/List;
    .locals 1
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

    .line 221
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__insertionAdapterOfTrackingEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnIdsList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 224
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 228
    throw p1
.end method

.method public removeAll()I
    .locals 3

    .line 285
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__preparedStmtOfRemoveAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 288
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result v1

    .line 289
    iget-object v2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    iget-object v2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 293
    iget-object v2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__preparedStmtOfRemoveAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return v1

    :catchall_0
    move-exception v1

    .line 292
    iget-object v2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 293
    iget-object v2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__preparedStmtOfRemoveAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 294
    throw v1
.end method

.method removeStaleEntries(J)I
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__preparedStmtOfRemoveStaleEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 300
    iget-object v1, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    .line 303
    :try_start_0
    invoke-interface {v0, v1, p1, p2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 304
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 305
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 309
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__preparedStmtOfRemoveStaleEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    :catchall_0
    move-exception p1

    .line 308
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 309
    iget-object p2, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__preparedStmtOfRemoveStaleEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 310
    throw p1
.end method

.method public select(J)Lcom/ebay/db/tracking/TrackingEntity;
    .locals 20

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM trackingentity WHERE _id = ?"

    const/4 v2, 0x1

    .line 316
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    move-wide/from16 v4, p1

    .line 318
    invoke-virtual {v3, v2, v4, v5}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 319
    iget-object v0, v1, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "_id"

    .line 321
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v5, "forceFlush"

    .line 322
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "name"

    .line 323
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "flagName"

    .line 324
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "sourceIdEvent"

    .line 325
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "sourceIdModule"

    .line 326
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "sourceIdLink"

    .line 327
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "createdTime"

    .line 328
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "trackingType"

    .line 329
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "properties"

    .line 330
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "sessionData"

    .line 331
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "flagBitPositions"

    .line 332
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v2, "dirty"

    .line 333
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 335
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v16, :cond_2

    move-object/from16 v17, v3

    .line 336
    :try_start_1
    new-instance v3, Lcom/ebay/db/tracking/TrackingEntity;

    invoke-direct {v3}, Lcom/ebay/db/tracking/TrackingEntity;-><init>()V

    move/from16 v18, v14

    move/from16 v19, v15

    .line 337
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/ebay/db/tracking/TrackingEntity;->id:J

    .line 340
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 342
    :goto_0
    invoke-virtual {v3, v0}, Lcom/ebay/db/tracking/TrackingEntity;->setForceFlush(Z)V

    .line 344
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-virtual {v3, v0}, Lcom/ebay/db/tracking/TrackingEntity;->setName(Ljava/lang/String;)V

    .line 347
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-virtual {v3, v0}, Lcom/ebay/db/tracking/TrackingEntity;->setFlagName(Ljava/lang/String;)V

    .line 350
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {v3, v0}, Lcom/ebay/db/tracking/TrackingEntity;->setSourceIdEvent(Ljava/lang/String;)V

    .line 353
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    invoke-virtual {v3, v0}, Lcom/ebay/db/tracking/TrackingEntity;->setSourceIdModule(Ljava/lang/String;)V

    .line 356
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 357
    invoke-virtual {v3, v0}, Lcom/ebay/db/tracking/TrackingEntity;->setSourceIdLink(Ljava/lang/String;)V

    .line 359
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 360
    invoke-virtual {v3, v6, v7}, Lcom/ebay/db/tracking/TrackingEntity;->setCreatedTime(J)V

    .line 362
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 363
    invoke-virtual {v3, v0}, Lcom/ebay/db/tracking/TrackingEntity;->setTrackingType(I)V

    .line 365
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 366
    iget-object v6, v1, Lcom/ebay/db/tracking/TrackingDao_Impl;->__bundleTypeConverter:Lcom/ebay/db/typeconverters/BundleTypeConverter;

    invoke-virtual {v6, v0}, Lcom/ebay/db/typeconverters/BundleTypeConverter;->toBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v3, Lcom/ebay/db/tracking/TrackingEntity;->properties:Landroid/os/Bundle;

    move/from16 v0, v18

    .line 368
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 369
    iget-object v6, v1, Lcom/ebay/db/tracking/TrackingDao_Impl;->__bundleTypeConverter:Lcom/ebay/db/typeconverters/BundleTypeConverter;

    invoke-virtual {v6, v0}, Lcom/ebay/db/typeconverters/BundleTypeConverter;->toBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v3, Lcom/ebay/db/tracking/TrackingEntity;->sessionData:Landroid/os/Bundle;

    move/from16 v0, v19

    .line 372
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 373
    iget-object v6, v1, Lcom/ebay/db/tracking/TrackingDao_Impl;->__setTypeConverter:Lcom/ebay/db/typeconverters/SetTypeConverter;

    invoke-virtual {v6, v0}, Lcom/ebay/db/typeconverters/SetTypeConverter;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 374
    invoke-virtual {v3, v0}, Lcom/ebay/db/tracking/TrackingEntity;->setFlagBitPositions(Ljava/util/Set;)V

    .line 377
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v5, 0x1

    .line 379
    :cond_1
    invoke-virtual {v3, v5}, Lcom/ebay/db/tracking/TrackingEntity;->setDirty(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object/from16 v17, v3

    const/4 v3, 0x0

    .line 385
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 386
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_1
    move-exception v0

    move-object/from16 v17, v3

    .line 385
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 386
    invoke-virtual/range {v17 .. v17}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 387
    throw v0
.end method

.method public selectAll()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/db/tracking/TrackingEntity;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "SELECT * FROM trackingentity"

    const/4 v2, 0x0

    .line 393
    invoke-static {v0, v2}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    .line 394
    iget-object v0, v1, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    const-string v0, "_id"

    .line 396
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v5, "forceFlush"

    .line 397
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "name"

    .line 398
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "flagName"

    .line 399
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "sourceIdEvent"

    .line 400
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "sourceIdModule"

    .line 401
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "sourceIdLink"

    .line 402
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string v11, "createdTime"

    .line 403
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string/jumbo v12, "trackingType"

    .line 404
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string v13, "properties"

    .line 405
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    const-string/jumbo v14, "sessionData"

    .line 406
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    const-string v15, "flagBitPositions"

    .line 407
    invoke-interface {v4, v15}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    const-string v2, "dirty"

    .line 408
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v3

    .line 409
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    move/from16 v17, v2

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 410
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    new-instance v2, Lcom/ebay/db/tracking/TrackingEntity;

    invoke-direct {v2}, Lcom/ebay/db/tracking/TrackingEntity;-><init>()V

    move/from16 v18, v14

    move/from16 v19, v15

    .line 413
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    iput-wide v14, v2, Lcom/ebay/db/tracking/TrackingEntity;->id:J

    .line 416
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x1

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    .line 418
    :goto_1
    invoke-virtual {v2, v14}, Lcom/ebay/db/tracking/TrackingEntity;->setForceFlush(Z)V

    .line 420
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 421
    invoke-virtual {v2, v14}, Lcom/ebay/db/tracking/TrackingEntity;->setName(Ljava/lang/String;)V

    .line 423
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 424
    invoke-virtual {v2, v14}, Lcom/ebay/db/tracking/TrackingEntity;->setFlagName(Ljava/lang/String;)V

    .line 426
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 427
    invoke-virtual {v2, v14}, Lcom/ebay/db/tracking/TrackingEntity;->setSourceIdEvent(Ljava/lang/String;)V

    .line 429
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 430
    invoke-virtual {v2, v14}, Lcom/ebay/db/tracking/TrackingEntity;->setSourceIdModule(Ljava/lang/String;)V

    .line 432
    invoke-interface {v4, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 433
    invoke-virtual {v2, v14}, Lcom/ebay/db/tracking/TrackingEntity;->setSourceIdLink(Ljava/lang/String;)V

    move/from16 v20, v5

    move/from16 v21, v6

    .line 435
    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 436
    invoke-virtual {v2, v5, v6}, Lcom/ebay/db/tracking/TrackingEntity;->setCreatedTime(J)V

    .line 438
    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 439
    invoke-virtual {v2, v5}, Lcom/ebay/db/tracking/TrackingEntity;->setTrackingType(I)V

    .line 441
    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 442
    iget-object v6, v1, Lcom/ebay/db/tracking/TrackingDao_Impl;->__bundleTypeConverter:Lcom/ebay/db/typeconverters/BundleTypeConverter;

    invoke-virtual {v6, v5}, Lcom/ebay/db/typeconverters/BundleTypeConverter;->toBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, v2, Lcom/ebay/db/tracking/TrackingEntity;->properties:Landroid/os/Bundle;

    move/from16 v5, v18

    .line 444
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 445
    iget-object v14, v1, Lcom/ebay/db/tracking/TrackingDao_Impl;->__bundleTypeConverter:Lcom/ebay/db/typeconverters/BundleTypeConverter;

    invoke-virtual {v14, v6}, Lcom/ebay/db/typeconverters/BundleTypeConverter;->toBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    iput-object v6, v2, Lcom/ebay/db/tracking/TrackingEntity;->sessionData:Landroid/os/Bundle;

    move/from16 v6, v19

    .line 448
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 449
    iget-object v15, v1, Lcom/ebay/db/tracking/TrackingDao_Impl;->__setTypeConverter:Lcom/ebay/db/typeconverters/SetTypeConverter;

    invoke-virtual {v15, v14}, Lcom/ebay/db/typeconverters/SetTypeConverter;->toSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v14

    .line 450
    invoke-virtual {v2, v14}, Lcom/ebay/db/tracking/TrackingEntity;->setFlagBitPositions(Ljava/util/Set;)V

    move/from16 v14, v17

    .line 453
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-eqz v15, :cond_1

    const/4 v15, 0x1

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    .line 455
    :goto_2
    invoke-virtual {v2, v15}, Lcom/ebay/db/tracking/TrackingEntity;->setDirty(Z)V

    .line 456
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v15, v6

    move/from16 v17, v14

    move/from16 v6, v21

    move v14, v5

    move/from16 v5, v20

    goto/16 :goto_0

    .line 460
    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 461
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v16, v3

    .line 460
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 461
    invoke-virtual/range {v16 .. v16}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 462
    throw v0
.end method

.method public update(Lcom/ebay/db/tracking/TrackingEntity;)V
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__updateAdapterOfTrackingEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 261
    iget-object p1, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    iget-object p1, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/tracking/TrackingDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 264
    throw p1
.end method
