.class public final Lc/c/a/e/d/b/W;
.super Ljava/lang/Object;
.source "UpgradableAppLocalDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/d/b/W$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/e/d/b/W$a;


# instance fields
.field public final b:Lc/c/a/e/d/b/L;

.field public final c:Lc/c/a/e/d/b/I;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/e/d/b/W$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/e/d/b/W$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/e/d/b/W;->a:Lc/c/a/e/d/b/W$a;

    return-void
.end method

.method public constructor <init>(Lc/c/a/e/d/b/L;Lc/c/a/e/d/b/I;)V
    .locals 1

    const-string v0, "dao"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/b/W;->b:Lc/c/a/e/d/b/L;

    iput-object p2, p0, Lc/c/a/e/d/b/W;->c:Lc/c/a/e/d/b/I;

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
            "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
            ">;>;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lc/c/a/e/d/b/W;->b:Lc/c/a/e/d/b/L;

    invoke-interface {v0}, Lc/c/a/e/d/b/L;->a()Landroidx/lifecycle/LiveData;

    move-result-object v0

    sget-object v1, Lc/c/a/e/d/b/X;->a:Lc/c/a/e/d/b/X;

    invoke-static {v0, v1}, Lb/r/D;->a(Landroidx/lifecycle/LiveData;Lb/c/a/c/a;)Landroidx/lifecycle/LiveData;

    move-result-object v0

    const-string v1, "Transformations.map(dao.\u2026gradableApp() }\n        }"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lc/c/a/e/d/b/W;->b:Lc/c/a/e/d/b/L;

    invoke-interface {v0, p1}, Lc/c/a/e/d/b/L;->a(Ljava/lang/String;)Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    move-result-object p1

    return-object p1
.end method

.method public final a(JLh/c/b;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lc/c/a/e/d/b/W;->c:Lc/c/a/e/d/b/I;

    invoke-static {p1, p2}, Lh/c/b/a/a;->a(J)Ljava/lang/Long;

    move-result-object v2

    const-string v1, "last_upgradable_apps_update"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    .line 19
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/UpgradableApp;Lh/c/b;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 8
    iget-object p2, p0, Lc/c/a/e/d/b/W;->b:Lc/c/a/e/d/b/L;

    invoke-static {p1}, Lc/c/a/e/f/g;->b(Lcom/farsitel/bazaar/data/entity/UpgradableApp;)Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    move-result-object p1

    invoke-interface {p2, p1}, Lc/c/a/e/d/b/L;->a(Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;)V

    .line 9
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 13
    iget-object p1, p0, Lc/c/a/e/d/b/W;->b:Lc/c/a/e/d/b/L;

    invoke-interface {p1}, Lc/c/a/e/d/b/L;->d()Ljava/util/List;

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
    check-cast v1, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    .line 17
    invoke-static {v1}, Lc/c/a/e/f/g;->a(Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;)Lcom/farsitel/bazaar/data/entity/UpgradableApp;

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
    iget-object p4, p0, Lc/c/a/e/d/b/W;->b:Lc/c/a/e/d/b/L;

    invoke-interface {p4, p1, p2, p3}, Lc/c/a/e/d/b/L;->a(Ljava/lang/String;J)V

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
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 20
    iget-object p2, p0, Lc/c/a/e/d/b/W;->b:Lc/c/a/e/d/b/L;

    invoke-interface {p2, p1}, Lc/c/a/e/d/b/L;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lc/c/a/e/d/b/W;->b:Lc/c/a/e/d/b/L;

    invoke-interface {p2}, Lc/c/a/e/d/b/L;->clear()V

    .line 2
    iget-object p2, p0, Lc/c/a/e/d/b/W;->b:Lc/c/a/e/d/b/L;

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
    check-cast v1, Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    .line 6
    invoke-static {v1}, Lc/c/a/e/f/g;->b(Lcom/farsitel/bazaar/data/entity/UpgradableApp;)Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Lc/c/a/e/d/b/L;->a(Ljava/util/List;)V

    .line 7
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final b(Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/UpgradableApp;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object p1, p0, Lc/c/a/e/d/b/W;->b:Lc/c/a/e/d/b/L;

    invoke-interface {p1}, Lc/c/a/e/d/b/L;->b()Ljava/util/List;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    check-cast v1, Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;

    .line 7
    invoke-static {v1}, Lc/c/a/e/f/g;->a(Lcom/farsitel/bazaar/data/entity/LocalUpgradableApp;)Lcom/farsitel/bazaar/data/entity/UpgradableApp;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b(Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
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

    .line 1
    iget-object p2, p0, Lc/c/a/e/d/b/W;->b:Lc/c/a/e/d/b/L;

    invoke-interface {p2, p1}, Lc/c/a/e/d/b/L;->delete(Ljava/lang/String;)V

    .line 2
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final c(Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lc/c/a/e/d/b/W;->c:Lc/c/a/e/d/b/I;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lh/c/b/a/a;->a(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "last_upgradable_apps_update"

    invoke-virtual {p1, v1, v0}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lh/c/b;)Ljava/lang/Object;
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

    .line 1
    iget-object p1, p0, Lc/c/a/e/d/b/W;->b:Lc/c/a/e/d/b/L;

    invoke-interface {p1}, Lc/c/a/e/d/b/L;->c()V

    .line 2
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method
