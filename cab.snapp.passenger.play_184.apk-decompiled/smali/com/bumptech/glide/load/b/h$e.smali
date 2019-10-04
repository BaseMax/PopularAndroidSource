.class final Lcom/bumptech/glide/load/b/h$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e()Z
    .locals 1

    .line 649
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/h$e;->c:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/h$e;->b:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/h$e;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method final declared-synchronized a()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 628
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/h$e;->a:Z

    .line 629
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h$e;->e()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized b()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 633
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/h$e;->b:Z

    .line 634
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h$e;->e()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 638
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/h$e;->c:Z

    .line 639
    invoke-direct {p0}, Lcom/bumptech/glide/load/b/h$e;->e()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 643
    :try_start_0
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/h$e;->b:Z

    .line 644
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/h$e;->a:Z

    .line 645
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/h$e;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
