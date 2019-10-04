.class public final Lc/c/a/a/b/a/a/b/g;
.super Ljava/lang/Object;
.source "ActionLogLocalDataSource.kt"


# instance fields
.field public final a:Lc/c/a/a/b/a/a/b/a;


# direct methods
.method public constructor <init>(Lc/c/a/a/b/a/a/b/a;)V
    .locals 1

    const-string v0, "dao"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/a/b/a/a/b/g;->a:Lc/c/a/a/b/a/a/b/a;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/g;->a:Lc/c/a/a/b/a/a/b/a;

    invoke-interface {v0}, Lc/c/a/a/b/a/a/b/a;->c()V

    return-void
.end method

.method public final a(Lc/c/a/a/b/a/a/a/a;)V
    .locals 1

    const-string v0, "actionLog"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/g;->a:Lc/c/a/a/b/a/a/b/a;

    invoke-virtual {p1}, Lc/c/a/a/b/a/a/a/a;->h()Lc/c/a/a/b/a/a/b/i;

    move-result-object p1

    invoke-interface {v0, p1}, Lc/c/a/a/b/a/a/b/a;->b(Lc/c/a/a/b/a/a/b/i;)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/g;->a:Lc/c/a/a/b/a/a/b/a;

    invoke-interface {v0}, Lc/c/a/a/b/a/a/b/a;->d()I

    move-result v0

    return v0
.end method

.method public final b(Lc/c/a/a/b/a/a/a/a;)V
    .locals 1

    const-string v0, "actionLog"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/g;->a:Lc/c/a/a/b/a/a/b/a;

    invoke-virtual {p1}, Lc/c/a/a/b/a/a/a/a;->h()Lc/c/a/a/b/a/a/b/i;

    move-result-object p1

    invoke-interface {v0, p1}, Lc/c/a/a/b/a/a/b/a;->a(Lc/c/a/a/b/a/a/b/i;)V

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc/c/a/a/b/a/a/a/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/g;->a:Lc/c/a/a/b/a/a/b/a;

    invoke-interface {v0}, Lc/c/a/a/b/a/a/b/a;->b()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lc/c/a/a/b/a/a/b/i;

    .line 5
    invoke-virtual {v2}, Lc/c/a/a/b/a/a/b/i;->d()Lc/c/a/a/b/a/a/a/a;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public final d()Lc/c/a/a/b/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/g;->a:Lc/c/a/a/b/a/a/b/a;

    invoke-interface {v0}, Lc/c/a/a/b/a/a/b/a;->a()Lc/c/a/a/b/a/a/b/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/a/b/a/a/b/i;->d()Lc/c/a/a/b/a/a/a/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
