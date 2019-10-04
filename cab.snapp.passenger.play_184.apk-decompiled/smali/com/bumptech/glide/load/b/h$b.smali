.class final Lcom/bumptech/glide/load/b/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/b/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/i$a<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/b/h;

.field private final b:Lcom/bumptech/glide/load/DataSource;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/h;Lcom/bumptech/glide/load/DataSource;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/bumptech/glide/load/b/h$b;->a:Lcom/bumptech/glide/load/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    iput-object p2, p0, Lcom/bumptech/glide/load/b/h$b;->b:Lcom/bumptech/glide/load/DataSource;

    return-void
.end method


# virtual methods
.method public final onResourceDecoded(Lcom/bumptech/glide/load/b/v;)Lcom/bumptech/glide/load/b/v;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/v<",
            "TZ;>;)",
            "Lcom/bumptech/glide/load/b/v<",
            "TZ;>;"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lcom/bumptech/glide/load/b/h$b;->a:Lcom/bumptech/glide/load/b/h;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/h$b;->b:Lcom/bumptech/glide/load/DataSource;

    .line 1543
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/v;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    .line 1546
    sget-object v2, Lcom/bumptech/glide/load/DataSource;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/DataSource;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 1547
    iget-object v2, v0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/g;

    invoke-virtual {v2, v10}, Lcom/bumptech/glide/load/b/g;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/j;

    move-result-object v2

    .line 1548
    iget-object v4, v0, Lcom/bumptech/glide/load/b/h;->e:Lcom/bumptech/glide/e;

    iget v5, v0, Lcom/bumptech/glide/load/b/h;->i:I

    iget v6, v0, Lcom/bumptech/glide/load/b/h;->j:I

    invoke-interface {v2, v4, p1, v5, v6}, Lcom/bumptech/glide/load/j;->transform(Landroid/content/Context;Lcom/bumptech/glide/load/b/v;II)Lcom/bumptech/glide/load/b/v;

    move-result-object v4

    move-object v9, v2

    move-object v2, v4

    goto :goto_0

    :cond_0
    move-object v2, p1

    move-object v9, v3

    .line 1551
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1552
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/v;->recycle()V

    .line 1557
    :cond_1
    iget-object p1, v0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/g;

    .line 2177
    iget-object p1, p1, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/f;->isResourceEncoderAvailable(Lcom/bumptech/glide/load/b/v;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1558
    iget-object p1, v0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/g;

    .line 2181
    iget-object p1, p1, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/e;

    invoke-virtual {p1}, Lcom/bumptech/glide/e;->getRegistry()Lcom/bumptech/glide/f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/bumptech/glide/f;->getResultEncoder(Lcom/bumptech/glide/load/b/v;)Lcom/bumptech/glide/load/i;

    move-result-object v3

    .line 1559
    iget-object p1, v0, Lcom/bumptech/glide/load/b/h;->l:Lcom/bumptech/glide/load/g;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/i;->getEncodeStrategy(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/EncodeStrategy;

    move-result-object p1

    goto :goto_1

    .line 1562
    :cond_2
    sget-object p1, Lcom/bumptech/glide/load/EncodeStrategy;->NONE:Lcom/bumptech/glide/load/EncodeStrategy;

    :goto_1
    move-object v12, v3

    .line 1566
    iget-object v3, v0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/g;

    iget-object v4, v0, Lcom/bumptech/glide/load/b/h;->r:Lcom/bumptech/glide/load/d;

    .line 2190
    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/g;->c()Ljava/util/List;

    move-result-object v3

    .line 2192
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x1

    if-ge v7, v5, :cond_4

    .line 2193
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bumptech/glide/load/c/n$a;

    .line 2194
    iget-object v11, v11, Lcom/bumptech/glide/load/c/n$a;->sourceKey:Lcom/bumptech/glide/load/d;

    invoke-interface {v11, v4}, Lcom/bumptech/glide/load/d;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    xor-int/lit8 v3, v6, 0x1

    .line 1567
    iget-object v4, v0, Lcom/bumptech/glide/load/b/h;->k:Lcom/bumptech/glide/load/b/j;

    invoke-virtual {v4, v3, v1, p1}, Lcom/bumptech/glide/load/b/j;->isResourceCacheable(ZLcom/bumptech/glide/load/DataSource;Lcom/bumptech/glide/load/EncodeStrategy;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v12, :cond_7

    .line 1573
    sget-object v1, Lcom/bumptech/glide/load/b/h$1;->c:[I

    invoke-virtual {p1}, Lcom/bumptech/glide/load/EncodeStrategy;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v8, :cond_6

    const/4 v3, 0x2

    if-ne v1, v3, :cond_5

    .line 1578
    new-instance p1, Lcom/bumptech/glide/load/b/x;

    iget-object v1, v0, Lcom/bumptech/glide/load/b/h;->a:Lcom/bumptech/glide/load/b/g;

    .line 3124
    iget-object v1, v1, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/e;

    invoke-virtual {v1}, Lcom/bumptech/glide/e;->getArrayPool()Lcom/bumptech/glide/load/b/a/b;

    move-result-object v4

    .line 1580
    iget-object v5, v0, Lcom/bumptech/glide/load/b/h;->r:Lcom/bumptech/glide/load/d;

    iget-object v6, v0, Lcom/bumptech/glide/load/b/h;->f:Lcom/bumptech/glide/load/d;

    iget v7, v0, Lcom/bumptech/glide/load/b/h;->i:I

    iget v8, v0, Lcom/bumptech/glide/load/b/h;->j:I

    iget-object v11, v0, Lcom/bumptech/glide/load/b/h;->l:Lcom/bumptech/glide/load/g;

    move-object v3, p1

    invoke-direct/range {v3 .. v11}, Lcom/bumptech/glide/load/b/x;-><init>(Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;IILcom/bumptech/glide/load/j;Ljava/lang/Class;Lcom/bumptech/glide/load/g;)V

    goto :goto_4

    .line 1590
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Unknown strategy: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1575
    :cond_6
    new-instance p1, Lcom/bumptech/glide/load/b/d;

    iget-object v1, v0, Lcom/bumptech/glide/load/b/h;->r:Lcom/bumptech/glide/load/d;

    iget-object v3, v0, Lcom/bumptech/glide/load/b/h;->f:Lcom/bumptech/glide/load/d;

    invoke-direct {p1, v1, v3}, Lcom/bumptech/glide/load/b/d;-><init>(Lcom/bumptech/glide/load/d;Lcom/bumptech/glide/load/d;)V

    .line 1593
    :goto_4
    invoke-static {v2}, Lcom/bumptech/glide/load/b/u;->a(Lcom/bumptech/glide/load/b/v;)Lcom/bumptech/glide/load/b/u;

    move-result-object v2

    .line 1594
    iget-object v0, v0, Lcom/bumptech/glide/load/b/h;->c:Lcom/bumptech/glide/load/b/h$c;

    .line 3668
    iput-object p1, v0, Lcom/bumptech/glide/load/b/h$c;->a:Lcom/bumptech/glide/load/d;

    .line 3669
    iput-object v12, v0, Lcom/bumptech/glide/load/b/h$c;->b:Lcom/bumptech/glide/load/i;

    .line 3670
    iput-object v2, v0, Lcom/bumptech/glide/load/b/h$c;->c:Lcom/bumptech/glide/load/b/u;

    goto :goto_5

    .line 1570
    :cond_7
    new-instance p1, Lcom/bumptech/glide/f$d;

    invoke-interface {v2}, Lcom/bumptech/glide/load/b/v;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/bumptech/glide/f$d;-><init>(Ljava/lang/Class;)V

    throw p1

    :cond_8
    :goto_5
    return-object v2
.end method
