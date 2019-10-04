.class final Lcom/bumptech/glide/load/c/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/a/d;
.implements Lcom/bumptech/glide/load/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d<",
        "TData;>;",
        "Lcom/bumptech/glide/load/a/d$a<",
        "TData;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/a/d<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field private final b:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/bumptech/glide/Priority;

.field private e:Lcom/bumptech/glide/load/a/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/a/d$a<",
            "-TData;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z


# direct methods
.method constructor <init>(Ljava/util/List;Landroidx/core/util/Pools$Pool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/a/d<",
            "TData;>;>;",
            "Landroidx/core/util/Pools$Pool<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p2, p0, Lcom/bumptech/glide/load/c/q$a;->b:Landroidx/core/util/Pools$Pool;

    .line 89
    invoke-static {p1}, Lcom/bumptech/glide/g/j;->checkNotEmpty(Ljava/util/Collection;)Ljava/util/Collection;

    .line 90
    iput-object p1, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    const/4 p1, 0x0

    .line 91
    iput p1, p0, Lcom/bumptech/glide/load/c/q$a;->c:I

    return-void
.end method

.method private a()V
    .locals 4

    .line 158
    iget-boolean v0, p0, Lcom/bumptech/glide/load/c/q$a;->g:Z

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget v0, p0, Lcom/bumptech/glide/load/c/q$a;->c:I

    iget-object v1, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 163
    iget v0, p0, Lcom/bumptech/glide/load/c/q$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bumptech/glide/load/c/q$a;->c:I

    .line 164
    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->d:Lcom/bumptech/glide/Priority;

    iget-object v1, p0, Lcom/bumptech/glide/load/c/q$a;->e:Lcom/bumptech/glide/load/a/d$a;

    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/load/c/q$a;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V

    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->e:Lcom/bumptech/glide/load/a/d$a;

    new-instance v1, Lcom/bumptech/glide/load/b/q;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/bumptech/glide/load/c/q$a;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "Fetch failed"

    invoke-direct {v1, v3, v2}, Lcom/bumptech/glide/load/b/q;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/a/d$a;->onLoadFailed(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/bumptech/glide/load/c/q$a;->g:Z

    .line 125
    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/a/d;

    .line 126
    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final cleanup()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/bumptech/glide/load/c/q$a;->b:Landroidx/core/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->f:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/a/d;

    .line 118
    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->cleanup()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getDataClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->getDataClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public final getDataSource()Lcom/bumptech/glide/load/DataSource;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->getDataSource()Lcom/bumptech/glide/load/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public final loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/load/a/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lcom/bumptech/glide/load/c/q$a;->d:Lcom/bumptech/glide/Priority;

    .line 98
    iput-object p2, p0, Lcom/bumptech/glide/load/c/q$a;->e:Lcom/bumptech/glide/load/a/d$a;

    .line 99
    iget-object p2, p0, Lcom/bumptech/glide/load/c/q$a;->b:Landroidx/core/util/Pools$Pool;

    invoke-interface {p2}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/bumptech/glide/load/c/q$a;->f:Ljava/util/List;

    .line 100
    iget-object p2, p0, Lcom/bumptech/glide/load/c/q$a;->a:Ljava/util/List;

    iget v0, p0, Lcom/bumptech/glide/load/c/q$a;->c:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/load/a/d;

    invoke-interface {p2, p1, p0}, Lcom/bumptech/glide/load/a/d;->loadData(Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/load/a/d$a;)V

    .line 106
    iget-boolean p1, p0, Lcom/bumptech/glide/load/c/q$a;->g:Z

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/bumptech/glide/load/c/q$a;->cancel()V

    :cond_0
    return-void
.end method

.method public final onDataReady(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->e:Lcom/bumptech/glide/load/a/d$a;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/a/d$a;->onDataReady(Ljava/lang/Object;)V

    return-void

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/load/c/q$a;->a()V

    return-void
.end method

.method public final onLoadFailed(Ljava/lang/Exception;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/bumptech/glide/load/c/q$a;->f:Ljava/util/List;

    invoke-static {v0}, Lcom/bumptech/glide/g/j;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    invoke-direct {p0}, Lcom/bumptech/glide/load/c/q$a;->a()V

    return-void
.end method
