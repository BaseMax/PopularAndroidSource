.class public final Lc/b/a/c/b/h;
.super Ljava/lang/Object;
.source "DecodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Transcode:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/c/c/u$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/b/a/c/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lc/b/a/g;

.field public d:Ljava/lang/Object;

.field public e:I

.field public f:I

.field public g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public h:Lcom/bumptech/glide/load/engine/DecodeJob$d;

.field public i:Lc/b/a/c/f;

.field public j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/c/i<",
            "*>;>;"
        }
    .end annotation
.end field

.field public k:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscode;>;"
        }
    .end annotation
.end field

.field public l:Z

.field public m:Z

.field public n:Lc/b/a/c/c;

.field public o:Lcom/bumptech/glide/Priority;

.field public p:Lc/b/a/c/b/p;

.field public q:Z

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/a/c/b/h;->a:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc/b/a/c/b/h;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lc/b/a/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lc/b/a/c/a<",
            "TX;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lc/b/a/c/b/h;->c:Lc/b/a/g;

    invoke-virtual {v0}, Lc/b/a/g;->f()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Object;)Lc/b/a/c/a;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Class;)Lc/b/a/c/b/A;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lc/b/a/c/b/A<",
            "TData;*TTranscode;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lc/b/a/c/b/h;->c:Lc/b/a/g;

    invoke-virtual {v0}, Lc/b/a/g;->f()Lcom/bumptech/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lc/b/a/c/b/h;->g:Ljava/lang/Class;

    iget-object v2, p0, Lc/b/a/c/b/h;->k:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Lcom/bumptech/glide/Registry;->b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/c/b/A;

    move-result-object p1

    return-object p1
.end method

.method public a(Lc/b/a/c/b/D;)Lc/b/a/c/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/c/b/D<",
            "TZ;>;)",
            "Lc/b/a/c/h<",
            "TZ;>;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lc/b/a/c/b/h;->c:Lc/b/a/g;

    invoke-virtual {v0}, Lc/b/a/g;->f()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->a(Lc/b/a/c/b/D;)Lc/b/a/c/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lc/b/a/c/c/u<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lc/b/a/c/b/h;->c:Lc/b/a/g;

    invoke-virtual {v0}, Lc/b/a/g;->f()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lc/b/a/c/b/h;->c:Lc/b/a/g;

    .line 16
    iput-object v0, p0, Lc/b/a/c/b/h;->d:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lc/b/a/c/b/h;->n:Lc/b/a/c/c;

    .line 18
    iput-object v0, p0, Lc/b/a/c/b/h;->g:Ljava/lang/Class;

    .line 19
    iput-object v0, p0, Lc/b/a/c/b/h;->k:Ljava/lang/Class;

    .line 20
    iput-object v0, p0, Lc/b/a/c/b/h;->i:Lc/b/a/c/f;

    .line 21
    iput-object v0, p0, Lc/b/a/c/b/h;->o:Lcom/bumptech/glide/Priority;

    .line 22
    iput-object v0, p0, Lc/b/a/c/b/h;->j:Ljava/util/Map;

    .line 23
    iput-object v0, p0, Lc/b/a/c/b/h;->p:Lc/b/a/c/b/p;

    .line 24
    iget-object v0, p0, Lc/b/a/c/b/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lc/b/a/c/b/h;->l:Z

    .line 26
    iget-object v1, p0, Lc/b/a/c/b/h;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 27
    iput-boolean v0, p0, Lc/b/a/c/b/h;->m:Z

    return-void
.end method

.method public a(Lc/b/a/g;Ljava/lang/Object;Lc/b/a/c/c;IILc/b/a/c/b/p;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/Priority;Lc/b/a/c/f;Ljava/util/Map;ZZLcom/bumptech/glide/load/engine/DecodeJob$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/g;",
            "Ljava/lang/Object;",
            "Lc/b/a/c/c;",
            "II",
            "Lc/b/a/c/b/p;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/Priority;",
            "Lc/b/a/c/f;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lc/b/a/c/i<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/engine/DecodeJob$d;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/c/b/h;->c:Lc/b/a/g;

    .line 2
    iput-object p2, p0, Lc/b/a/c/b/h;->d:Ljava/lang/Object;

    .line 3
    iput-object p3, p0, Lc/b/a/c/b/h;->n:Lc/b/a/c/c;

    .line 4
    iput p4, p0, Lc/b/a/c/b/h;->e:I

    .line 5
    iput p5, p0, Lc/b/a/c/b/h;->f:I

    .line 6
    iput-object p6, p0, Lc/b/a/c/b/h;->p:Lc/b/a/c/b/p;

    .line 7
    iput-object p7, p0, Lc/b/a/c/b/h;->g:Ljava/lang/Class;

    .line 8
    iput-object p14, p0, Lc/b/a/c/b/h;->h:Lcom/bumptech/glide/load/engine/DecodeJob$d;

    .line 9
    iput-object p8, p0, Lc/b/a/c/b/h;->k:Ljava/lang/Class;

    .line 10
    iput-object p9, p0, Lc/b/a/c/b/h;->o:Lcom/bumptech/glide/Priority;

    .line 11
    iput-object p10, p0, Lc/b/a/c/b/h;->i:Lc/b/a/c/f;

    .line 12
    iput-object p11, p0, Lc/b/a/c/b/h;->j:Ljava/util/Map;

    .line 13
    iput-boolean p12, p0, Lc/b/a/c/b/h;->q:Z

    .line 14
    iput-boolean p13, p0, Lc/b/a/c/b/h;->r:Z

    return-void
.end method

.method public a(Lc/b/a/c/c;)Z
    .locals 5

    .line 31
    invoke-virtual {p0}, Lc/b/a/c/b/h;->g()Ljava/util/List;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 33
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/c/c/u$a;

    .line 34
    iget-object v4, v4, Lc/b/a/c/c/u$a;->a:Lc/b/a/c/c;

    invoke-interface {v4, p1}, Lc/b/a/c/c;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public b()Lc/b/a/c/b/a/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/h;->c:Lc/b/a/g;

    invoke-virtual {v0}, Lc/b/a/g;->a()Lc/b/a/c/b/a/b;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Class;)Lc/b/a/c/i;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lc/b/a/c/i<",
            "TZ;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/b/a/c/b/h;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/c/i;

    if-nez v0, :cond_1

    .line 3
    iget-object v1, p0, Lc/b/a/c/b/h;->j:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/c/i;

    :cond_1
    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lc/b/a/c/b/h;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lc/b/a/c/b/h;->q:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing transformation for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_3
    :goto_0
    invoke-static {}, Lc/b/a/c/d/b;->a()Lc/b/a/c/d/b;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method public b(Lc/b/a/c/b/D;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/b/D<",
            "*>;)Z"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lc/b/a/c/b/h;->c:Lc/b/a/g;

    invoke-virtual {v0}, Lc/b/a/g;->f()Lcom/bumptech/glide/Registry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/Registry;->b(Lc/b/a/c/b/D;)Z

    move-result p1

    return p1
.end method

.method public c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/b/a/c/c;",
            ">;"
        }
    .end annotation

    .line 2
    iget-boolean v0, p0, Lc/b/a/c/b/h;->m:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lc/b/a/c/b/h;->m:Z

    .line 4
    iget-object v0, p0, Lc/b/a/c/b/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-virtual {p0}, Lc/b/a/c/b/h;->g()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 7
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/b/a/c/c/u$a;

    .line 8
    iget-object v5, p0, Lc/b/a/c/b/h;->b:Ljava/util/List;

    iget-object v6, v4, Lc/b/a/c/c/u$a;->a:Lc/b/a/c/c;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 9
    iget-object v5, p0, Lc/b/a/c/b/h;->b:Ljava/util/List;

    iget-object v6, v4, Lc/b/a/c/c/u$a;->a:Lc/b/a/c/c;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v5, 0x0

    .line 10
    :goto_1
    iget-object v6, v4, Lc/b/a/c/c/u$a;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 11
    iget-object v6, p0, Lc/b/a/c/b/h;->b:Ljava/util/List;

    iget-object v7, v4, Lc/b/a/c/c/u$a;->b:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 12
    iget-object v6, p0, Lc/b/a/c/b/h;->b:Ljava/util/List;

    iget-object v7, v4, Lc/b/a/c/c/u$a;->b:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lc/b/a/c/b/h;->b:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lc/b/a/c/b/h;->a(Ljava/lang/Class;)Lc/b/a/c/b/A;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()Lc/b/a/c/b/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/h;->h:Lcom/bumptech/glide/load/engine/DecodeJob$d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/engine/DecodeJob$d;->a()Lc/b/a/c/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Lc/b/a/c/b/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/h;->p:Lc/b/a/c/b/p;

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/c/b/h;->f:I

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/b/a/c/c/u$a<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lc/b/a/c/b/h;->l:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/b/a/c/b/h;->l:Z

    .line 3
    iget-object v0, p0, Lc/b/a/c/b/h;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lc/b/a/c/b/h;->c:Lc/b/a/g;

    invoke-virtual {v0}, Lc/b/a/g;->f()Lcom/bumptech/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lc/b/a/c/b/h;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/b/a/c/c/u;

    .line 7
    iget-object v4, p0, Lc/b/a/c/b/h;->d:Ljava/lang/Object;

    iget v5, p0, Lc/b/a/c/b/h;->e:I

    iget v6, p0, Lc/b/a/c/b/h;->f:I

    iget-object v7, p0, Lc/b/a/c/b/h;->i:Lc/b/a/c/f;

    .line 8
    invoke-interface {v3, v4, v5, v6, v7}, Lc/b/a/c/c/u;->a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 9
    iget-object v4, p0, Lc/b/a/c/b/h;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lc/b/a/c/b/h;->a:Ljava/util/List;

    return-object v0
.end method

.method public h()Lc/b/a/c/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/h;->i:Lc/b/a/c/f;

    return-object v0
.end method

.method public i()Lcom/bumptech/glide/Priority;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/h;->o:Lcom/bumptech/glide/Priority;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/h;->c:Lc/b/a/g;

    invoke-virtual {v0}, Lc/b/a/g;->f()Lcom/bumptech/glide/Registry;

    move-result-object v0

    iget-object v1, p0, Lc/b/a/c/b/h;->d:Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lc/b/a/c/b/h;->g:Ljava/lang/Class;

    iget-object v3, p0, Lc/b/a/c/b/h;->k:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bumptech/glide/Registry;->c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public k()Lc/b/a/c/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/h;->n:Lc/b/a/c/c;

    return-object v0
.end method

.method public l()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/c/b/h;->k:Ljava/lang/Class;

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lc/b/a/c/b/h;->e:I

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/c/b/h;->r:Z

    return v0
.end method
