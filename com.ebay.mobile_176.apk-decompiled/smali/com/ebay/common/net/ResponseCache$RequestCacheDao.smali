.class Lcom/ebay/common/net/ResponseCache$RequestCacheDao;
.super Ljava/lang/Object;
.source "ResponseCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/ResponseCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestCacheDao"
.end annotation


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    :try_start_0
    new-instance v0, Lcom/ebay/common/net/ResponseCache$ResponseDbHelper;

    invoke-direct {v0, p1}, Lcom/ebay/common/net/ResponseCache$ResponseDbHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/ebay/common/net/ResponseCache$ResponseDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->db:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ResponseCache"

    .line 78
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/ebay/common/net/ResponseCache$1;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/ebay/common/net/ResponseCache$RequestCacheDao;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->close()V

    return-void
.end method

.method private close()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ResponseCache"

    .line 92
    invoke-virtual {v0}, Landroid/database/SQLException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public deleteExpiredResponses()V
    .locals 5

    .line 140
    iget-object v0, p0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 142
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 143
    iget-object v1, p0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "responses"

    const-string v3, "expiration<?"

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 144
    const-class v1, Lcom/ebay/common/net/ResponseCache;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " cached responses"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .line 119
    iget-object v0, p0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v0, "response"

    const-string v2, "expiration"

    .line 121
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x1

    .line 122
    new-array v7, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v7, v2

    .line 123
    iget-object v3, p0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v4, "responses"

    const-string v6, "name=?"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 128
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 129
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 132
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object v1
.end method

.method public setResponse(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 11

    .line 98
    iget-object v0, p0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 100
    new-array v3, v0, [Ljava/lang/String;

    const/4 v9, 0x1

    .line 101
    new-array v10, v9, [Ljava/lang/String;

    aput-object p1, v10, v0

    .line 102
    iget-object v1, p0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "responses"

    const-string v4, "name=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v5, v10

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 104
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 106
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "name"

    .line 107
    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "response"

    .line 108
    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "expiration"

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p3

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v0, :cond_2

    .line 112
    iget-object p1, p0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo p2, "responses"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/ebay/common/net/ResponseCache$RequestCacheDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo p2, "responses"

    const-string p3, "name=?"

    invoke-virtual {p1, p2, v1, p3, v10}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_0
    return-void
.end method
