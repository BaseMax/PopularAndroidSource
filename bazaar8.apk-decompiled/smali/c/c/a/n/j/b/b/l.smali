.class public final Lc/c/a/n/j/b/b/l;
.super Lc/c/a/n/u/a;
.source "VideoReviewViewHolder.kt"


# instance fields
.field public final v:Lc/c/a/f/mb;

.field public final w:Lc/c/a/n/u/b;


# direct methods
.method public constructor <init>(Lc/c/a/f/mb;Lc/c/a/n/u/b;)V
    .locals 1

    const-string v0, "viewBinding"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lc/c/a/n/u/a;-><init>(Landroidx/databinding/ViewDataBinding;)V

    iput-object p1, p0, Lc/c/a/n/j/b/b/l;->v:Lc/c/a/f/mb;

    iput-object p2, p0, Lc/c/a/n/j/b/b/l;->w:Lc/c/a/n/u/b;

    return-void
.end method

.method public synthetic constructor <init>(Lc/c/a/f/mb;Lc/c/a/n/u/b;ILh/f/b/f;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2}, Lc/c/a/n/j/b/b/l;-><init>(Lc/c/a/f/mb;Lc/c/a/n/u/b;)V

    return-void
.end method


# virtual methods
.method public b(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/n/j/b/b/l;->v:Lc/c/a/f/mb;

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewItem;->getReviewItem()Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    move-result-object p1

    const/16 v1, 0x32

    invoke-virtual {v0, v1, p1}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lc/c/a/n/j/b/b/l;->v:Lc/c/a/f/mb;

    iget-object v0, p0, Lc/c/a/n/j/b/b/l;->w:Lc/c/a/n/u/b;

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    return-void
.end method
