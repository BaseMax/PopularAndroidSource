.class public final Lc/c/a/c/f/a/c/c;
.super Lc/c/a/c/f/a/f;
.source "WrapperTypeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/c/f/a/f<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lc/c/a/c/f/a/c/b;

.field public final f:Lc/c/a/c/f/a/a/b;


# direct methods
.method public constructor <init>(Lc/e/d/j;Lc/e/d/x;Lc/e/d/x;Lc/e/d/c/a;Lc/c/a/c/f/a/c/b;Lc/c/a/c/f/a/a/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/j;",
            "Lc/e/d/x<",
            "TT;>;",
            "Lc/e/d/x<",
            "Lc/e/d/p;",
            ">;",
            "Lc/e/d/c/a<",
            "TT;>;",
            "Lc/c/a/c/f/a/c/b;",
            "Lc/c/a/c/f/a/a/b;",
            ")V"
        }
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "elementAdapter"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wrapperNamesBuilder"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hooksDelegation"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lc/c/a/c/f/a/f;-><init>(Lc/e/d/j;Lc/e/d/x;Lc/e/d/x;Lc/e/d/c/a;)V

    iput-object p5, p0, Lc/c/a/c/f/a/c/c;->e:Lc/c/a/c/f/a/c/b;

    iput-object p6, p0, Lc/c/a/c/f/a/c/c;->f:Lc/c/a/c/f/a/a/b;

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/c;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "out"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/c/f/a/c/c;->e:Lc/c/a/c/f/a/c/b;

    invoke-virtual {v0, p2}, Lc/c/a/c/f/a/c/b;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lc/e/d/d/c;->v()Lc/e/d/d/c;

    .line 3
    iget-object v1, p0, Lc/c/a/c/f/a/c/c;->f:Lc/c/a/c/f/a/a/b;

    invoke-virtual {p0}, Lc/c/a/c/f/a/f;->d()Lc/e/d/j;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p2}, Lc/c/a/c/f/a/a/b;->a(Lc/e/d/d/c;Lc/e/d/j;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, p1, v0}, Lc/c/a/c/f/a/c/c;->b(Lc/e/d/d/c;Ljava/util/List;)V

    .line 5
    invoke-virtual {p0}, Lc/c/a/c/f/a/f;->b()Lc/e/d/x;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p1, v0}, Lc/c/a/c/f/a/c/c;->a(Lc/e/d/d/c;Ljava/util/List;)V

    .line 7
    invoke-virtual {p1}, Lc/e/d/d/c;->x()Lc/e/d/d/c;

    return-void
.end method

.method public final a(Lc/e/d/d/c;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/c;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 9
    invoke-virtual {p1}, Lc/e/d/d/c;->x()Lc/e/d/d/c;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Lc/e/d/d/c;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/c;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Ljava/lang/String;

    .line 3
    invoke-virtual {p1, v2}, Lc/e/d/d/c;->e(Ljava/lang/String;)Lc/e/d/d/c;

    if-eq v1, v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lc/e/d/d/c;->v()Lc/e/d/d/c;

    :cond_0
    move v1, v3

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lh/a/l;->b()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method
