.class public Lc/b/a/c/c/x$a;
.super Ljava/lang/Object;
.source "MultiModelLoader.java"

# interfaces
.implements Lc/b/a/c/a/d;
.implements Lc/b/a/c/a/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/c/x;
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
        "Lc/b/a/c/a/d<",
        "TData;>;",
        "Lc/b/a/c/a/d$a<",
        "TData;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/c/a/d<",
            "TData;>;>;"
        }
    .end annotation
.end field

.field public final b:Lb/i/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/i/j/e<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:I

.field public d:Lcom/bumptech/glide/Priority;

.field public e:Lc/b/a/c/a/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/a/d$a<",
            "-TData;>;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lb/i/j/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/b/a/c/a/d<",
            "TData;>;>;",
            "Lb/i/j/e<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lc/b/a/c/c/x$a;->b:Lb/i/j/e;

    .line 3
    invoke-static {p1}, Lc/b/a/i/i;->a(Ljava/util/Collection;)Ljava/util/Collection;

    .line 4
    iput-object p1, p0, Lc/b/a/c/c/x$a;->a:Ljava/util/List;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lc/b/a/c/c/x$a;->c:I

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TData;>;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lc/b/a/c/c/x$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/c/a/d;

    invoke-interface {v0}, Lc/b/a/c/a/d;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/Priority;Lc/b/a/c/a/d$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/Priority;",
            "Lc/b/a/c/a/d$a<",
            "-TData;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/c/c/x$a;->d:Lcom/bumptech/glide/Priority;

    .line 2
    iput-object p2, p0, Lc/b/a/c/c/x$a;->e:Lc/b/a/c/a/d$a;

    .line 3
    iget-object p2, p0, Lc/b/a/c/c/x$a;->b:Lb/i/j/e;

    invoke-interface {p2}, Lb/i/j/e;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lc/b/a/c/c/x$a;->f:Ljava/util/List;

    .line 4
    iget-object p2, p0, Lc/b/a/c/c/x$a;->a:Ljava/util/List;

    iget v0, p0, Lc/b/a/c/c/x$a;->c:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/b/a/c/a/d;

    invoke-interface {p2, p1, p0}, Lc/b/a/c/a/d;->a(Lcom/bumptech/glide/Priority;Lc/b/a/c/a/d$a;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 1

    .line 8
    iget-object v0, p0, Lc/b/a/c/c/x$a;->f:Ljava/util/List;

    invoke-static {v0}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-virtual {p0}, Lc/b/a/c/c/x$a;->d()V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TData;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lc/b/a/c/c/x$a;->e:Lc/b/a/c/a/d$a;

    invoke-interface {v0, p1}, Lc/b/a/c/a/d$a;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lc/b/a/c/c/x$a;->d()V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/c/c/x$a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lc/b/a/c/c/x$a;->b:Lb/i/j/e;

    invoke-interface {v1, v0}, Lb/i/j/e;->a(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/b/a/c/c/x$a;->f:Ljava/util/List;

    .line 4
    iget-object v0, p0, Lc/b/a/c/c/x$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/c/a/d;

    .line 5
    invoke-interface {v1}, Lc/b/a/c/a/d;->b()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()Lcom/bumptech/glide/load/DataSource;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/c/c/x$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/c/a/d;

    invoke-interface {v0}, Lc/b/a/c/a/d;->c()Lcom/bumptech/glide/load/DataSource;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/c/c/x$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/c/a/d;

    .line 2
    invoke-interface {v1}, Lc/b/a/c/a/d;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget v0, p0, Lc/b/a/c/c/x$a;->c:I

    iget-object v1, p0, Lc/b/a/c/c/x$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2
    iget v0, p0, Lc/b/a/c/c/x$a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/b/a/c/c/x$a;->c:I

    .line 3
    iget-object v0, p0, Lc/b/a/c/c/x$a;->d:Lcom/bumptech/glide/Priority;

    iget-object v1, p0, Lc/b/a/c/c/x$a;->e:Lc/b/a/c/a/d$a;

    invoke-virtual {p0, v0, v1}, Lc/b/a/c/c/x$a;->a(Lcom/bumptech/glide/Priority;Lc/b/a/c/a/d$a;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lc/b/a/c/c/x$a;->f:Ljava/util/List;

    invoke-static {v0}, Lc/b/a/i/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Lc/b/a/c/c/x$a;->e:Lc/b/a/c/a/d$a;

    new-instance v1, Lcom/bumptech/glide/load/engine/GlideException;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lc/b/a/c/c/x$a;->f:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "Fetch failed"

    invoke-direct {v1, v3, v2}, Lcom/bumptech/glide/load/engine/GlideException;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lc/b/a/c/a/d$a;->a(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
