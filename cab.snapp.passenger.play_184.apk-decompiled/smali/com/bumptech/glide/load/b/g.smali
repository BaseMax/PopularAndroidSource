.class final Lcom/bumptech/glide/load/b/g;
.super Ljava/lang/Object;
.source "SourceFile"


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
.field a:Lcom/bumptech/glide/e;

.field b:Ljava/lang/Object;

.field c:I

.field d:I

.field e:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field f:Lcom/bumptech/glide/load/b/h$d;

.field g:Lcom/bumptech/glide/load/g;

.field h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/j<",
            "*>;>;"
        }
    .end annotation
.end field

.field i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscode;>;"
        }
    .end annotation
.end field

.field j:Lcom/bumptech/glide/load/d;

.field k:Lcom/bumptech/glide/Priority;

.field l:Lcom/bumptech/glide/load/b/j;

.field m:Z

.field n:Z

.field private final o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/d;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/g;->o:Ljava/util/List;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/g;->p:Ljava/util/List;

    return-void
.end method


# virtual methods
.method final a(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n<",
            "Ljava/io/File;",
            "*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bumptech/glide/f$c;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/f;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final a()V
    .locals 2

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/e;

    .line 80
    iput-object v0, p0, Lcom/bumptech/glide/load/b/g;->b:Ljava/lang/Object;

    .line 81
    iput-object v0, p0, Lcom/bumptech/glide/load/b/g;->j:Lcom/bumptech/glide/load/d;

    .line 82
    iput-object v0, p0, Lcom/bumptech/glide/load/b/g;->e:Ljava/lang/Class;

    .line 83
    iput-object v0, p0, Lcom/bumptech/glide/load/b/g;->i:Ljava/lang/Class;

    .line 84
    iput-object v0, p0, Lcom/bumptech/glide/load/b/g;->g:Lcom/bumptech/glide/load/g;

    .line 85
    iput-object v0, p0, Lcom/bumptech/glide/load/b/g;->k:Lcom/bumptech/glide/Priority;

    .line 86
    iput-object v0, p0, Lcom/bumptech/glide/load/b/g;->h:Ljava/util/Map;

    .line 87
    iput-object v0, p0, Lcom/bumptech/glide/load/b/g;->l:Lcom/bumptech/glide/load/b/j;

    .line 89
    iget-object v0, p0, Lcom/bumptech/glide/load/b/g;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/g;->q:Z

    .line 91
    iget-object v1, p0, Lcom/bumptech/glide/load/b/g;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 92
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/g;->r:Z

    return-void
.end method

.method final a(Ljava/lang/Class;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/b/g;->b(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/t;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final b()Lcom/bumptech/glide/load/b/b/a;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/bumptech/glide/load/b/g;->f:Lcom/bumptech/glide/load/b/h$d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/h$d;->getDiskCache()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method final b(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Data:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TData;>;)",
            "Lcom/bumptech/glide/load/b/t<",
            "TData;*TTranscode;>;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/f;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/g;->e:Ljava/lang/Class;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/g;->i:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1, v2}, Lcom/bumptech/glide/f;->getLoadPath(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)Lcom/bumptech/glide/load/b/t;

    move-result-object p1

    return-object p1
.end method

.method final c(Ljava/lang/Class;)Lcom/bumptech/glide/load/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/j<",
            "TZ;>;"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/bumptech/glide/load/b/g;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/j;

    if-nez v0, :cond_1

    .line 156
    iget-object v1, p0, Lcom/bumptech/glide/load/b/g;->h:Ljava/util/Map;

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

    .line 157
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/j;

    :cond_1
    if-nez v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/bumptech/glide/load/b/g;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/g;->m:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing transformation for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". If you wish to ignore unknown resource types, use the optional transformation methods."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 170
    :cond_3
    :goto_0
    invoke-static {}, Lcom/bumptech/glide/load/resource/b;->get()Lcom/bumptech/glide/load/resource/b;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v0
.end method

.method final c()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/n$a<",
            "*>;>;"
        }
    .end annotation

    .line 202
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/g;->q:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/g;->q:Z

    .line 204
    iget-object v0, p0, Lcom/bumptech/glide/load/b/g;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    iget-object v0, p0, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/f;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/g;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->getModelLoaders(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 208
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/c/n;

    .line 209
    iget-object v4, p0, Lcom/bumptech/glide/load/b/g;->b:Ljava/lang/Object;

    iget v5, p0, Lcom/bumptech/glide/load/b/g;->c:I

    iget v6, p0, Lcom/bumptech/glide/load/b/g;->d:I

    iget-object v7, p0, Lcom/bumptech/glide/load/b/g;->g:Lcom/bumptech/glide/load/g;

    .line 210
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/bumptech/glide/load/c/n;->buildLoadData(Ljava/lang/Object;IILcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/c/n$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 212
    iget-object v4, p0, Lcom/bumptech/glide/load/b/g;->o:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/g;->o:Ljava/util/List;

    return-object v0
.end method

.method final d()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/d;",
            ">;"
        }
    .end annotation

    .line 220
    iget-boolean v0, p0, Lcom/bumptech/glide/load/b/g;->r:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 221
    iput-boolean v0, p0, Lcom/bumptech/glide/load/b/g;->r:Z

    .line 222
    iget-object v0, p0, Lcom/bumptech/glide/load/b/g;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 223
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/g;->c()Ljava/util/List;

    move-result-object v0

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 226
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/c/n$a;

    .line 227
    iget-object v5, p0, Lcom/bumptech/glide/load/b/g;->p:Ljava/util/List;

    iget-object v6, v4, Lcom/bumptech/glide/load/c/n$a;->sourceKey:Lcom/bumptech/glide/load/d;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 228
    iget-object v5, p0, Lcom/bumptech/glide/load/b/g;->p:Ljava/util/List;

    iget-object v6, v4, Lcom/bumptech/glide/load/c/n$a;->sourceKey:Lcom/bumptech/glide/load/d;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v5, 0x0

    .line 230
    :goto_1
    iget-object v6, v4, Lcom/bumptech/glide/load/c/n$a;->alternateKeys:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 231
    iget-object v6, p0, Lcom/bumptech/glide/load/b/g;->p:Ljava/util/List;

    iget-object v7, v4, Lcom/bumptech/glide/load/c/n$a;->alternateKeys:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 232
    iget-object v6, p0, Lcom/bumptech/glide/load/b/g;->p:Ljava/util/List;

    iget-object v7, v4, Lcom/bumptech/glide/load/c/n$a;->alternateKeys:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/bumptech/glide/load/b/g;->p:Ljava/util/List;

    return-object v0
.end method
