.class public final Lc/c/a/e/d/b/aa;
.super Ljava/lang/Object;
.source "UpgradableAppRepository.kt"

# interfaces
.implements Lb/c/a/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/b/ba;->b()Landroidx/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/c/a/c/a<",
        "TX;TY;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/e/d/b/ba;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/b/ba;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/e/d/b/aa;->a:Lc/c/a/e/d/b/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/entity/MaliciousApp;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/page/ListItem$App;",
            ">;"
        }
    .end annotation

    const-string v0, "list"

    .line 1
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lh/a/m;->a(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcom/farsitel/bazaar/data/entity/MaliciousApp;

    .line 5
    iget-object v2, p0, Lc/c/a/e/d/b/aa;->a:Lc/c/a/e/d/b/ba;

    invoke-static {v2}, Lc/c/a/e/d/b/ba;->a(Lc/c/a/e/d/b/ba;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/farsitel/bazaar/data/entity/MaliciousApp;->toFlatPageItemApp(Landroid/content/Context;)Lcom/farsitel/bazaar/common/model/page/ListItem$App;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lc/c/a/e/d/b/aa;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
