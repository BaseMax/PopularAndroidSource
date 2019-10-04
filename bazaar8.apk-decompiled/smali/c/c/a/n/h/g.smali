.class public final Lc/c/a/n/h/g;
.super Lc/c/a/n/c/d/g;
.source "ChildCategoryViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/g<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Ljava/util/ArrayList<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;)V"
        }
    .end annotation

    const-string v0, "params"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/n/c/d/g;->a(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lc/c/a/n/h/g;->a(Ljava/util/ArrayList;)V

    return-void
.end method
