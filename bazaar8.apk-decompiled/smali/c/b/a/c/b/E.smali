.class public Lc/b/a/c/b/E;
.super Ljava/lang/Object;
.source "ResourceCacheGenerator.java"

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
.field public final a:Lc/b/a/c/b/g$a;

.field public final b:Lc/b/a/c/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/b/h<",
            "*>;"
        }
    .end annotation
.end field

.field public c:I

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

.field public j:Lc/b/a/c/b/F;


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lc/b/a/c/b/E;->d:I

    .line 3
    iput-object p1, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    .line 4
    iput-object p2, p0, Lc/b/a/c/b/E;->a:Lc/b/a/c/b/g$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 4

    .line 35
    iget-object v0, p0, Lc/b/a/c/b/E;->a:Lc/b/a/c/b/g$a;

    iget-object v1, p0, Lc/b/a/c/b/E;->j:Lc/b/a/c/b/F;

    iget-object v2, p0, Lc/b/a/c/b/E;->h:Lc/b/a/c/c/u$a;

    iget-object v2, v2, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    sget-object v3, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    invoke-interface {v0, v1, p1, v2, v3}, Lc/b/a/c/b/g$a;->a(Lc/b/a/c/c;Ljava/lang/Exception;Lc/b/a/c/a/d;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .line 34
    iget-object v0, p0, Lc/b/a/c/b/E;->a:Lc/b/a/c/b/g$a;

    iget-object v1, p0, Lc/b/a/c/b/E;->e:Lc/b/a/c/c;

    iget-object v2, p0, Lc/b/a/c/b/E;->h:Lc/b/a/c/c/u$a;

    iget-object v3, v2, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    sget-object v4, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    iget-object v5, p0, Lc/b/a/c/b/E;->j:Lc/b/a/c/b/F;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lc/b/a/c/b/g$a;->a(Lc/b/a/c/c;Ljava/lang/Object;Lc/b/a/c/a/d;Lcom/bumptech/glide/load/DataSource;Lc/b/a/c/c;)V

    return-void
.end method

.method public a()Z
    .locals 14

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    invoke-virtual {v0}, Lc/b/a/c/b/h;->c()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 3
    :cond_0
    iget-object v1, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    invoke-virtual {v1}, Lc/b/a/c/b/h;->j()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    const-class v3, Ljava/io/File;

    iget-object v4, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    invoke-virtual {v4}, Lc/b/a/c/b/h;->l()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    .line 6
    :cond_1
    :goto_0
    iget-object v3, p0, Lc/b/a/c/b/E;->f:Ljava/util/List;

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lc/b/a/c/b/E;->b()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lc/b/a/c/b/E;->h:Lc/b/a/c/c/u$a;

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 8
    invoke-virtual {p0}, Lc/b/a/c/b/E;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    iget-object v0, p0, Lc/b/a/c/b/E;->f:Ljava/util/List;

    iget v1, p0, Lc/b/a/c/b/E;->g:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lc/b/a/c/b/E;->g:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/c/c/u;

    .line 10
    iget-object v1, p0, Lc/b/a/c/b/E;->i:Ljava/io/File;

    iget-object v3, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    .line 11
    invoke-virtual {v3}, Lc/b/a/c/b/h;->m()I

    move-result v3

    iget-object v5, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    invoke-virtual {v5}, Lc/b/a/c/b/h;->f()I

    move-result v5

    iget-object v6, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    invoke-virtual {v6}, Lc/b/a/c/b/h;->h()Lc/b/a/c/f;

    move-result-object v6

    .line 12
    invoke-interface {v0, v1, v3, v5, v6}, Lc/b/a/c/c/u;->a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/c/b/E;->h:Lc/b/a/c/c/u$a;

    .line 13
    iget-object v0, p0, Lc/b/a/c/b/E;->h:Lc/b/a/c/c/u$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    iget-object v1, p0, Lc/b/a/c/b/E;->h:Lc/b/a/c/c/u$a;

    iget-object v1, v1, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    invoke-interface {v1}, Lc/b/a/c/a/d;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/b/a/c/b/h;->c(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, p0, Lc/b/a/c/b/E;->h:Lc/b/a/c/c/u$a;

    iget-object v0, v0, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    iget-object v1, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    invoke-virtual {v1}, Lc/b/a/c/b/h;->i()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lc/b/a/c/a/d;->a(Lcom/bumptech/glide/Priority;Lc/b/a/c/a/d$a;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    return v2

    .line 15
    :cond_5
    :goto_2
    iget v3, p0, Lc/b/a/c/b/E;->d:I

    add-int/2addr v3, v4

    iput v3, p0, Lc/b/a/c/b/E;->d:I

    .line 16
    iget v3, p0, Lc/b/a/c/b/E;->d:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lt v3, v5, :cond_7

    .line 17
    iget v3, p0, Lc/b/a/c/b/E;->c:I

    add-int/2addr v3, v4

    iput v3, p0, Lc/b/a/c/b/E;->c:I

    .line 18
    iget v3, p0, Lc/b/a/c/b/E;->c:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_6

    return v2

    .line 19
    :cond_6
    iput v2, p0, Lc/b/a/c/b/E;->d:I

    .line 20
    :cond_7
    iget v3, p0, Lc/b/a/c/b/E;->c:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/c/c;

    .line 21
    iget v4, p0, Lc/b/a/c/b/E;->d:I

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/Class;

    .line 22
    iget-object v4, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    invoke-virtual {v4, v11}, Lc/b/a/c/b/h;->b(Ljava/lang/Class;)Lc/b/a/c/i;

    move-result-object v10

    .line 23
    new-instance v13, Lc/b/a/c/b/F;

    iget-object v4, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    .line 24
    invoke-virtual {v4}, Lc/b/a/c/b/h;->b()Lc/b/a/c/b/a/b;

    move-result-object v5

    iget-object v4, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    .line 25
    invoke-virtual {v4}, Lc/b/a/c/b/h;->k()Lc/b/a/c/c;

    move-result-object v7

    iget-object v4, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    .line 26
    invoke-virtual {v4}, Lc/b/a/c/b/h;->m()I

    move-result v8

    iget-object v4, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    .line 27
    invoke-virtual {v4}, Lc/b/a/c/b/h;->f()I

    move-result v9

    iget-object v4, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    .line 28
    invoke-virtual {v4}, Lc/b/a/c/b/h;->h()Lc/b/a/c/f;

    move-result-object v12

    move-object v4, v13

    move-object v6, v3

    invoke-direct/range {v4 .. v12}, Lc/b/a/c/b/F;-><init>(Lc/b/a/c/b/a/b;Lc/b/a/c/c;Lc/b/a/c/c;IILc/b/a/c/i;Ljava/lang/Class;Lc/b/a/c/f;)V

    iput-object v13, p0, Lc/b/a/c/b/E;->j:Lc/b/a/c/b/F;

    .line 29
    iget-object v4, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    invoke-virtual {v4}, Lc/b/a/c/b/h;->d()Lc/b/a/c/b/b/a;

    move-result-object v4

    iget-object v5, p0, Lc/b/a/c/b/E;->j:Lc/b/a/c/b/F;

    invoke-interface {v4, v5}, Lc/b/a/c/b/b/a;->a(Lc/b/a/c/c;)Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lc/b/a/c/b/E;->i:Ljava/io/File;

    .line 30
    iget-object v4, p0, Lc/b/a/c/b/E;->i:Ljava/io/File;

    if-eqz v4, :cond_1

    .line 31
    iput-object v3, p0, Lc/b/a/c/b/E;->e:Lc/b/a/c/c;

    .line 32
    iget-object v3, p0, Lc/b/a/c/b/E;->b:Lc/b/a/c/b/h;

    invoke-virtual {v3, v4}, Lc/b/a/c/b/h;->a(Ljava/io/File;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lc/b/a/c/b/E;->f:Ljava/util/List;

    .line 33
    iput v2, p0, Lc/b/a/c/b/E;->g:I

    goto/16 :goto_0
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/b/a/c/b/E;->g:I

    iget-object v1, p0, Lc/b/a/c/b/E;->f:Ljava/util/List;

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
    iget-object v0, p0, Lc/b/a/c/b/E;->h:Lc/b/a/c/c/u$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    invoke-interface {v0}, Lc/b/a/c/a/d;->cancel()V

    :cond_0
    return-void
.end method
