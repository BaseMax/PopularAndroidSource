.class public final Lc/e/a/b/g/f/Gb;
.super Lc/e/a/b/g/f/Db;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc/e/a/b/g/f/Db;-><init>(Lc/e/a/b/g/f/Eb;)V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/b/g/f/Eb;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/b/g/f/Gb;-><init>()V

    return-void
.end method

.method public static c(Ljava/lang/Object;J)Lc/e/a/b/g/f/vb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lc/e/a/b/g/f/vb<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lc/e/a/b/g/f/Fc;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/e/a/b/g/f/vb;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lc/e/a/b/g/f/Gb;->c(Ljava/lang/Object;J)Lc/e/a/b/g/f/vb;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lc/e/a/b/g/f/vb;->s()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    .line 4
    :goto_0
    invoke-interface {v0, v1}, Lc/e/a/b/g/f/vb;->c(I)Lc/e/a/b/g/f/vb;

    move-result-object v0

    .line 5
    invoke-static {p1, p2, p3, v0}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    .line 6
    invoke-static {p1, p3, p4}, Lc/e/a/b/g/f/Gb;->c(Ljava/lang/Object;J)Lc/e/a/b/g/f/vb;

    move-result-object v0

    .line 7
    invoke-static {p2, p3, p4}, Lc/e/a/b/g/f/Gb;->c(Ljava/lang/Object;J)Lc/e/a/b/g/f/vb;

    move-result-object p2

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v1, :cond_1

    if-lez v2, :cond_1

    .line 10
    invoke-interface {v0}, Lc/e/a/b/g/f/vb;->s()Z

    move-result v3

    if-nez v3, :cond_0

    add-int/2addr v2, v1

    .line 11
    invoke-interface {v0, v2}, Lc/e/a/b/g/f/vb;->c(I)Lc/e/a/b/g/f/vb;

    move-result-object v0

    .line 12
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v1, :cond_2

    move-object p2, v0

    .line 13
    :cond_2
    invoke-static {p1, p3, p4, p2}, Lc/e/a/b/g/f/Fc;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lc/e/a/b/g/f/Gb;->c(Ljava/lang/Object;J)Lc/e/a/b/g/f/vb;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lc/e/a/b/g/f/vb;->t()V

    return-void
.end method
