.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "WorkDatabase_Impl.java"


# instance fields
.field public volatile m:Lb/H/a/c/p;

.field public volatile n:Lb/H/a/c/b;

.field public volatile o:Lb/H/a/c/B;

.field public volatile p:Lb/H/a/c/f;

.field public volatile q:Lb/H/a/c/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroidx/work/impl/WorkDatabase_Impl;Lb/C/a/b;)Lb/C/a/b;
    .locals 0

    .line 2
    iput-object p1, p0, Landroidx/room/RoomDatabase;->a:Lb/C/a/b;

    return-object p1
.end method

.method public static synthetic a(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Landroidx/work/impl/WorkDatabase_Impl;Lb/C/a/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/b;)V

    return-void
.end method

.method public static synthetic c(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic f(Landroidx/work/impl/WorkDatabase_Impl;)Ljava/util/List;
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

    new-instance v1, Lb/H/a/l;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lb/H/a/l;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    const-string v2, "c84d23ade98552f1cec71088c1f0794c"

    const-string v3, "1db8206f0da6aa81bbdd2d99a82d9e14"

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
    .locals 4

    .line 2
    new-instance v0, Lb/z/j;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Dependency"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "WorkSpec"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "WorkTag"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "SystemIdInfo"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "WorkName"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Lb/z/j;-><init>(Landroidx/room/RoomDatabase;[Ljava/lang/String;)V

    return-object v0
.end method

.method public p()Lb/H/a/c/b;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lb/H/a/c/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lb/H/a/c/b;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lb/H/a/c/b;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lb/H/a/c/d;

    invoke-direct {v0, p0}, Lb/H/a/c/d;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lb/H/a/c/b;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->n:Lb/H/a/c/b;

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

.method public t()Lb/H/a/c/f;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lb/H/a/c/f;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lb/H/a/c/f;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lb/H/a/c/f;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lb/H/a/c/i;

    invoke-direct {v0, p0}, Lb/H/a/c/i;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lb/H/a/c/f;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->p:Lb/H/a/c/f;

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

.method public u()Lb/H/a/c/k;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lb/H/a/c/k;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lb/H/a/c/k;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lb/H/a/c/k;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lb/H/a/c/m;

    invoke-direct {v0, p0}, Lb/H/a/c/m;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lb/H/a/c/k;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->q:Lb/H/a/c/k;

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

.method public v()Lb/H/a/c/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lb/H/a/c/p;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lb/H/a/c/p;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lb/H/a/c/p;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lb/H/a/c/z;

    invoke-direct {v0, p0}, Lb/H/a/c/z;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lb/H/a/c/p;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->m:Lb/H/a/c/p;

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

.method public w()Lb/H/a/c/B;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lb/H/a/c/B;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lb/H/a/c/B;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lb/H/a/c/B;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lb/H/a/c/D;

    invoke-direct {v0, p0}, Lb/H/a/c/D;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lb/H/a/c/B;

    .line 6
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkDatabase_Impl;->o:Lb/H/a/c/B;

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
