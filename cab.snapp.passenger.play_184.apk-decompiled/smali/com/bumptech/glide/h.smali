.class public final Lcom/bumptech/glide/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/manager/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/h$a;,
        Lcom/bumptech/glide/h$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/manager/i;"
    }
.end annotation


# static fields
.field private static final e:Lcom/bumptech/glide/e/h;

.field private static final f:Lcom/bumptech/glide/e/h;

.field private static final g:Lcom/bumptech/glide/e/h;


# instance fields
.field protected final a:Lcom/bumptech/glide/c;

.field protected final b:Landroid/content/Context;

.field final c:Lcom/bumptech/glide/manager/h;

.field final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/bumptech/glide/e/g<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/manager/n;

.field private final i:Lcom/bumptech/glide/manager/m;

.field private final j:Lcom/bumptech/glide/manager/o;

.field private final k:Ljava/lang/Runnable;

.field private final l:Landroid/os/Handler;

.field private final m:Lcom/bumptech/glide/manager/c;

.field private n:Lcom/bumptech/glide/e/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    const-class v0, Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/bumptech/glide/e/h;->decodeTypeOf(Ljava/lang/Class;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->lock()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/e/h;

    .line 60
    const-class v0, Lcom/bumptech/glide/load/resource/d/c;

    invoke-static {v0}, Lcom/bumptech/glide/e/h;->decodeTypeOf(Ljava/lang/Class;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/e/h;->lock()Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/e/h;

    .line 61
    sget-object v0, Lcom/bumptech/glide/load/b/j;->DATA:Lcom/bumptech/glide/load/b/j;

    .line 62
    invoke-static {v0}, Lcom/bumptech/glide/e/h;->diskCacheStrategyOf(Lcom/bumptech/glide/load/b/j;)Lcom/bumptech/glide/e/h;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/Priority;->LOW:Lcom/bumptech/glide/Priority;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/h;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    const/4 v1, 0x1

    .line 63
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e/h;->skipMemoryCache(Z)Lcom/bumptech/glide/e/a;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/e/h;

    sput-object v0, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/e/h;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/m;Landroid/content/Context;)V
    .locals 7

    .line 94
    new-instance v4, Lcom/bumptech/glide/manager/n;

    invoke-direct {v4}, Lcom/bumptech/glide/manager/n;-><init>()V

    .line 1566
    iget-object v5, p1, Lcom/bumptech/glide/c;->b:Lcom/bumptech/glide/manager/d;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    .line 94
    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/h;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/m;Lcom/bumptech/glide/manager/n;Lcom/bumptech/glide/manager/d;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/manager/h;Lcom/bumptech/glide/manager/m;Lcom/bumptech/glide/manager/n;Lcom/bumptech/glide/manager/d;Landroid/content/Context;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/bumptech/glide/manager/o;

    invoke-direct {v0}, Lcom/bumptech/glide/manager/o;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/h;->j:Lcom/bumptech/glide/manager/o;

    .line 75
    new-instance v0, Lcom/bumptech/glide/h$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/h$1;-><init>(Lcom/bumptech/glide/h;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->k:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bumptech/glide/h;->l:Landroid/os/Handler;

    .line 112
    iput-object p1, p0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/c;

    .line 113
    iput-object p2, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/manager/h;

    .line 114
    iput-object p3, p0, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/manager/m;

    .line 115
    iput-object p4, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/manager/n;

    .line 116
    iput-object p6, p0, Lcom/bumptech/glide/h;->b:Landroid/content/Context;

    .line 120
    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    new-instance p6, Lcom/bumptech/glide/h$b;

    invoke-direct {p6, p0, p4}, Lcom/bumptech/glide/h$b;-><init>(Lcom/bumptech/glide/h;Lcom/bumptech/glide/manager/n;)V

    .line 119
    invoke-interface {p5, p3, p6}, Lcom/bumptech/glide/manager/d;->build(Landroid/content/Context;Lcom/bumptech/glide/manager/c$a;)Lcom/bumptech/glide/manager/c;

    move-result-object p3

    iput-object p3, p0, Lcom/bumptech/glide/h;->m:Lcom/bumptech/glide/manager/c;

    .line 127
    invoke-static {}, Lcom/bumptech/glide/g/k;->isOnBackgroundThread()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 128
    iget-object p3, p0, Lcom/bumptech/glide/h;->l:Landroid/os/Handler;

    iget-object p4, p0, Lcom/bumptech/glide/h;->k:Ljava/lang/Runnable;

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 130
    :cond_0
    invoke-interface {p2, p0}, Lcom/bumptech/glide/manager/h;->addListener(Lcom/bumptech/glide/manager/i;)V

    .line 132
    :goto_0
    iget-object p3, p0, Lcom/bumptech/glide/h;->m:Lcom/bumptech/glide/manager/c;

    invoke-interface {p2, p3}, Lcom/bumptech/glide/manager/h;->addListener(Lcom/bumptech/glide/manager/i;)V

    .line 134
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 1571
    iget-object p3, p1, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/e;

    .line 135
    invoke-virtual {p3}, Lcom/bumptech/glide/e;->getDefaultRequestListeners()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Lcom/bumptech/glide/h;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2571
    iget-object p2, p1, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/e;

    .line 136
    invoke-virtual {p2}, Lcom/bumptech/glide/e;->getDefaultRequestOptions()Lcom/bumptech/glide/e/h;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/e/h;)V

    .line 2822
    iget-object p2, p1, Lcom/bumptech/glide/c;->c:Ljava/util/List;

    monitor-enter p2

    .line 2823
    :try_start_0
    iget-object p3, p1, Lcom/bumptech/glide/c;->c:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 2826
    iget-object p1, p1, Lcom/bumptech/glide/c;->c:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2827
    monitor-exit p2

    return-void

    .line 2824
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p3, "Cannot register already registered manager"

    invoke-direct {p1, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 2827
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized a(Lcom/bumptech/glide/e/h;)V
    .locals 0

    monitor-enter p0

    .line 142
    :try_start_0
    invoke-virtual {p1}, Lcom/bumptech/glide/e/h;->clone()Lcom/bumptech/glide/e/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/e/h;

    invoke-virtual {p1}, Lcom/bumptech/glide/e/h;->autoClone()Lcom/bumptech/glide/e/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/e/h;

    iput-object p1, p0, Lcom/bumptech/glide/h;->n:Lcom/bumptech/glide/e/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized b(Lcom/bumptech/glide/e/h;)V
    .locals 1

    monitor-enter p0

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->n:Lcom/bumptech/glide/e/h;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e/h;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/e/a;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/e/h;

    iput-object p1, p0, Lcom/bumptech/glide/h;->n:Lcom/bumptech/glide/e/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method final declared-synchronized a()Lcom/bumptech/glide/e/h;
    .locals 1

    monitor-enter p0

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->n:Lcom/bumptech/glide/e/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final a(Ljava/lang/Class;)Lcom/bumptech/glide/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/i<",
            "*TT;>;"
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/c;

    .line 4571
    iget-object v0, v0, Lcom/bumptech/glide/c;->a:Lcom/bumptech/glide/e;

    .line 654
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/e;->getDefaultTransitionOptions(Ljava/lang/Class;)Lcom/bumptech/glide/i;

    move-result-object p1

    return-object p1
.end method

.method final declared-synchronized a(Lcom/bumptech/glide/e/a/i;Lcom/bumptech/glide/e/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/i<",
            "*>;",
            "Lcom/bumptech/glide/e/d;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 640
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->j:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/o;->track(Lcom/bumptech/glide/e/a/i;)V

    .line 641
    iget-object p1, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/manager/n;->runRequest(Lcom/bumptech/glide/e/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized a(Lcom/bumptech/glide/e/a/i;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/i<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 624
    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/e/a/i;->getRequest()Lcom/bumptech/glide/e/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 627
    monitor-exit p0

    return v1

    .line 630
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v2, v0}, Lcom/bumptech/glide/manager/n;->clearRemoveAndRecycle(Lcom/bumptech/glide/e/d;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 631
    iget-object v0, p0, Lcom/bumptech/glide/h;->j:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/manager/o;->untrack(Lcom/bumptech/glide/e/a/i;)V

    const/4 v0, 0x0

    .line 632
    invoke-interface {p1, v0}, Lcom/bumptech/glide/e/a/i;->setRequest(Lcom/bumptech/glide/e/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    monitor-exit p0

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 635
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final addDefaultRequestListener(Lcom/bumptech/glide/e/g;)Lcom/bumptech/glide/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/g<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bumptech/glide/h;"
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/bumptech/glide/h;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public final declared-synchronized applyDefaultRequestOptions(Lcom/bumptech/glide/e/h;)Lcom/bumptech/glide/h;
    .locals 0

    monitor-enter p0

    .line 170
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/h;->b(Lcom/bumptech/glide/e/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final as(Ljava/lang/Class;)Lcom/bumptech/glide/g;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/bumptech/glide/g<",
            "TResourceType;>;"
        }
    .end annotation

    .line 564
    new-instance v0, Lcom/bumptech/glide/g;

    iget-object v1, p0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/c;

    iget-object v2, p0, Lcom/bumptech/glide/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/bumptech/glide/g;-><init>(Lcom/bumptech/glide/c;Lcom/bumptech/glide/h;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public final asBitmap()Lcom/bumptech/glide/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 358
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->as(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/h;->e:Lcom/bumptech/glide/e/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public final asDrawable()Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 393
    const-class v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->as(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public final asFile()Lcom/bumptech/glide/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 549
    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->as(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/bumptech/glide/e/h;->skipMemoryCacheOf(Z)Lcom/bumptech/glide/e/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public final asGif()Lcom/bumptech/glide/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g<",
            "Lcom/bumptech/glide/load/resource/d/c;",
            ">;"
        }
    .end annotation

    .line 377
    const-class v0, Lcom/bumptech/glide/load/resource/d/c;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->as(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/h;->f:Lcom/bumptech/glide/e/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public final clear(Landroid/view/View;)V
    .locals 1

    .line 580
    new-instance v0, Lcom/bumptech/glide/h$a;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/h$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->clear(Lcom/bumptech/glide/e/a/i;)V

    return-void
.end method

.method public final declared-synchronized clear(Lcom/bumptech/glide/e/a/i;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/e/a/i<",
            "*>;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    .line 591
    monitor-exit p0

    return-void

    .line 3598
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/e/a/i;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3616
    iget-object v0, p0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/c;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/c;->a(Lcom/bumptech/glide/e/a/i;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/bumptech/glide/e/a/i;->getRequest()Lcom/bumptech/glide/e/d;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3617
    invoke-interface {p1}, Lcom/bumptech/glide/e/a/i;->getRequest()Lcom/bumptech/glide/e/d;

    move-result-object v0

    const/4 v1, 0x0

    .line 3618
    invoke-interface {p1, v1}, Lcom/bumptech/glide/e/a/i;->setRequest(Lcom/bumptech/glide/e/d;)V

    .line 3619
    invoke-interface {v0}, Lcom/bumptech/glide/e/d;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final download(Ljava/lang/Object;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/g<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 534
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->downloadOnly()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->load(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final downloadOnly()Lcom/bumptech/glide/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/g<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 522
    const-class v0, Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/h;->as(Ljava/lang/Class;)Lcom/bumptech/glide/g;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/h;->g:Lcom/bumptech/glide/e/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/g;->apply(Lcom/bumptech/glide/e/a;)Lcom/bumptech/glide/g;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized isPaused()Z
    .locals 1

    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->isPaused()Z

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

.method public final load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->asDrawable()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 417
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->asDrawable()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Landroid/net/Uri;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->asDrawable()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->load(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Ljava/io/File;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->asDrawable()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->load(Ljava/io/File;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Ljava/lang/Integer;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 466
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->asDrawable()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Ljava/lang/Object;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->asDrawable()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->load(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Ljava/lang/String;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 429
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->asDrawable()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->load(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load(Ljava/net/URL;)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 479
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->asDrawable()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->load(Ljava/net/URL;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final load([B)Lcom/bumptech/glide/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/bumptech/glide/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 492
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->asDrawable()Lcom/bumptech/glide/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/g;->load([B)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->load(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->load(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->load(Landroid/net/Uri;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->load(Ljava/io/File;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->load(Ljava/lang/Object;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->load(Ljava/lang/String;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->load(Ljava/net/URL;)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic load([B)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/h;->load([B)Lcom/bumptech/glide/g;

    move-result-object p1

    return-object p1
.end method

.method public final declared-synchronized onDestroy()V
    .locals 3

    monitor-enter p0

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->j:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/o;->onDestroy()V

    .line 338
    iget-object v0, p0, Lcom/bumptech/glide/h;->j:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/o;->getAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/e/a/i;

    .line 339
    invoke-virtual {p0, v1}, Lcom/bumptech/glide/h;->clear(Lcom/bumptech/glide/e/a/i;)V

    goto :goto_0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->j:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/o;->clear()V

    .line 342
    iget-object v0, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->clearRequests()V

    .line 343
    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/manager/h;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/manager/h;->removeListener(Lcom/bumptech/glide/manager/i;)V

    .line 344
    iget-object v0, p0, Lcom/bumptech/glide/h;->c:Lcom/bumptech/glide/manager/h;

    iget-object v1, p0, Lcom/bumptech/glide/h;->m:Lcom/bumptech/glide/manager/c;

    invoke-interface {v0, v1}, Lcom/bumptech/glide/manager/h;->removeListener(Lcom/bumptech/glide/manager/i;)V

    .line 345
    iget-object v0, p0, Lcom/bumptech/glide/h;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bumptech/glide/h;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 346
    iget-object v0, p0, Lcom/bumptech/glide/h;->a:Lcom/bumptech/glide/c;

    .line 2831
    iget-object v1, v0, Lcom/bumptech/glide/c;->c:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2832
    :try_start_1
    iget-object v2, v0, Lcom/bumptech/glide/c;->c:Ljava/util/List;

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2835
    iget-object v0, v0, Lcom/bumptech/glide/c;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2836
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 2833
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot unregister not yet registered manager"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 2836
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized onStart()V
    .locals 1

    monitor-enter p0

    .line 317
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->resumeRequests()V

    .line 318
    iget-object v0, p0, Lcom/bumptech/glide/h;->j:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/o;->onStart()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onStop()V
    .locals 1

    monitor-enter p0

    .line 327
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->pauseRequests()V

    .line 328
    iget-object v0, p0, Lcom/bumptech/glide/h;->j:Lcom/bumptech/glide/manager/o;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/o;->onStop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized pauseAllRequests()V
    .locals 1

    monitor-enter p0

    .line 259
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->pauseAllRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized pauseRequests()V
    .locals 1

    monitor-enter p0

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->pauseRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized pauseRequestsRecursive()V
    .locals 2

    monitor-enter p0

    .line 279
    :try_start_0
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->pauseRequests()V

    .line 280
    iget-object v0, p0, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/manager/m;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/m;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/h;

    .line 281
    invoke-virtual {v1}, Lcom/bumptech/glide/h;->pauseRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 283
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized resumeRequests()V
    .locals 1

    monitor-enter p0

    .line 292
    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/n;->resumeRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized resumeRequestsRecursive()V
    .locals 2

    monitor-enter p0

    .line 303
    :try_start_0
    invoke-static {}, Lcom/bumptech/glide/g/k;->assertMainThread()V

    .line 304
    invoke-virtual {p0}, Lcom/bumptech/glide/h;->resumeRequests()V

    .line 305
    iget-object v0, p0, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/manager/m;

    invoke-interface {v0}, Lcom/bumptech/glide/manager/m;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/h;

    .line 306
    invoke-virtual {v1}, Lcom/bumptech/glide/h;->resumeRequests()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 308
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized setDefaultRequestOptions(Lcom/bumptech/glide/e/h;)Lcom/bumptech/glide/h;
    .locals 0

    monitor-enter p0

    .line 192
    :try_start_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/e/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 659
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{tracker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/h;->h:Lcom/bumptech/glide/manager/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", treeNode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/h;->i:Lcom/bumptech/glide/manager/m;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
