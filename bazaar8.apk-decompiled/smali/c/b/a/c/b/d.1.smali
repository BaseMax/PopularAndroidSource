.class public Lc/b/a/c/b/d;
.super Ljava/lang/Object;
.source "DataCacheGenerator.java"

# interfaces
.implements Lc/b/a/c/b/g;
.implements Lc/b/a/c/a/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/b/g;",
        "Lc/b/a/c/a/d$a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lc/b/a/c/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/b/h<",
            "*>;"
        }
    .end annotation
.end field

.field public final c:Lc/b/a/c/b/g$a;

.field public d:I

.field public e:Lc/b/a/c/c;

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/c/c/u<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation
.end field

.field public g:I

.field public volatile h:Lc/b/a/c/c/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/c/u$a<",
            "*>;"
        }
    .end annotation
.end field

.field public i:Ljava/io/File;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/h;Lc/b/a/c/b/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/h<",
            "*>;",
            "Lc/b/a/c/b/g$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/b/a/c/b/h;->c()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lc/b/a/c/b/d;-><init>(Ljava/util/List;Lc/b/a/c/b/h;Lc/b/a/c/b/g$a;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lc/b/a/c/b/h;Lc/b/a/c/b/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/b/a/c/c;",
            ">;",
            "Lc/b/a/c/b/h<",
            "*>;",
            "Lc/b/a/c/b/g$a;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lc/b/a/c/b/d;->d:I

    .line 4
    iput-object p1, p0, Lc/b/a/c/b/d;->a:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lc/b/a/c/b/d;->b:Lc/b/a/c/b/h;

    .line 6
    iput-object p3, p0, Lc/b/a/c/b/d;->c:Lc/b/a/c/b/g$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4

    .line 21
    iget-object v0, p0, Lc/b/a/c/b/d;->c:Lc/b/a/c/b/g$a;

    iget-object v1, p0, Lc/b/a/c/b/d;->e:Lc/b/a/c/c;

    iget-object v2, p0, Lc/b/a/c/b/d;->h:Lc/b/a/c/c/u$a;

    iget-object v2, v2, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v1, p1, v2, v3}, Lc/b/a/c/b/g$a;->a(Lc/b/a/c/c;Ljava/lang/Exception;Lc/b/a/c/a/d;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .line 20
    iget-object v0, p0, Lc/b/a/c/b/d;->c:Lc/b/a/c/b/g$a;

    iget-object v1, p0, Lc/b/a/c/b/d;->e:Lc/b/a/c/c;

    iget-object v2, p0, Lc/b/a/c/b/d;->h:Lc/b/a/c/c/u$a;

    iget-object v3, v2, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    sget-object v4, Lcom/bumptech/glide/load/DataSource;->DATA_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    iget-object v5, p0, Lc/b/a/c/b/d;->e:Lc/b/a/c/c;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lc/b/a/c/b/g$a;->a(Lc/b/a/c/c;Ljava/lang/Object;Lc/b/a/c/a/d;Lcom/bumptech/glide/load/DataSource;Lc/b/a/c/c;)V

    return-void
.end method

.method public a()Z
    .locals 7

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lc/b/a/c/b/d;->f:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lc/b/a/c/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lc/b/a/c/b/d;->h:Lc/b/a/c/c/u$a;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 3
    invoke-virtual {p0}, Lc/b/a/c/b/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-object v0, p0, Lc/b/a/c/b/d;->f:Ljava/util/List;

    iget v3, p0, Lc/b/a/c/b/d;->g:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lc/b/a/c/b/d;->g:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/c/c/u;

    .line 5
    iget-object v3, p0, Lc/b/a/c/b/d;->i:Ljava/io/File;

    iget-object v4, p0, Lc/b/a/c/b/d;->b:Lc/b/a/c/b/h;

    .line 6
    invoke-virtual {v4}, Lc/b/a/c/b/h;->m()I

    move-result v4

    iget-object v5, p0, Lc/b/a/c/b/d;->b:Lc/b/a/c/b/h;

    invoke-virtual {v5}, Lc/b/a/c/b/h;->f()I

    move-result v5

    iget-object v6, p0, Lc/b/a/c/b/d;->b:Lc/b/a/c/b/h;

    .line 7
    invoke-virtual {v6}, Lc/b/a/c/b/h;->h()Lc/b/a/c/f;

    move-result-object v6

    .line 8
    invoke-interface {v0, v3, v4, v5, v6}, Lc/b/a/c/c/u;->a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/c/b/d;->h:Lc/b/a/c/c/u$a;

    .line 9
    iget-object v0, p0, Lc/b/a/c/b/d;->h:Lc/b/a/c/c/u$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/b/a/c/b/d;->b:Lc/b/a/c/b/h;

    iget-object v3, p0, Lc/b/a/c/b/d;->h:Lc/b/a/c/c/u$a;

    iget-object v3, v3, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    invoke-interface {v3}, Lc/b/a/c/a/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Lc/b/a/c/b/h;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lc/b/a/c/b/d;->h:Lc/b/a/c/c/u$a;

    iget-object v0, v0, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    iget-object v1, p0, Lc/b/a/c/b/d;->b:Lc/b/a/c/b/h;

    invoke-virtual {v1}, Lc/b/a/c/b/h;->i()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lc/b/a/c/a/d;->a(Lcom/bumptech/glide/Priority;Lc/b/a/c/a/d$a;)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    return v1

    .line 11
    :cond_4
    :goto_2
    iget v0, p0, Lc/b/a/c/b/d;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lc/b/a/c/b/d;->d:I

    .line 12
    iget v0, p0, Lc/b/a/c/b/d;->d:I

    iget-object v2, p0, Lc/b/a/c/b/d;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_5

    return v1

    .line 13
    :cond_5
    iget-object v0, p0, Lc/b/a/c/b/d;->a:Ljava/util/List;

    iget v2, p0, Lc/b/a/c/b/d;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/c/c;

    .line 14
    new-instance v2, Lc/b/a/c/b/e;

    iget-object v3, p0, Lc/b/a/c/b/d;->b:Lc/b/a/c/b/h;

    invoke-virtual {v3}, Lc/b/a/c/b/h;->k()Lc/b/a/c/c;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lc/b/a/c/b/e;-><init>(Lc/b/a/c/c;Lc/b/a/c/c;)V

    .line 15
    iget-object v3, p0, Lc/b/a/c/b/d;->b:Lc/b/a/c/b/h;

    invoke-virtual {v3}, Lc/b/a/c/b/h;->d()Lc/b/a/c/b/b/a;

    move-result-object v3

    invoke-interface {v3, v2}, Lc/b/a/c/b/b/a;->a(Lc/b/a/c/c;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lc/b/a/c/b/d;->i:Ljava/io/File;

    .line 16
    iget-object v2, p0, Lc/b/a/c/b/d;->i:Ljava/io/File;

    if-eqz v2, :cond_0

    .line 17
    iput-object v0, p0, Lc/b/a/c/b/d;->e:Lc/b/a/c/c;

    .line 18
    iget-object v0, p0, Lc/b/a/c/b/d;->b:Lc/b/a/c/b/h;

    invoke-virtual {v0, v2}, Lc/b/a/c/b/h;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/c/b/d;->f:Ljava/util/List;

    .line 19
    iput v1, p0, Lc/b/a/c/b/d;->g:I

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/b/a/c/b/d;->g:I

    iget-object v1, p0, Lc/b/a/c/b/d;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/d;->h:Lc/b/a/c/c/u$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    invoke-interface {v0}, Lc/b/a/c/a/d;->cancel()V

    :cond_0
    return-void
.end method
