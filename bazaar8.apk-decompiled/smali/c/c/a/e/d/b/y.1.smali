.class public final Lc/c/a/e/d/b/y;
.super Ljava/lang/Object;
.source "MaliciousAppLocalDataSource.kt"


# instance fields
.field public final a:Lc/c/a/e/d/b/o;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/o;)V
    .locals 1

    const-string v0, "dao"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/b/y;->a:Lc/c/a/e/d/b/o;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/LiveData;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/MaliciousApp;",
            ">;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lc/c/a/e/d/b/y;->a:Lc/c/a/e/d/b/o;

    invoke-interface {v0}, Lc/c/a/e/d/b/o;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    sget-object v1, Lc/c/a/e/d/b/x;->a:Lc/c/a/e/d/b/x;

    invoke-static {v0, v1}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "Transformations.map(dao.\u2026aliciousApp() }\n        }"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/MaliciousApp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 13
    iget-object p1, p0, Lc/c/a/e/d/b/y;->a:Lc/c/a/e/d/b/o;

    invoke-interface {p1}, Lc/c/a/e/d/b/o;->d()Ljava/util/List;

    move-result-object p1

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;

    .line 17
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;->toMaliciousApp()Lcom/farsitel/bazaar/data/entity/MaliciousApp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;JLh/c/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 10
    iget-object p4, p0, Lc/c/a/e/d/b/y;->a:Lc/c/a/e/d/b/o;

    invoke-interface {p4, p1, p2, p3}, Lc/c/a/e/d/b/o;->a(Ljava/lang/String;J)V

    .line 11
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 8
    iget-object p2, p0, Lc/c/a/e/d/b/y;->a:Lc/c/a/e/d/b/o;

    invoke-interface {p2, p1}, Lc/c/a/e/d/b/o;->delete(Ljava/lang/String;)V

    .line 9
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/MaliciousApp;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lc/c/a/e/d/b/y;->a:Lc/c/a/e/d/b/o;

    invoke-interface {p2}, Lc/c/a/e/d/b/o;->clear()V

    .line 2
    iget-object p2, p0, Lc/c/a/e/d/b/y;->a:Lc/c/a/e/d/b/o;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/farsitel/bazaar/data/entity/MaliciousApp;

    .line 6
    invoke-virtual {v1}, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->toMaliciousAppEntity()Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Lc/c/a/e/d/b/o;->a(Ljava/util/List;)V

    .line 7
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final b(Lh/c/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 6
    iget-object p1, p0, Lc/c/a/e/d/b/y;->a:Lc/c/a/e/d/b/o;

    invoke-interface {p1}, Lc/c/a/e/d/b/o;->c()V

    .line 7
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/MaliciousApp;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/b/y;->a:Lc/c/a/e/d/b/o;

    invoke-interface {v0}, Lc/c/a/e/d/b/o;->b()Ljava/util/List;

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
    check-cast v2, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;

    .line 5
    invoke-virtual {v2}, Lcom/farsitel/bazaar/data/entity/MaliciousAppEntity;->toMaliciousApp()Lcom/farsitel/bazaar/data/entity/MaliciousApp;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
