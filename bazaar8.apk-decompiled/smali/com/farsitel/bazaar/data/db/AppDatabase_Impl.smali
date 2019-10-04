.class public final Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;
.super Lcom/farsitel/bazaar/data/db/AppDatabase;
.source "AppDatabase_Impl.java"


# instance fields
.field public volatile l:Lc/c/a/e/d/b/L;

.field public volatile m:Lc/c/a/e/d/b/o;

.field public volatile n:Lc/c/a/e/d/r/b/a/a;

.field public volatile o:Lc/c/a/e/d/r/a/a/a;

.field public volatile p:Lc/c/a/e/d/b/e;

.field public volatile q:Lc/c/a/e/d/h/e/a/a/a;

.field public volatile r:Lc/c/a/e/d/d/a/a;

.field public volatile s:Lc/c/a/e/d/n/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/data/db/AppDatabase;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;Lb/C/a/b;)Lb/C/a/b;
    .locals 0

    .line 2
    iput-object p1, p0, Landroidx/room/RoomDatabase;->a:Lb/C/a/b;

    return-object p1
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;Lb/C/a/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/b;)V

    return-void
.end method

.method public static synthetic c(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic f(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Lb/z/c;)Lb/C/a/c;
    .locals 4

    .line 3
    new-instance v0, Lb/z/w;

    new-instance v1, Lc/c/a/e/a/a;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lc/c/a/e/a/a;-><init>(Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;I)V

    const-string v2, "cc4d00ae6875015c8ababcf95fe05987"

    const-string v3, "5e51d2d1c0d598d49298bd63a59887d8"

    invoke-direct {v0, p1, v1, v2, v3}, Lb/z/w;-><init>(Lb/z/c;Lb/z/w$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p1, Lb/z/c;->b:Landroid/content/Context;

    invoke-static {v1}, Lb/C/a/c$b;->a(Landroid/content/Context;)Lb/C/a/c$b$a;

    move-result-object v1

    iget-object v2, p1, Lb/z/c;->c:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v2}, Lb/C/a/c$b$a;->a(Ljava/lang/String;)Lb/C/a/c$b$a;

    .line 6
    invoke-virtual {v1, v0}, Lb/C/a/c$b$a;->a(Lb/C/a/c$a;)Lb/C/a/c$b$a;

    .line 7
    invoke-virtual {v1}, Lb/C/a/c$b$a;->a()Lb/C/a/c$b;

    move-result-object v0

    .line 8
    iget-object p1, p1, Lb/z/c;->a:Lb/C/a/c$c;

    invoke-interface {p1, v0}, Lb/C/a/c$c;->a(Lb/C/a/c$b;)Lb/C/a/c;

    move-result-object p1

    return-object p1
.end method

.method public d()Lb/z/j;
    .locals 6

    .line 2
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 4
    new-instance v3, Lb/z/j;

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "upgradable_app"

    aput-object v5, v4, v1

    const/4 v1, 0x1

    const-string v5, "malicious_app"

    aput-object v5, v4, v1

    const/4 v1, 0x2

    const-string v5, "comment"

    aput-object v5, v4, v1

    const/4 v1, 0x3

    const-string v5, "commentAction"

    aput-object v5, v4, v1

    const/4 v1, 0x4

    const-string v5, "downloaded_app"

    aput-object v5, v4, v1

    const/4 v1, 0x5

    const-string v5, "downloadedVideo"

    aput-object v5, v4, v1

    const/4 v1, 0x6

    const-string v5, "bookmark"

    aput-object v5, v4, v1

    const/4 v1, 0x7

    const-string v5, "played_video"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Lb/z/j;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method public p()Lc/c/a/e/d/d/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->r:Lc/c/a/e/d/d/a/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->r:Lc/c/a/e/d/d/a/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->r:Lc/c/a/e/d/d/a/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lc/c/a/e/d/d/a/i;

    invoke-direct {v0, p0}, Lc/c/a/e/d/d/a/i;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->r:Lc/c/a/e/d/d/a/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->r:Lc/c/a/e/d/d/a/a;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public q()Lc/c/a/e/d/r/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->o:Lc/c/a/e/d/r/a/a/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->o:Lc/c/a/e/d/r/a/a/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->o:Lc/c/a/e/d/r/a/a/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lc/c/a/e/d/r/a/a/g;

    invoke-direct {v0, p0}, Lc/c/a/e/d/r/a/a/g;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->o:Lc/c/a/e/d/r/a/a/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->o:Lc/c/a/e/d/r/a/a/a;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public r()Lc/c/a/e/d/r/b/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->n:Lc/c/a/e/d/r/b/a/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->n:Lc/c/a/e/d/r/b/a/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->n:Lc/c/a/e/d/r/b/a/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lc/c/a/e/d/r/b/a/h;

    invoke-direct {v0, p0}, Lc/c/a/e/d/r/b/a/h;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->n:Lc/c/a/e/d/r/b/a/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->n:Lc/c/a/e/d/r/b/a/a;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public s()Lc/c/a/e/d/b/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->p:Lc/c/a/e/d/b/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->p:Lc/c/a/e/d/b/e;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->p:Lc/c/a/e/d/b/e;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lc/c/a/e/d/b/i;

    invoke-direct {v0, p0}, Lc/c/a/e/d/b/i;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->p:Lc/c/a/e/d/b/e;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->p:Lc/c/a/e/d/b/e;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public t()Lc/c/a/e/d/h/e/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->q:Lc/c/a/e/d/h/e/a/a/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->q:Lc/c/a/e/d/h/e/a/a/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->q:Lc/c/a/e/d/h/e/a/a/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lc/c/a/e/d/h/e/a/a/h;

    invoke-direct {v0, p0}, Lc/c/a/e/d/h/e/a/a/h;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->q:Lc/c/a/e/d/h/e/a/a/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->q:Lc/c/a/e/d/h/e/a/a/a;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public u()Lc/c/a/e/d/b/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->m:Lc/c/a/e/d/b/o;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->m:Lc/c/a/e/d/b/o;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->m:Lc/c/a/e/d/b/o;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lc/c/a/e/d/b/w;

    invoke-direct {v0, p0}, Lc/c/a/e/d/b/w;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->m:Lc/c/a/e/d/b/o;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->m:Lc/c/a/e/d/b/o;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public v()Lc/c/a/e/d/n/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->s:Lc/c/a/e/d/n/a/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->s:Lc/c/a/e/d/n/a/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->s:Lc/c/a/e/d/n/a/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lc/c/a/e/d/n/a/e;

    invoke-direct {v0, p0}, Lc/c/a/e/d/n/a/e;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->s:Lc/c/a/e/d/n/a/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->s:Lc/c/a/e/d/n/a/a;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public w()Lc/c/a/e/d/b/L;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->l:Lc/c/a/e/d/b/L;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->l:Lc/c/a/e/d/b/L;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->l:Lc/c/a/e/d/b/L;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lc/c/a/e/d/b/V;

    invoke-direct {v0, p0}, Lc/c/a/e/d/b/V;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->l:Lc/c/a/e/d/b/L;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/data/db/AppDatabase_Impl;->l:Lc/c/a/e/d/b/L;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
