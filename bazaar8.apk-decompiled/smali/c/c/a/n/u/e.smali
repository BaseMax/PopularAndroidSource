.class public final Lc/c/a/n/u/e;
.super Lc/c/a/n/c/d/a;
.source "ReviewsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        ">;"
    }
.end annotation


# instance fields
.field public final f:Lc/c/a/n/u/b;

.field public final g:Lc/c/a/n/u/c;


# direct methods
.method public constructor <init>(Lc/c/a/n/u/b;Lc/c/a/n/u/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/n/c/d/a;-><init>()V

    iput-object p1, p0, Lc/c/a/n/u/e;->f:Lc/c/a/n/u/b;

    iput-object p2, p0, Lc/c/a/n/u/e;->g:Lc/c/a/n/u/c;

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/n/u/b;Lc/c/a/n/u/c;ILh/f/b/f;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2}, Lc/c/a/n/u/e;-><init>(Lc/c/a/n/u/b;Lc/c/a/n/u/c;)V

    return-void
.end method


# virtual methods
.method public c(Landroid/view/ViewGroup;I)Lc/c/a/n/c/d/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lc/c/a/n/c/d/n<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItemViewType;->REVIEW_ITEM:Lcom/farsitel/bazaar/common/model/reviews/ReviewItemViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Lc/c/a/n/u/d;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/mb;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/mb;

    move-result-object p1

    const-string v0, "ItemReviewBinding.inflat\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lc/c/a/n/u/e;->f:Lc/c/a/n/u/b;

    .line 4
    iget-object v1, p0, Lc/c/a/n/u/e;->g:Lc/c/a/n/u/c;

    .line 5
    invoke-direct {p2, p1, v0, v1}, Lc/c/a/n/u/d;-><init>(Landroidx/databinding/ViewDataBinding;Lc/c/a/n/u/b;Lc/c/a/n/u/c;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/farsitel/bazaar/common/model/reviews/ReviewItemViewType;->DIVIDER:Lcom/farsitel/bazaar/common/model/reviews/ReviewItemViewType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 7
    new-instance p2, Lc/c/a/n/c/d/n;

    .line 8
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p1, v1}, Lc/c/a/f/K;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/K;

    move-result-object p1

    const-string v0, "ItemAppdetailDividerBind\u2026.context), parent, false)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p2, p1}, Lc/c/a/n/c/d/n;-><init>(Landroidx/databinding/ViewDataBinding;)V

    :goto_0
    return-object p2

    .line 10
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "Invalid viewType in ReviewsAdapter"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method
