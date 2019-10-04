.class public Lcom/bumptech/glide/Registry;
.super Ljava/lang/Object;
.source "Registry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/Registry$NoImageHeaderParserException;,
        Lcom/bumptech/glide/Registry$MissingComponentException;,
        Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;,
        Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/c/c/w;

.field public final b:Lc/b/a/f/a;

.field public final c:Lc/b/a/f/e;

.field public final d:Lc/b/a/f/f;

.field public final e:Lc/b/a/c/a/g;

.field public final f:Lc/b/a/c/d/f/f;

.field public final g:Lc/b/a/f/b;

.field public final h:Lc/b/a/f/d;

.field public final i:Lc/b/a/f/c;

.field public final j:Lb/i/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/i/j/e<",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lc/b/a/f/d;

    invoke-direct {v0}, Lc/b/a/f/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->h:Lc/b/a/f/d;

    .line 3
    new-instance v0, Lc/b/a/f/c;

    invoke-direct {v0}, Lc/b/a/f/c;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->i:Lc/b/a/f/c;

    .line 4
    invoke-static {}, Lc/b/a/i/a/d;->b()Lb/i/j/e;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->j:Lb/i/j/e;

    .line 5
    new-instance v0, Lc/b/a/c/c/w;

    iget-object v1, p0, Lcom/bumptech/glide/Registry;->j:Lb/i/j/e;

    invoke-direct {v0, v1}, Lc/b/a/c/c/w;-><init>(Lb/i/j/e;)V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->a:Lc/b/a/c/c/w;

    .line 6
    new-instance v0, Lc/b/a/f/a;

    invoke-direct {v0}, Lc/b/a/f/a;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->b:Lc/b/a/f/a;

    .line 7
    new-instance v0, Lc/b/a/f/e;

    invoke-direct {v0}, Lc/b/a/f/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->c:Lc/b/a/f/e;

    .line 8
    new-instance v0, Lc/b/a/f/f;

    invoke-direct {v0}, Lc/b/a/f/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->d:Lc/b/a/f/f;

    .line 9
    new-instance v0, Lc/b/a/c/a/g;

    invoke-direct {v0}, Lc/b/a/c/a/g;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->e:Lc/b/a/c/a/g;

    .line 10
    new-instance v0, Lc/b/a/c/d/f/f;

    invoke-direct {v0}, Lc/b/a/c/d/f/f;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->f:Lc/b/a/c/d/f/f;

    .line 11
    new-instance v0, Lc/b/a/f/b;

    invoke-direct {v0}, Lc/b/a/f/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/Registry;->g:Lc/b/a/f/b;

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Gif"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Bitmap"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BitmapDrawable"

    aput-object v2, v0, v1

    .line 13
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/bumptech/glide/Registry;->a(Ljava/util/List;)Lcom/bumptech/glide/Registry;

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/c/b/D;)Lc/b/a/c/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/b/a/c/b/D<",
            "TX;>;)",
            "Lc/b/a/c/h<",
            "TX;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->d:Lc/b/a/f/f;

    invoke-interface {p1}, Lc/b/a/c/b/D;->c()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/b/a/f/f;->a(Ljava/lang/Class;)Lc/b/a/c/h;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;

    invoke-interface {p1}, Lc/b/a/c/b/D;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/Registry$NoResultEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public a(Lc/b/a/c/a/e$a;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/a/e$a<",
            "*>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->e:Lc/b/a/c/a/g;

    invoke-virtual {v0, p1}, Lc/b/a/c/a/g;->a(Lc/b/a/c/a/e$a;)V

    return-object p0
.end method

.method public a(Lcom/bumptech/glide/load/ImageHeaderParser;)Lcom/bumptech/glide/Registry;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->g:Lc/b/a/f/b;

    invoke-virtual {v0, p1}, Lc/b/a/f/b;->a(Lcom/bumptech/glide/load/ImageHeaderParser;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Lc/b/a/c/a;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Lc/b/a/c/a<",
            "TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->b:Lc/b/a/f/a;

    invoke-virtual {v0, p1, p2}, Lc/b/a/f/a;->a(Ljava/lang/Class;Lc/b/a/c/a;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Lc/b/a/c/h;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lc/b/a/c/h<",
            "TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->d:Lc/b/a/f/f;

    invoke-virtual {v0, p1, p2}, Lc/b/a/f/f;->a(Ljava/lang/Class;Lc/b/a/c/h;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)Lcom/bumptech/glide/Registry;
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
            "TModel;TData;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->a:Lc/b/a/c/c/w;

    invoke-virtual {v0, p1, p2, p3}, Lc/b/a/c/c/w;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/c/v;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/d/f/e;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;",
            "Lc/b/a/c/d/f/e<",
            "TTResource;TTranscode;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->f:Lc/b/a/c/d/f/f;

    invoke-virtual {v0, p1, p2, p3}, Lc/b/a/c/d/f/f;->a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/d/f/e;)V

    return-object p0
.end method

.method public a(Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lc/b/a/c/g<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    const-string v0, "legacy_append"

    .line 2
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;

    return-object p0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/g;)Lcom/bumptech/glide/Registry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Lc/b/a/c/g<",
            "TData;TTResource;>;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->c:Lc/b/a/f/e;

    invoke-virtual {v0, p1, p4, p2, p3}, Lc/b/a/f/e;->a(Ljava/lang/String;Lc/b/a/c/g;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/bumptech/glide/Registry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bumptech/glide/Registry;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    const-string v1, "legacy_prepend_all"

    .line 5
    invoke-interface {v0, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string p1, "legacy_append"

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/bumptech/glide/Registry;->c:Lc/b/a/f/e;

    invoke-virtual {p1, v0}, Lc/b/a/f/e;->a(Ljava/util/List;)V

    return-object p0
.end method

.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->g:Lc/b/a/f/b;

    invoke-virtual {v0}, Lc/b/a/f/b;->a()Ljava/util/List;

    move-result-object v0

    .line 32
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 33
    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;

    invoke-direct {v0}, Lcom/bumptech/glide/Registry$NoImageHeaderParserException;-><init>()V

    throw v0
.end method

.method public final a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Lc/b/a/c/b/j<",
            "TData;TTResource;TTranscode;>;>;"
        }
    .end annotation

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->c:Lc/b/a/f/e;

    .line 15
    invoke-virtual {v1, p1, p2}, Lc/b/a/f/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    .line 16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 17
    iget-object v2, p0, Lcom/bumptech/glide/Registry;->f:Lc/b/a/c/d/f/f;

    .line 18
    invoke-virtual {v2, v1, p3}, Lc/b/a/c/d/f/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/Class;

    .line 20
    iget-object v2, p0, Lcom/bumptech/glide/Registry;->c:Lc/b/a/f/e;

    .line 21
    invoke-virtual {v2, p1, v1}, Lc/b/a/f/e;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v6

    .line 22
    iget-object v2, p0, Lcom/bumptech/glide/Registry;->f:Lc/b/a/c/d/f/f;

    .line 23
    invoke-virtual {v2, v1, v5}, Lc/b/a/c/d/f/f;->a(Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/c/d/f/e;

    move-result-object v7

    .line 24
    new-instance v10, Lc/b/a/c/b/j;

    iget-object v8, p0, Lcom/bumptech/glide/Registry;->j:Lb/i/j/e;

    move-object v2, v10

    move-object v3, p1

    move-object v4, v1

    invoke-direct/range {v2 .. v8}, Lc/b/a/c/b/j;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lc/b/a/c/d/f/e;Lb/i/j/e;)V

    .line 25
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            ">(TModel;)",
            "Ljava/util/List<",
            "Lc/b/a/c/c/u<",
            "TModel;*>;>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->a:Lc/b/a/c/c/w;

    invoke-virtual {v0, p1}, Lc/b/a/c/c/w;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 29
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 30
    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/Registry$NoModelLoaderAvailableException;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public b(Ljava/lang/Object;)Lc/b/a/c/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lc/b/a/c/a/e<",
            "TX;>;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->e:Lc/b/a/c/a/g;

    invoke-virtual {v0, p1}, Lc/b/a/c/a/g;->a(Ljava/lang/Object;)Lc/b/a/c/a/e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/c/b/A;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Lc/b/a/c/b/A<",
            "TData;TTResource;TTranscode;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->i:Lc/b/a/f/c;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lc/b/a/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lc/b/a/c/b/A;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->i:Lc/b/a/f/c;

    invoke-virtual {v1, v0}, Lc/b/a/f/c;->a(Lc/b/a/c/b/A;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/Registry;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v7

    .line 5
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lc/b/a/c/b/A;

    iget-object v8, p0, Lcom/bumptech/glide/Registry;->j:Lb/i/j/e;

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lc/b/a/c/b/A;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;Lb/i/j/e;)V

    .line 7
    :goto_0
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->i:Lc/b/a/f/c;

    invoke-virtual {v1, p1, p2, p3, v0}, Lc/b/a/f/c;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Lc/b/a/c/b/A;)V

    :cond_2
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

    .line 8
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->d:Lc/b/a/f/f;

    invoke-interface {p1}, Lc/b/a/c/b/D;->c()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/b/a/f/f;->a(Ljava/lang/Class;)Lc/b/a/c/h;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/Object;)Lc/b/a/c/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(TX;)",
            "Lc/b/a/c/a<",
            "TX;>;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->b:Lc/b/a/f/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/b/a/f/a;->a(Ljava/lang/Class;)Lc/b/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 16
    :cond_0
    new-instance v0, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/Registry$NoSourceEncoderAvailableException;-><init>(Ljava/lang/Class;)V

    throw v0
.end method

.method public c(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Model:",
            "Ljava/lang/Object;",
            "TResource:",
            "Ljava/lang/Object;",
            "Transcode:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TModel;>;",
            "Ljava/lang/Class<",
            "TTResource;>;",
            "Ljava/lang/Class<",
            "TTranscode;>;)",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/Registry;->h:Lc/b/a/f/d;

    invoke-virtual {v0, p1, p2}, Lc/b/a/f/d;->a(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/bumptech/glide/Registry;->a:Lc/b/a/c/c/w;

    invoke-virtual {v1, p1}, Lc/b/a/c/c/w;->a(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 5
    iget-object v3, p0, Lcom/bumptech/glide/Registry;->c:Lc/b/a/f/e;

    .line 6
    invoke-virtual {v3, v2, p2}, Lc/b/a/f/e;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 8
    iget-object v4, p0, Lcom/bumptech/glide/Registry;->f:Lc/b/a/c/d/f/f;

    .line 9
    invoke-virtual {v4, v3, p3}, Lc/b/a/c/d/f/f;->b(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    .line 10
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    iget-object p3, p0, Lcom/bumptech/glide/Registry;->h:Lc/b/a/f/d;

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-virtual {p3, p1, p2, v1}, Lc/b/a/f/d;->a(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/List;)V

    :cond_3
    return-object v0
.end method
