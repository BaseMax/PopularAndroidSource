.class public Lc/b/a/c/c/w;
.super Ljava/lang/Object;
.source "ModelLoaderRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/c/w$a;
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/c/y;

.field public final b:Lc/b/a/c/c/w$a;


# direct methods
.method public constructor <init>(Lb/i/j/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/i/j/e<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/b/a/c/c/y;

    invoke-direct {v0, p1}, Lc/b/a/c/c/y;-><init>(Lb/i/j/e;)V

    invoke-direct {p0, v0}, Lc/b/a/c/c/w;-><init>(Lc/b/a/c/c/y;)V

    return-void
.end method

.method public constructor <init>(Lc/b/a/c/c/y;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lc/b/a/c/c/w$a;

    invoke-direct {v0}, Lc/b/a/c/c/w$a;-><init>()V

    iput-object v0, p0, Lc/b/a/c/c/w;->b:Lc/b/a/c/c/w$a;

    .line 4
    iput-object p1, p0, Lc/b/a/c/c/w;->a:Lc/b/a/c/c/y;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/lang/Class<",
            "TA;>;"
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    iget-object v0, p0, Lc/b/a/c/c/w;->a:Lc/b/a/c/c/y;

    invoke-virtual {v0, p1}, Lc/b/a/c/c/y;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lc/b/a/c/c/v<",
            "+TModel;+TData;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/b/a/c/c/w;->a:Lc/b/a/c/c/y;

    invoke-virtual {v0, p1, p2, p3}, Lc/b/a/c/c/y;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)V

    .line 2
    iget-object p1, p0, Lc/b/a/c/c/w;->b:Lc/b/a/c/c/w$a;

    invoke-virtual {p1}, Lc/b/a/c/c/w$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Ljava/util/List<",
            "Lc/b/a/c/c/u<",
            "TA;*>;>;"
        }
    .end annotation

    monitor-enter p0

    .line 8
    :try_start_0
    iget-object v0, p0, Lc/b/a/c/c/w;->b:Lc/b/a/c/c/w$a;

    invoke-virtual {v0, p1}, Lc/b/a/c/c/w$a;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lc/b/a/c/c/w;->a:Lc/b/a/c/c/y;

    invoke-virtual {v0, p1}, Lc/b/a/c/c/y;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lc/b/a/c/c/w;->b:Lc/b/a/c/c/w$a;

    invoke-virtual {v1, p1, v0}, Lc/b/a/c/c/w$a;->a(Ljava/lang/Class;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(TA;)",
            "Ljava/util/List<",
            "Lc/b/a/c/c/u<",
            "TA;*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lc/b/a/c/c/w;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lc/b/a/c/c/w;->b(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v4, v2

    const/4 v2, 0x0

    const/4 v5, 0x1

    :goto_0
    if-ge v2, v1, :cond_2

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/b/a/c/c/u;

    .line 5
    invoke-interface {v6, p1}, Lc/b/a/c/c/u;->a(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v5, :cond_0

    .line 6
    new-instance v4, Ljava/util/ArrayList;

    sub-int v5, v1, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 7
    :cond_0
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method
