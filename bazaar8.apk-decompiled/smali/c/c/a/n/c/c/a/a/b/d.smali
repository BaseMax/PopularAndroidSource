.class public final Lc/c/a/n/c/c/a/a/b/d;
.super Lc/c/a/n/c/d/o;
.source "MovieVitrinViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/o<",
        "Lcom/farsitel/bazaar/common/model/page/MovieVitrinSection;",
        "Lcom/farsitel/bazaar/common/model/page/MovieItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView$o;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;Lc/c/a/n/c/d/o$a;)V
    .locals 1

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerPool"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "communicator"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p4, p3}, Lc/c/a/n/c/d/o;-><init>(Landroid/view/ViewGroup;Landroidx/recyclerview/widget/RecyclerView$o;Lc/c/a/n/c/d/o$a;Lcom/farsitel/bazaar/common/model/page/PageViewConfigItem;)V

    return-void
.end method


# virtual methods
.method public E()Lc/c/a/n/c/d/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/n/c/d/a<",
            "Lcom/farsitel/bazaar/common/model/page/MovieItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/c/c/a/a/b/c;

    invoke-direct {v0}, Lc/c/a/n/c/c/a/a/b/c;-><init>()V

    return-object v0
.end method
