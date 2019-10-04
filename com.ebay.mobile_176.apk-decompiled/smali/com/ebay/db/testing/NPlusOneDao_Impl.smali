.class public final Lcom/ebay/db/testing/NPlusOneDao_Impl;
.super Lcom/ebay/db/testing/NPlusOneDao;
.source "NPlusOneDao_Impl.java"


# instance fields
.field private final __db:Landroidx/room/RoomDatabase;

.field private final __insertionAdapterOfNPlusOneEntity:Landroidx/room/EntityInsertionAdapter;

.field private final __preparedStmtOfDeleteByRequestUrl:Landroidx/room/SharedSQLiteStatement;


# direct methods
.method public constructor <init>(Landroidx/room/RoomDatabase;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/ebay/db/testing/NPlusOneDao;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__db:Landroidx/room/RoomDatabase;

    .line 30
    new-instance v0, Lcom/ebay/db/testing/NPlusOneDao_Impl$1;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/testing/NPlusOneDao_Impl$1;-><init>(Lcom/ebay/db/testing/NPlusOneDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__insertionAdapterOfNPlusOneEntity:Landroidx/room/EntityInsertionAdapter;

    .line 46
    new-instance v0, Lcom/ebay/db/testing/NPlusOneDao_Impl$2;

    invoke-direct {v0, p0, p1}, Lcom/ebay/db/testing/NPlusOneDao_Impl$2;-><init>(Lcom/ebay/db/testing/NPlusOneDao_Impl;Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__preparedStmtOfDeleteByRequestUrl:Landroidx/room/SharedSQLiteStatement;

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/db/testing/NPlusOneDao_Impl;)Landroidx/room/RoomDatabase;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__db:Landroidx/room/RoomDatabase;

    return-object p0
.end method


# virtual methods
.method public deleteByRequestUrl(Ljava/lang/String;)I
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__preparedStmtOfDeleteByRequestUrl:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 74
    :try_start_0
    invoke-interface {v0, v1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindNull(I)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 76
    :cond_0
    invoke-interface {v0, v1, p1}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 78
    :goto_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    move-result p1

    .line 79
    iget-object v1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 83
    iget-object v1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__preparedStmtOfDeleteByRequestUrl:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return p1

    .line 82
    :goto_1
    iget-object v1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 83
    iget-object v1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__preparedStmtOfDeleteByRequestUrl:Landroidx/room/SharedSQLiteStatement;

    invoke-virtual {v1, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 84
    throw p1
.end method

.method public findAll()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/db/testing/NPlusOneEntity;",
            ">;"
        }
    .end annotation

    const-string v0, "SELECT * FROM n_plus_one ORDER BY request_url"

    const/4 v1, 0x0

    .line 141
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    const-string v2, "_id"

    .line 144
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo v3, "request_url"

    .line 145
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 146
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 149
    new-instance v5, Lcom/ebay/db/testing/NPlusOneEntity;

    invoke-direct {v5}, Lcom/ebay/db/testing/NPlusOneEntity;-><init>()V

    .line 150
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/ebay/db/testing/NPlusOneEntity;->id:J

    .line 152
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-virtual {v5, v6}, Lcom/ebay/db/testing/NPlusOneEntity;->setRequestUrl(Ljava/lang/String;)V

    .line 154
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 158
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    return-object v4

    :catchall_0
    move-exception v2

    .line 158
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    invoke-virtual {v0}, Landroidx/room/RoomSQLiteQuery;->release()V

    .line 160
    throw v2
.end method

.method public findFirstAsync(Ljava/lang/String;)Landroidx/lifecycle/LiveData;
    .locals 2
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

    const-string v0, "SELECT * FROM n_plus_one WHERE request_url = ? ORDER BY request_url LIMIT 1"

    const/4 v1, 0x1

    .line 90
    invoke-static {v0, v1}, Landroidx/room/RoomSQLiteQuery;->acquire(Ljava/lang/String;I)Landroidx/room/RoomSQLiteQuery;

    move-result-object v0

    if-nez p1, :cond_0

    .line 93
    invoke-virtual {v0, v1}, Landroidx/room/RoomSQLiteQuery;->bindNull(I)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0, v1, p1}, Landroidx/room/RoomSQLiteQuery;->bindString(ILjava/lang/String;)V

    .line 97
    :goto_0
    new-instance p1, Lcom/ebay/db/testing/NPlusOneDao_Impl$3;

    iget-object v1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/ebay/db/testing/NPlusOneDao_Impl$3;-><init>(Lcom/ebay/db/testing/NPlusOneDao_Impl;Ljava/util/concurrent/Executor;Landroidx/room/RoomSQLiteQuery;)V

    .line 135
    invoke-virtual {p1}, Lcom/ebay/db/testing/NPlusOneDao_Impl$3;->getLiveData()Landroidx/lifecycle/LiveData;

    move-result-object p1

    return-object p1
.end method

.method public insert(Lcom/ebay/db/testing/NPlusOneEntity;)J
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__insertionAdapterOfNPlusOneEntity:Landroidx/room/EntityInsertionAdapter;

    invoke-virtual {v0, p1}, Landroidx/room/EntityInsertionAdapter;->insertAndReturnId(Ljava/lang/Object;)J

    move-result-wide v0

    .line 60
    iget-object p1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    iget-object p1, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {p1}, Landroidx/room/RoomDatabase;->endTransaction()V

    return-wide v0

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/ebay/db/testing/NPlusOneDao_Impl;->__db:Landroidx/room/RoomDatabase;

    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 64
    throw p1
.end method
