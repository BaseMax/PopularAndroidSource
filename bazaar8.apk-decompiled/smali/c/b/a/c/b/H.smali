.class public Lc/b/a/c/b/H;
.super Ljava/lang/Object;
.source "SourceGenerator.java"

# interfaces
.implements Lc/b/a/c/b/g;
.implements Lc/b/a/c/a/d$a;
.implements Lc/b/a/c/b/g$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/b/g;",
        "Lc/b/a/c/a/d$a<",
        "Ljava/lang/Object;",
        ">;",
        "Lc/b/a/c/b/g$a;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/b/h<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Lc/b/a/c/b/g$a;

.field public c:I

.field public d:Lc/b/a/c/b/d;

.field public e:Ljava/lang/Object;

.field public volatile f:Lc/b/a/c/c/u$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/c/u$a<",
            "*>;"
        }
    .end annotation
.end field

.field public g:Lc/b/a/c/b/e;


# direct methods
.method public constructor <init>(Lc/b/a/c/b/h;Lc/b/a/c/b/g$a;)V
    .locals 0
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

    .line 2
    iput-object p1, p0, Lc/b/a/c/b/H;->a:Lc/b/a/c/b/h;

    .line 3
    iput-object p2, p0, Lc/b/a/c/b/H;->b:Lc/b/a/c/b/g$a;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/c;Ljava/lang/Exception;Lc/b/a/c/a/d;Lcom/bumptech/glide/load/DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c;",
            "Ljava/lang/Exception;",
            "Lc/b/a/c/a/d<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            ")V"
        }
    .end annotation

    .line 22
    iget-object p4, p0, Lc/b/a/c/b/H;->b:Lc/b/a/c/b/g$a;

    iget-object v0, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object v0, v0, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    invoke-interface {v0}, Lc/b/a/c/a/d;->c()Lcom/bumptech/glide/load/DataSource;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lc/b/a/c/b/g$a;->a(Lc/b/a/c/c;Ljava/lang/Exception;Lc/b/a/c/a/d;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public a(Lc/b/a/c/c;Ljava/lang/Object;Lc/b/a/c/a/d;Lcom/bumptech/glide/load/DataSource;Lc/b/a/c/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c;",
            "Ljava/lang/Object;",
            "Lc/b/a/c/a/d<",
            "*>;",
            "Lcom/bumptech/glide/load/DataSource;",
            "Lc/b/a/c/c;",
            ")V"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lc/b/a/c/b/H;->b:Lc/b/a/c/b/g$a;

    iget-object p4, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object p4, p4, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    invoke-interface {p4}, Lc/b/a/c/a/d;->c()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lc/b/a/c/b/g$a;->a(Lc/b/a/c/c;Ljava/lang/Object;Lc/b/a/c/a/d;Lcom/bumptech/glide/load/DataSource;Lc/b/a/c/c;)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 4

    .line 20
    iget-object v0, p0, Lc/b/a/c/b/H;->b:Lc/b/a/c/b/g$a;

    iget-object v1, p0, Lc/b/a/c/b/H;->g:Lc/b/a/c/b/e;

    iget-object v2, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object v2, v2, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    iget-object v3, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object v3, v3, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    invoke-interface {v3}, Lc/b/a/c/a/d;->c()Lcom/bumptech/glide/load/DataSource;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lc/b/a/c/b/g$a;->a(Lc/b/a/c/c;Ljava/lang/Exception;Lc/b/a/c/a/d;Lcom/bumptech/glide/load/DataSource;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 6

    .line 13
    iget-object v0, p0, Lc/b/a/c/b/H;->a:Lc/b/a/c/b/h;

    invoke-virtual {v0}, Lc/b/a/c/b/h;->e()Lc/b/a/c/b/p;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 14
    iget-object v1, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object v1, v1, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    invoke-interface {v1}, Lc/b/a/c/a/d;->c()Lcom/bumptech/glide/load/DataSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/b/a/c/b/p;->a(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iput-object p1, p0, Lc/b/a/c/b/H;->e:Ljava/lang/Object;

    .line 16
    iget-object p1, p0, Lc/b/a/c/b/H;->b:Lc/b/a/c/b/g$a;

    invoke-interface {p1}, Lc/b/a/c/b/g$a;->g()V

    goto :goto_0

    .line 17
    :cond_0
    iget-object v0, p0, Lc/b/a/c/b/H;->b:Lc/b/a/c/b/g$a;

    iget-object v1, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object v1, v1, Lc/b/a/c/c/u$a;->a:Lc/b/a/c/c;

    iget-object v2, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object v3, v2, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    iget-object v2, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object v2, v2, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    .line 18
    invoke-interface {v2}, Lc/b/a/c/a/d;->c()Lcom/bumptech/glide/load/DataSource;

    move-result-object v4

    iget-object v5, p0, Lc/b/a/c/b/H;->g:Lc/b/a/c/b/e;

    move-object v2, p1

    .line 19
    invoke-interface/range {v0 .. v5}, Lc/b/a/c/b/g$a;->a(Lc/b/a/c/c;Ljava/lang/Object;Lc/b/a/c/a/d;Lcom/bumptech/glide/load/DataSource;Lc/b/a/c/c;)V

    :goto_0
    return-void
.end method

.method public a()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/H;->e:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iput-object v1, p0, Lc/b/a/c/b/H;->e:Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, v0}, Lc/b/a/c/b/H;->b(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/b/a/c/b/H;->d:Lc/b/a/c/b/d;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/b/a/c/b/d;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 5
    :cond_1
    iput-object v1, p0, Lc/b/a/c/b/H;->d:Lc/b/a/c/b/d;

    .line 6
    iput-object v1, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez v0, :cond_4

    .line 7
    invoke-virtual {p0}, Lc/b/a/c/b/H;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lc/b/a/c/b/H;->a:Lc/b/a/c/b/h;

    invoke-virtual {v1}, Lc/b/a/c/b/h;->g()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lc/b/a/c/b/H;->c:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lc/b/a/c/b/H;->c:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/b/a/c/c/u$a;

    iput-object v1, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    .line 9
    iget-object v1, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/b/a/c/b/H;->a:Lc/b/a/c/b/h;

    .line 10
    invoke-virtual {v1}, Lc/b/a/c/b/h;->e()Lc/b/a/c/b/p;

    move-result-object v1

    iget-object v3, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object v3, v3, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    invoke-interface {v3}, Lc/b/a/c/a/d;->c()Lcom/bumptech/glide/load/DataSource;

    move-result-object v3

    invoke-virtual {v1, v3}, Lc/b/a/c/b/p;->a(Lcom/bumptech/glide/load/DataSource;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lc/b/a/c/b/H;->a:Lc/b/a/c/b/h;

    iget-object v3, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object v3, v3, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    .line 11
    invoke-interface {v3}, Lc/b/a/c/a/d;->a()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lc/b/a/c/b/h;->c(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    :cond_3
    iget-object v0, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object v0, v0, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    iget-object v1, p0, Lc/b/a/c/b/H;->a:Lc/b/a/c/b/h;

    invoke-virtual {v1}, Lc/b/a/c/b/h;->i()Lcom/bumptech/glide/Priority;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lc/b/a/c/a/d;->a(Lcom/bumptech/glide/Priority;Lc/b/a/c/a/d$a;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "SourceGenerator"

    .line 2
    invoke-static {}, Lc/b/a/i/e;->a()J

    move-result-wide v1

    .line 3
    :try_start_0
    iget-object v3, p0, Lc/b/a/c/b/H;->a:Lc/b/a/c/b/h;

    invoke-virtual {v3, p1}, Lc/b/a/c/b/h;->a(Ljava/lang/Object;)Lc/b/a/c/a;

    move-result-object v3

    .line 4
    new-instance v4, Lc/b/a/c/b/f;

    iget-object v5, p0, Lc/b/a/c/b/H;->a:Lc/b/a/c/b/h;

    .line 5
    invoke-virtual {v5}, Lc/b/a/c/b/h;->h()Lc/b/a/c/f;

    move-result-object v5

    invoke-direct {v4, v3, p1, v5}, Lc/b/a/c/b/f;-><init>(Lc/b/a/c/a;Ljava/lang/Object;Lc/b/a/c/f;)V

    .line 6
    new-instance v5, Lc/b/a/c/b/e;

    iget-object v6, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object v6, v6, Lc/b/a/c/c/u$a;->a:Lc/b/a/c/c;

    iget-object v7, p0, Lc/b/a/c/b/H;->a:Lc/b/a/c/b/h;

    invoke-virtual {v7}, Lc/b/a/c/b/h;->k()Lc/b/a/c/c;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lc/b/a/c/b/e;-><init>(Lc/b/a/c/c;Lc/b/a/c/c;)V

    iput-object v5, p0, Lc/b/a/c/b/H;->g:Lc/b/a/c/b/e;

    .line 7
    iget-object v5, p0, Lc/b/a/c/b/H;->a:Lc/b/a/c/b/h;

    invoke-virtual {v5}, Lc/b/a/c/b/h;->d()Lc/b/a/c/b/b/a;

    move-result-object v5

    iget-object v6, p0, Lc/b/a/c/b/H;->g:Lc/b/a/c/b/e;

    invoke-interface {v5, v6, v4}, Lc/b/a/c/b/b/a;->a(Lc/b/a/c/c;Lc/b/a/c/b/b/a$b;)V

    const/4 v4, 0x2

    .line 8
    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Finished encoding source to cache, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lc/b/a/c/b/H;->g:Lc/b/a/c/b/e;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", encoder: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {v1, v2}, Lc/b/a/i/e;->a(J)D

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_0
    iget-object p1, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object p1, p1, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    invoke-interface {p1}, Lc/b/a/c/a/d;->b()V

    .line 13
    new-instance p1, Lc/b/a/c/b/d;

    iget-object v0, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object v0, v0, Lc/b/a/c/c/u$a;->a:Lc/b/a/c/c;

    .line 14
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lc/b/a/c/b/H;->a:Lc/b/a/c/b/h;

    invoke-direct {p1, v0, v1, p0}, Lc/b/a/c/b/d;-><init>(Ljava/util/List;Lc/b/a/c/b/h;Lc/b/a/c/b/g$a;)V

    iput-object p1, p0, Lc/b/a/c/b/H;->d:Lc/b/a/c/b/d;

    return-void

    :catchall_0
    move-exception p1

    .line 15
    iget-object v0, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    iget-object v0, v0, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    invoke-interface {v0}, Lc/b/a/c/a/d;->b()V

    throw p1
.end method

.method public final b()Z
    .locals 2

    .line 1
    iget v0, p0, Lc/b/a/c/b/H;->c:I

    iget-object v1, p0, Lc/b/a/c/b/H;->a:Lc/b/a/c/b/h;

    invoke-virtual {v1}, Lc/b/a/c/b/h;->g()Ljava/util/List;

    move-result-object v1

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
    iget-object v0, p0, Lc/b/a/c/b/H;->f:Lc/b/a/c/c/u$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lc/b/a/c/c/u$a;->c:Lc/b/a/c/a/d;

    invoke-interface {v0}, Lc/b/a/c/a/d;->cancel()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
