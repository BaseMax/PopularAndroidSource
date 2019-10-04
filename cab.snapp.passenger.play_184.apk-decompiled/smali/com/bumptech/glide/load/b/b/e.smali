.class public final Lcom/bumptech/glide/load/b/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/b/a;


# static fields
.field private static a:Lcom/bumptech/glide/load/b/b/e;


# instance fields
.field private final b:Lcom/bumptech/glide/load/b/b/j;

.field private final c:Ljava/io/File;

.field private final d:J

.field private final e:Lcom/bumptech/glide/load/b/b/c;

.field private f:Lcom/bumptech/glide/a/a;


# direct methods
.method private constructor <init>(Ljava/io/File;J)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/b/b/c;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/b/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->e:Lcom/bumptech/glide/load/b/b/c;

    .line 74
    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/e;->c:Ljava/io/File;

    .line 75
    iput-wide p2, p0, Lcom/bumptech/glide/load/b/b/e;->d:J

    .line 76
    new-instance p1, Lcom/bumptech/glide/load/b/b/j;

    invoke-direct {p1}, Lcom/bumptech/glide/load/b/b/j;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/b/e;->b:Lcom/bumptech/glide/load/b/b/j;

    return-void
.end method

.method private declared-synchronized a()Lcom/bumptech/glide/a/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->f:Lcom/bumptech/glide/a/a;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->c:Ljava/io/File;

    iget-wide v1, p0, Lcom/bumptech/glide/load/b/b/e;->d:J

    const/4 v3, 0x1

    invoke-static {v0, v3, v3, v1, v2}, Lcom/bumptech/glide/a/a;->open(Ljava/io/File;IIJ)Lcom/bumptech/glide/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->f:Lcom/bumptech/glide/a/a;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->f:Lcom/bumptech/glide/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 179
    :try_start_0
    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->f:Lcom/bumptech/glide/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static create(Ljava/io/File;J)Lcom/bumptech/glide/load/b/b/a;
    .locals 1

    .line 64
    new-instance v0, Lcom/bumptech/glide/load/b/b/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/bumptech/glide/load/b/b/e;-><init>(Ljava/io/File;J)V

    return-object v0
.end method

.method public static declared-synchronized get(Ljava/io/File;J)Lcom/bumptech/glide/load/b/b/a;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/bumptech/glide/load/b/b/e;

    monitor-enter v0

    .line 49
    :try_start_0
    sget-object v1, Lcom/bumptech/glide/load/b/b/e;->a:Lcom/bumptech/glide/load/b/b/e;

    if-nez v1, :cond_0

    .line 50
    new-instance v1, Lcom/bumptech/glide/load/b/b/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/bumptech/glide/load/b/b/e;-><init>(Ljava/io/File;J)V

    sput-object v1, Lcom/bumptech/glide/load/b/b/e;->a:Lcom/bumptech/glide/load/b/b/e;

    .line 52
    :cond_0
    sget-object p0, Lcom/bumptech/glide/load/b/b/e;->a:Lcom/bumptech/glide/load/b/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 165
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->a()Lcom/bumptech/glide/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/a/a;->delete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :try_start_1
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 175
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 174
    :try_start_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->b()V

    throw v0

    :catch_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 175
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final delete(Lcom/bumptech/glide/load/d;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->b:Lcom/bumptech/glide/load/b/b/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/b/j;->getSafeKey(Lcom/bumptech/glide/load/d;)Ljava/lang/String;

    move-result-object p1

    .line 154
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->a()Lcom/bumptech/glide/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/a/a;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final get(Lcom/bumptech/glide/load/d;)Ljava/io/File;
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->b:Lcom/bumptech/glide/load/b/b/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/b/j;->getSafeKey(Lcom/bumptech/glide/load/d;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 89
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get: Obtained: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for for Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 p1, 0x0

    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->a()Lcom/bumptech/glide/a/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/a/a;->get(Ljava/lang/String;)Lcom/bumptech/glide/a/a$d;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 99
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/a/a$d;->getFile(I)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-object p1
.end method

.method public final put(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/b/b/a$b;)V
    .locals 4

    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/load/b/b/e;->b:Lcom/bumptech/glide/load/b/b/j;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/b/j;->getSafeKey(Lcom/bumptech/glide/load/d;)Ljava/lang/String;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/e;->e:Lcom/bumptech/glide/load/b/b/c;

    .line 1026
    monitor-enter v1

    .line 1027
    :try_start_0
    iget-object v2, v1, Lcom/bumptech/glide/load/b/b/c;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/b/b/c$a;

    if-nez v2, :cond_0

    .line 1029
    iget-object v2, v1, Lcom/bumptech/glide/load/b/b/c;->b:Lcom/bumptech/glide/load/b/b/c$b;

    invoke-virtual {v2}, Lcom/bumptech/glide/load/b/b/c$b;->a()Lcom/bumptech/glide/load/b/b/c$a;

    move-result-object v2

    .line 1030
    iget-object v3, v1, Lcom/bumptech/glide/load/b/b/c;->a:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    :cond_0
    iget v3, v2, Lcom/bumptech/glide/load/b/b/c$a;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/bumptech/glide/load/b/b/c$a;->b:I

    .line 1033
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1035
    iget-object v1, v2, Lcom/bumptech/glide/load/b/b/c$a;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_1
    const-string v1, "DiskLruCacheWrapper"

    const/4 v2, 0x2

    .line 116
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Put: Obtained: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for for Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/b/e;->a()Lcom/bumptech/glide/a/a;

    move-result-object p1

    .line 123
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/a/a;->get(Ljava/lang/String;)Lcom/bumptech/glide/a/a$d;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    .line 146
    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/bumptech/glide/load/b/b/e;->e:Lcom/bumptech/glide/load/b/b/c;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/b/b/c;->a(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_2
    :try_start_3
    invoke-virtual {p1, v0}, Lcom/bumptech/glide/a/a;->edit(Ljava/lang/String;)Lcom/bumptech/glide/a/a$b;

    move-result-object p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    .line 133
    :try_start_4
    invoke-virtual {p1, v1}, Lcom/bumptech/glide/a/a$b;->getFile(I)Ljava/io/File;

    move-result-object v1

    .line 134
    invoke-interface {p2, v1}, Lcom/bumptech/glide/load/b/b/a$b;->write(Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 135
    invoke-virtual {p1}, Lcom/bumptech/glide/a/a$b;->commit()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    :cond_3
    :try_start_5
    invoke-virtual {p1}, Lcom/bumptech/glide/a/a$b;->abortUnlessCommitted()V

    goto :goto_0

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/bumptech/glide/a/a$b;->abortUnlessCommitted()V

    throw p2

    .line 130
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Had two simultaneous puts for: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 146
    iget-object p2, p0, Lcom/bumptech/glide/load/b/b/e;->e:Lcom/bumptech/glide/load/b/b/c;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/b/b/c;->a(Ljava/lang/String;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 1033
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
