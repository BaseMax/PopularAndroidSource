.class public final Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;
.super Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;
.source "ActionLogDatabase_Impl.java"


# instance fields
.field public volatile m:Lc/c/a/a/b/a/a/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;Lb/C/a/b;)Lb/C/a/b;
    .locals 0

    .line 2
    iput-object p1, p0, Landroidx/room/RoomDatabase;->a:Lb/C/a/b;

    return-object p1
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;Lb/C/a/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/room/RoomDatabase;->a(Lb/C/a/b;)V

    return-void
.end method

.method public static synthetic c(Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic d(Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic e(Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/room/RoomDatabase;->h:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic f(Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;)Ljava/util/List;
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

    new-instance v1, Lc/c/a/a/b/a/a/b/f;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lc/c/a/a/b/a/a/b/f;-><init>(Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;I)V

    const-string v2, "02cdfb1ca6f75c0c9b494e578f9749cc"

    const-string v3, "3971ada524eacfe66b0ac7c460a7c1ca"

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

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "actionLog"

    aput-object v5, v4, v1

    invoke-direct {v3, p0, v0, v2, v4}, Lb/z/j;-><init>(Landroidx/room/RoomDatabase;Ljava/util/Map;Ljava/util/Map;[Ljava/lang/String;)V

    return-object v3
.end method

.method public p()Lc/c/a/a/b/a/a/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;->m:Lc/c/a/a/b/a/a/b/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;->m:Lc/c/a/a/b/a/a/b/a;

    return-object v0

    .line 3
    :cond_0
    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;->m:Lc/c/a/a/b/a/a/b/a;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lc/c/a/a/b/a/a/b/e;

    invoke-direct {v0, p0}, Lc/c/a/a/b/a/a/b/e;-><init>(Landroidx/room/RoomDatabase;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;->m:Lc/c/a/a/b/a/a/b/a;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/analytics/tracker/actionlog/data/local/ActionLogDatabase_Impl;->m:Lc/c/a/a/b/a/a/b/a;

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
