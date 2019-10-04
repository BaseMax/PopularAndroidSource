.class public final Lc/c/a/n/c/c/m;
.super Ljava/lang/Object;
.source "PageFragment.kt"

# interfaces
.implements Lb/r/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/n/c/c/n;->a(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/r/u<",
        "Lcom/farsitel/bazaar/core/model/Resource<",
        "+",
        "Ljava/util/List<",
        "+",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/c/a/n/c/c/n;


# direct methods
.method public constructor <init>(Lc/c/a/n/c/c/n;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/c/c/m;->a:Lc/c/a/n/c/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "+",
            "Ljava/util/List<",
            "+",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;>;)V"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lc/c/a/n/c/c/m;->a:Lc/c/a/n/c/c/n;

    invoke-static {p1}, Lc/c/a/n/c/c/n;->c(Lc/c/a/n/c/c/n;)Lc/c/a/n/c/c/t;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/c/c/t;->j()Lb/r/r;

    move-result-object p1

    iget-object v0, p0, Lc/c/a/n/c/c/m;->a:Lc/c/a/n/c/c/n;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v0

    new-instance v1, Lc/c/a/n/c/c/l;

    invoke-direct {v1, p0}, Lc/c/a/n/c/c/l;-><init>(Lc/c/a/n/c/c/m;)V

    invoke-virtual {p1, v0, v1}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/farsitel/bazaar/core/model/Resource;

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/m;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method
