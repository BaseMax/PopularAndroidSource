.class public abstract Lcom/yandex/metrica/impl/ob/fk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/metrica/impl/ob/fp;

.field private final b:Lcom/yandex/metrica/impl/ob/gf;

.field private final c:Ljava/util/concurrent/atomic/AtomicLong;

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private final e:Ljava/util/concurrent/atomic/AtomicLong;

.field private final f:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/yandex/metrica/impl/ob/fp;Lcom/yandex/metrica/impl/ob/gf;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Lcom/yandex/metrica/impl/ob/fk;->f:Landroid/content/ContentValues;

    .line 47
    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fk;->a:Lcom/yandex/metrica/impl/ob/fp;

    .line 48
    iput-object p2, p0, Lcom/yandex/metrica/impl/ob/fk;->b:Lcom/yandex/metrica/impl/ob/gf;

    .line 49
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p0}, Lcom/yandex/metrica/impl/ob/fk;->f()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fk;->c:Ljava/util/concurrent/atomic/AtomicLong;

    .line 50
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/fk;->b(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fk;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 51
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/fk;->d(J)J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/yandex/metrica/impl/ob/fk;->e:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private f()J
    .locals 2

    .line 79
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fk;->d()Lcom/yandex/metrica/impl/ob/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fp;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fk;->e()Ljava/lang/String;

    move-result-object v1

    .line 81
    invoke-static {v0, v1}, Lcom/yandex/metrica/impl/ob/nc;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fk;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method a(I)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fk;->c:Ljava/util/concurrent/atomic/AtomicLong;

    neg-int p1, p1

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    .line 101
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fk;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/fk;->b(J)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method a(J)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fk;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 90
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fk;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 91
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fk;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/yandex/metrica/impl/ob/fk;->e(J)Lcom/yandex/metrica/impl/ob/gf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/gf;->i()V

    .line 94
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fk;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fk;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_0
    return-void
.end method

.method public declared-synchronized a(JLjava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fk;->d()Lcom/yandex/metrica/impl/ob/fp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/ob/fp;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1144
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fk;->f:Landroid/content/ContentValues;

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 1145
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fk;->f:Landroid/content/ContentValues;

    const-string v2, "incremental_id"

    iget-object v3, p0, Lcom/yandex/metrica/impl/ob/fk;->e:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1146
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fk;->f:Landroid/content/ContentValues;

    const-string v2, "timestamp"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1147
    iget-object v1, p0, Lcom/yandex/metrica/impl/ob/fk;->f:Landroid/content/ContentValues;

    const-string v2, "data"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget-object p3, p0, Lcom/yandex/metrica/impl/ob/fk;->f:Landroid/content/ContentValues;

    .line 131
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fk;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/yandex/metrica/impl/ob/fk;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 140
    :catch_0
    monitor-exit p0

    return-void
.end method

.method public b()J
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fk;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method

.method public b(J)J
    .locals 6

    .line 107
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "timestamp"

    aput-object v3, v1, v2

    .line 108
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fk;->e()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "Select min(%s) from %s"

    .line 107
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fk;->d()Lcom/yandex/metrica/impl/ob/fp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yandex/metrica/impl/ob/fp;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 111
    invoke-virtual {v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 112
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    move-wide p1, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 122
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    .line 123
    throw p1

    .line 122
    :catch_0
    :cond_0
    :goto_0
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    return-wide p1
.end method

.method public declared-synchronized b(I)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 154
    :try_start_0
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    .line 157
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fk;->d()Lcom/yandex/metrica/impl/ob/fp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/fp;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 159
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fk;->e()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x2

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v6, "incremental_id"

    aput-object v6, v5, v2

    const/4 v2, 0x1

    const-string v6, "data"

    aput-object v6, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "incremental_id ASC"

    .line 167
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 158
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 168
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fk;->f:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 170
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fk;->f:Landroid/content/ContentValues;

    invoke-static {v1, p1}, Lcom/yandex/metrica/impl/ob/nc;->a(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 171
    iget-object p1, p0, Lcom/yandex/metrica/impl/ob/fk;->f:Landroid/content/ContentValues;

    const-string v2, "incremental_id"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    iget-object v2, p0, Lcom/yandex/metrica/impl/ob/fk;->f:Landroid/content/ContentValues;

    const-string v3, "data"

    .line 172
    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 177
    :catch_0
    :cond_0
    :try_start_2
    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {v1}, Lcom/yandex/metrica/impl/bv;->a(Landroid/database/Cursor;)V

    .line 178
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 179
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_1
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized c(I)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 206
    monitor-exit p0

    return v0

    .line 208
    :cond_0
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%1$s <= (select max(%1$s) from (select %1$s from %2$s order by %1$s limit ?))"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "incremental_id"

    aput-object v4, v3, v0

    .line 210
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fk;->e()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 208
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fk;->d()Lcom/yandex/metrica/impl/ob/fp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yandex/metrica/impl/ob/fp;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 216
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fk;->e()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/String;

    .line 218
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    .line 215
    invoke-virtual {v2, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 222
    invoke-virtual {p0, v0}, Lcom/yandex/metrica/impl/ob/fk;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :catch_0
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(J)I
    .locals 6

    monitor-enter p0

    .line 184
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s <= ?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "incremental_id"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :try_start_1
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fk;->d()Lcom/yandex/metrica/impl/ob/fp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/ob/fp;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 190
    invoke-virtual {p0}, Lcom/yandex/metrica/impl/ob/fk;->e()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/String;

    .line 192
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v5

    .line 189
    invoke-virtual {v1, v3, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_0

    .line 196
    invoke-virtual {p0, v5}, Lcom/yandex/metrica/impl/ob/fk;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    :catch_0
    :cond_0
    monitor-exit p0

    return v5

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method c()Lcom/yandex/metrica/impl/ob/gf;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fk;->b:Lcom/yandex/metrica/impl/ob/gf;

    return-object v0
.end method

.method protected abstract d(J)J
.end method

.method protected d()Lcom/yandex/metrica/impl/ob/fp;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/yandex/metrica/impl/ob/fk;->a:Lcom/yandex/metrica/impl/ob/fp;

    return-object v0
.end method

.method protected abstract e(J)Lcom/yandex/metrica/impl/ob/gf;
.end method

.method public abstract e()Ljava/lang/String;
.end method