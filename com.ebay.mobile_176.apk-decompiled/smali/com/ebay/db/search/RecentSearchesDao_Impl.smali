.class public final Lcom/ebay/db/search/RecentSearchesDao_Impl;
.super Ljava/lang/Object;
.source "RecentSearchesDao_Impl.java"

# interfaces
.implements Lcom/ebay/db/search/RecentSearchesDao;


# instance fields
.field private final __dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfRecentSearchEntity:Landroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteLeastRecentEntries:Landroidx/room/SharedSQLiteStatement;

.field private final __preparedStmtOfDeleteTextEntries:Landroidx/room/SharedSQLiteStatement;

.field private final __updateAdapterOfRecentSearchEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-direct {v0}, Lcom/ebay/db/typeconverters/DateTypeConverter;-><init>()V

    iput-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    .line 35
    iput-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 36
    new-instance v0, Lcom/ebay/db/search/RecentSearchesDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/search/RecentSearchesDao_Impl$1;-><init>(Lcom/ebay/db/search/RecentSearchesDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__insertionAdapterOfRecentSearchEntity:Landroidx/room/EntityInsertionAdapter;

    .line 88
    new-instance v0, Lcom/ebay/db/search/RecentSearchesDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/search/RecentSearchesDao_Impl$2;-><init>(Lcom/ebay/db/search/RecentSearchesDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__updateAdapterOfRecentSearchEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    .line 141
    new-instance v0, Lcom/ebay/db/search/RecentSearchesDao_Impl$3;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/search/RecentSearchesDao_Impl$3;-><init>(Lcom/ebay/db/search/RecentSearchesDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__preparedStmtOfDeleteTextEntries:Landroidx/room/SharedSQLiteStatement;

    .line 148
    new-instance v0, Lcom/ebay/db/search/RecentSearchesDao_Impl$4;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/search/RecentSearchesDao_Impl$4;-><init>(Lcom/ebay/db/search/RecentSearchesDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    .line 155
    new-instance v0, Lcom/ebay/db/search/RecentSearchesDao_Impl$5;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/search/RecentSearchesDao_Impl$5;-><init>(Lcom/ebay/db/search/RecentSearchesDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__preparedStmtOfDeleteLeastRecentEntries:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/db/search/RecentSearchesDao_Impl;)Lcom/ebay/db/typeconverters/DateTypeConverter;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    return-object p0
.end method


# virtual methods
.method public deleteAll(Ljava/lang/String;)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 226
    :try_start_0
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 228
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 230
    :goto_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 231
    iget-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    iget-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 234
    iget-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    .line 233
    :goto_1
    iget-object v1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 234
    iget-object v1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__preparedStmtOfDeleteAll:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 235
    throw p1
.end method

.method public deleteLeastRecentEntries(Ljava/lang/String;I)V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__preparedStmtOfDeleteLeastRecentEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 245
    :try_start_0
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 247
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    int-to-long v1, p2

    .line 250
    invoke-interface {v0, p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 251
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 252
    iget-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 255
    iget-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__preparedStmtOfDeleteLeastRecentEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-void

    .line 254
    :goto_1
    iget-object p2, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 255
    iget-object p2, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__preparedStmtOfDeleteLeastRecentEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {p2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 256
    throw p1
.end method

.method public deleteTextEntries(Ljava/lang/String;)I
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__preparedStmtOfDeleteTextEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 206
    :try_start_0
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 208
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 210
    :goto_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 211
    iget-object v1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    iget-object v1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 215
    iget-object v1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__preparedStmtOfDeleteTextEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    .line 214
    :goto_1
    iget-object v1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 215
    iget-object v1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__preparedStmtOfDeleteTextEntries:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 216
    throw p1
.end method

.method public getCount(Ljava/lang/String;)I
    .locals 3

    const-string v0, "SELECT COUNT(rse.uid) FROM RecentSearchEntity rse  WHERE ? = userid"

    const/4 v1, 0x1

    .line 376
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 379
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 381
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 383
    :goto_0
    iget-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object p1

    .line 386
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 387
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 394
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return v2

    :catchall_0
    move-exception v1

    .line 393
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 394
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 395
    throw v1
.end method

.method public insert(Lcom/ebay/db/search/RecentSearchEntity;)J
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__insertionAdapterOfRecentSearchEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 169
    iget-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 173
    throw p1
.end method

.method public insert(Ljava/util/List;)Ljava/util/List;
    .locals 1
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

    .line 178
    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__insertionAdapterOfRecentSearchEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnIdsList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 181
    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 185
    throw p1
.end method

.method public selectAll(Ljava/lang/String;I)Ljava/util/List;
    .locals 19
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

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "SELECT rse.* FROM RecentSearchEntity rse WHERE ? = userid ORDER BY rse.timestamp DESC LIMIT ?"

    const/4 v3, 0x2

    .line 262
    invoke-static {v2, v3}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v2

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {v2, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    :goto_0
    move/from16 v0, p2

    goto :goto_1

    .line 267
    :cond_0
    invoke-virtual {v2, v4, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    goto :goto_0

    :goto_1
    int-to-long v5, v0

    .line 270
    invoke-virtual {v2, v3, v5, v6}, Landroidx/room/RoomSQLiteQuery;->bindLong(IJ)V

    .line 271
    iget-object v0, v1, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v2}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string/jumbo v0, "uid"

    .line 273
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v5, "userId"

    .line 274
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    const-string v6, "keyword"

    .line 275
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "categoryId"

    .line 276
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "timestamp"

    .line 277
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "productPrefix"

    .line 278
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "thumbnail"

    .line 279
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "searchResultCount"

    .line 280
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "isSpelledCorrectly"

    .line 281
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "sellerPrefix"

    .line 282
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 283
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 284
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 286
    new-instance v15, Lcom/ebay/db/search/RecentSearchEntity;

    invoke-direct {v15}, Lcom/ebay/db/search/RecentSearchEntity;-><init>()V

    move/from16 v16, v5

    .line 287
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v15, Lcom/ebay/db/search/RecentSearchEntity;->uid:J

    move/from16 v4, v16

    .line 288
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Lcom/ebay/db/search/RecentSearchEntity;->userId:Ljava/lang/String;

    .line 289
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Lcom/ebay/db/search/RecentSearchEntity;->keyword:Ljava/lang/String;

    .line 290
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v15, Lcom/ebay/db/search/RecentSearchEntity;->categoryId:Ljava/lang/String;

    .line 292
    invoke-interface {v3, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    :goto_3
    move/from16 v18, v0

    goto :goto_4

    .line 295
    :cond_1
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    goto :goto_3

    .line 297
    :goto_4
    iget-object v0, v1, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-virtual {v0, v5}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v15, Lcom/ebay/db/search/RecentSearchEntity;->timestamp:Ljava/util/Date;

    .line 298
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/ebay/db/search/RecentSearchEntity;->productPrefix:Ljava/lang/String;

    .line 299
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v15, Lcom/ebay/db/search/RecentSearchEntity;->thumbnail:[B

    .line 300
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v15, Lcom/ebay/db/search/RecentSearchEntity;->searchResultCount:I

    .line 302
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_5

    :cond_2
    const/4 v0, 0x0

    .line 303
    :goto_5
    iput-boolean v0, v15, Lcom/ebay/db/search/RecentSearchEntity;->isSpelledCorrectly:Z

    .line 304
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v15, Lcom/ebay/db/search/RecentSearchEntity;->sellerPrefix:Ljava/lang/String;

    .line 305
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v4

    move/from16 v0, v18

    const/4 v4, 0x1

    goto :goto_2

    .line 309
    :cond_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 310
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_0
    move-exception v0

    .line 309
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 310
    invoke-virtual {v2}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 311
    throw v0
.end method

.method public selectWithThumbnail(Ljava/lang/String;[B)Lcom/ebay/db/search/RecentSearchEntity;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "SELECT rse.* From RecentSearchEntity rse WHERE ? = userid AND rse.thumbnail = ? LIMIT 1"

    const/4 v4, 0x2

    .line 317
    invoke-static {v3, v4}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v3

    const/4 v5, 0x1

    if-nez v0, :cond_0

    .line 320
    invoke-virtual {v3, v5}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 322
    :cond_0
    invoke-virtual {v3, v5, v0}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    :goto_0
    if-nez v2, :cond_1

    .line 326
    invoke-virtual {v3, v4}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_1

    .line 328
    :cond_1
    invoke-virtual {v3, v4, v2}, Landroidx/room/RoomSQLiteQuery;->bindBlob(I[B)V

    .line 330
    :goto_1
    iget-object v0, v1, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0, v3}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v2

    :try_start_0
    const-string/jumbo v0, "uid"

    .line 332
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v4, "userId"

    .line 333
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    const-string v6, "keyword"

    .line 334
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    const-string v7, "categoryId"

    .line 335
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    const-string/jumbo v8, "timestamp"

    .line 336
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    const-string v9, "productPrefix"

    .line 337
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "thumbnail"

    .line 338
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    const-string/jumbo v11, "searchResultCount"

    .line 339
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    const-string v12, "isSpelledCorrectly"

    .line 340
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    const-string/jumbo v13, "sellerPrefix"

    .line 341
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 343
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_4

    .line 344
    new-instance v14, Lcom/ebay/db/search/RecentSearchEntity;

    invoke-direct {v14}, Lcom/ebay/db/search/RecentSearchEntity;-><init>()V

    move/from16 v16, v6

    .line 345
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v14, Lcom/ebay/db/search/RecentSearchEntity;->uid:J

    .line 346
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/ebay/db/search/RecentSearchEntity;->userId:Ljava/lang/String;

    move/from16 v0, v16

    .line 347
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/ebay/db/search/RecentSearchEntity;->keyword:Ljava/lang/String;

    .line 348
    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/ebay/db/search/RecentSearchEntity;->categoryId:Ljava/lang/String;

    .line 350
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 353
    :cond_2
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 355
    :goto_2
    iget-object v0, v1, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__dateTypeConverter:Lcom/ebay/db/typeconverters/DateTypeConverter;

    invoke-virtual {v0, v15}, Lcom/ebay/db/typeconverters/DateTypeConverter;->toDate(Ljava/lang/Long;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, v14, Lcom/ebay/db/search/RecentSearchEntity;->timestamp:Ljava/util/Date;

    .line 356
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/ebay/db/search/RecentSearchEntity;->productPrefix:Ljava/lang/String;

    .line 357
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    iput-object v0, v14, Lcom/ebay/db/search/RecentSearchEntity;->thumbnail:[B

    .line 358
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v14, Lcom/ebay/db/search/RecentSearchEntity;->searchResultCount:I

    .line 360
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 361
    :goto_3
    iput-boolean v5, v14, Lcom/ebay/db/search/RecentSearchEntity;->isSpelledCorrectly:Z

    .line 362
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/ebay/db/search/RecentSearchEntity;->sellerPrefix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :cond_4
    move-object v14, v15

    .line 368
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 369
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v14

    :catchall_0
    move-exception v0

    .line 368
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 369
    invoke-virtual {v3}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 370
    throw v0
.end method

.method public update(Lcom/ebay/db/search/RecentSearchEntity;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__updateAdapterOfRecentSearchEntity:Landroidx/room/EntityDeletionOrUpdateAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityDeletionOrUpdateAdapter;->handle(Ljava/lang/Object;)I

    .line 193
    iget-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    iget-object p1, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/search/RecentSearchesDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 196
    throw p1
.end method
