.class public final Lcom/ebay/db/EbayDatabase_Impl;
.super Lcom/ebay/db/EbayDatabase;
.source "EbayDatabase_Impl.java"


# instance fields
.field private volatile _dcsDao:Lcom/ebay/db/foundations/dcs/DcsDao;

.field private volatile _nPlusOneDao:Lcom/ebay/db/testing/NPlusOneDao;

.field private volatile _optInExperimentsDao:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao;

.field private volatile _recentSearchesDao:Lcom/ebay/db/search/RecentSearchesDao;

.field private volatile _trackingDao:Lcom/ebay/db/tracking/TrackingDao;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/ebay/db/EbayDatabase;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/db/EbayDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ebay/db/EbayDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/ebay/db/EbayDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ebay/db/EbayDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ebay/db/EbayDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ebay/db/EbayDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$302(Lcom/ebay/db/EbayDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/ebay/db/EbayDatabase_Impl;->mDatabase:Landroidx/sqlite/db/SupportSQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/ebay/db/EbayDatabase_Impl;Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Lcom/ebay/db/EbayDatabase_Impl;->internalInitInvalidationTracker(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$500(Lcom/ebay/db/EbayDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ebay/db/EbayDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/ebay/db/EbayDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ebay/db/EbayDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$700(Lcom/ebay/db/EbayDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/ebay/db/EbayDatabase_Impl;->mCallbacks:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clearAllTables()V
    .locals 3

    .line 227
    invoke-super {p0}, Lcom/ebay/db/EbayDatabase;->assertNotMainThread()V

    .line 228
    invoke-super {p0}, Lcom/ebay/db/EbayDatabase;->getOpenHelper()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object v0

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    .line 230
    :try_start_0
    invoke-super {p0}, Lcom/ebay/db/EbayDatabase;->beginTransaction()V

    const-string v1, "DELETE FROM `TrackingEntity`"

    .line 231
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM `RecentSearchEntity`"

    .line 232
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM `n_plus_one`"

    .line 233
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM `dcs_property`"

    .line 234
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v1, "DELETE FROM `opt_in_treatment`"

    .line 235
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 236
    invoke-super {p0}, Lcom/ebay/db/EbayDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-super {p0}, Lcom/ebay/db/EbayDatabase;->endTransaction()V

    const-string v1, "PRAGMA wal_checkpoint(FULL)"

    .line 239
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 240
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VACUUM"

    .line 241
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 238
    invoke-super {p0}, Lcom/ebay/db/EbayDatabase;->endTransaction()V

    const-string v2, "PRAGMA wal_checkpoint(FULL)"

    .line 239
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 240
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "VACUUM"

    .line 241
    invoke-interface {v0, v2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 243
    :cond_1
    throw v1
.end method

.method protected createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 6

    .line 222
    new-instance v0, Landroidx/room/InvalidationTracker;

    const-string v1, "TrackingEntity"

    const-string v2, "RecentSearchEntity"

    const-string v3, "n_plus_one"

    const-string v4, "dcs_property"

    const-string/jumbo v5, "opt_in_treatment"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method protected createOpenHelper(Landroidx/room/DatabaseConfiguration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 4

    .line 47
    new-instance v0, Landroidx/room/RoomOpenHelper;

    new-instance v1, Lcom/ebay/db/EbayDatabase_Impl$1;

    const v2, 0x7ae04

    invoke-direct {v1, p0, v2}, Lcom/ebay/db/EbayDatabase_Impl$1;-><init>(Lcom/ebay/db/EbayDatabase_Impl;I)V

    const-string v2, "0a2b24134a9f9e049424648681fc9afd"

    const-string v3, "4b7797fa06f5a2f92be3dad2f870b8f8"

    invoke-direct {v0, p1, v1, v2, v3}, Landroidx/room/RoomOpenHelper;-><init>(Landroidx/room/DatabaseConfiguration;Landroidx/room/RoomOpenHelper$Delegate;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->context:Landroid/content/Context;

    invoke-static {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;->builder(Landroid/content/Context;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->name:Ljava/lang/String;

    .line 213
    invoke-virtual {v1, v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->name(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->callback(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;

    move-result-object v0

    .line 215
    invoke-virtual {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration$Builder;->build()Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;

    move-result-object v0

    .line 216
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->sqliteOpenHelperFactory:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;

    invoke-interface {p1, v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Factory;->create(Landroidx/sqlite/db/SupportSQLiteOpenHelper$Configuration;)Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    move-result-object p1

    return-object p1
.end method

.method public dcsDao()Lcom/ebay/db/foundations/dcs/DcsDao;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_dcsDao:Lcom/ebay/db/foundations/dcs/DcsDao;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_dcsDao:Lcom/ebay/db/foundations/dcs/DcsDao;

    return-object v0

    .line 279
    :cond_0
    monitor-enter p0

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_dcsDao:Lcom/ebay/db/foundations/dcs/DcsDao;

    if-nez v0, :cond_1

    .line 281
    new-instance v0, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;

    invoke-direct {v0, p0}, Lcom/ebay/db/foundations/dcs/DcsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_dcsDao:Lcom/ebay/db/foundations/dcs/DcsDao;

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_dcsDao:Lcom/ebay/db/foundations/dcs/DcsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 284
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nPlusOneDao()Lcom/ebay/db/testing/NPlusOneDao;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_nPlusOneDao:Lcom/ebay/db/testing/NPlusOneDao;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_nPlusOneDao:Lcom/ebay/db/testing/NPlusOneDao;

    return-object v0

    .line 293
    :cond_0
    monitor-enter p0

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_nPlusOneDao:Lcom/ebay/db/testing/NPlusOneDao;

    if-nez v0, :cond_1

    .line 295
    new-instance v0, Lcom/ebay/db/testing/NPlusOneDao_Impl;

    invoke-direct {v0, p0}, Lcom/ebay/db/testing/NPlusOneDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_nPlusOneDao:Lcom/ebay/db/testing/NPlusOneDao;

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_nPlusOneDao:Lcom/ebay/db/testing/NPlusOneDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 298
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public optInExperimentsDao()Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao;
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_optInExperimentsDao:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_optInExperimentsDao:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao;

    return-object v0

    .line 307
    :cond_0
    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_optInExperimentsDao:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao;

    if-nez v0, :cond_1

    .line 309
    new-instance v0, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;

    invoke-direct {v0, p0}, Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_optInExperimentsDao:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao;

    .line 311
    :cond_1
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_optInExperimentsDao:Lcom/ebay/db/foundations/experiments/optin/OptInExperimentsDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 312
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public recentSearchesDao()Lcom/ebay/db/search/RecentSearchesDao;
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_recentSearchesDao:Lcom/ebay/db/search/RecentSearchesDao;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_recentSearchesDao:Lcom/ebay/db/search/RecentSearchesDao;

    return-object v0

    .line 265
    :cond_0
    monitor-enter p0

    .line 266
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_recentSearchesDao:Lcom/ebay/db/search/RecentSearchesDao;

    if-nez v0, :cond_1

    .line 267
    new-instance v0, Lcom/ebay/db/search/RecentSearchesDao_Impl;

    invoke-direct {v0, p0}, Lcom/ebay/db/search/RecentSearchesDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_recentSearchesDao:Lcom/ebay/db/search/RecentSearchesDao;

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_recentSearchesDao:Lcom/ebay/db/search/RecentSearchesDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 270
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public trackingDao()Lcom/ebay/db/tracking/TrackingDao;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_trackingDao:Lcom/ebay/db/tracking/TrackingDao;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_trackingDao:Lcom/ebay/db/tracking/TrackingDao;

    return-object v0

    .line 251
    :cond_0
    monitor-enter p0

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_trackingDao:Lcom/ebay/db/tracking/TrackingDao;

    if-nez v0, :cond_1

    .line 253
    new-instance v0, Lcom/ebay/db/tracking/TrackingDao_Impl;

    invoke-direct {v0, p0}, Lcom/ebay/db/tracking/TrackingDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_trackingDao:Lcom/ebay/db/tracking/TrackingDao;

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/ebay/db/EbayDatabase_Impl;->_trackingDao:Lcom/ebay/db/tracking/TrackingDao;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 256
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
