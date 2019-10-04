.class public final Lc/c/a/n/j/g/f;
.super Ljava/lang/Object;
.source "VideoReviewsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;

.field public final synthetic b:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

.field public final synthetic c:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/j/g/f;->a:Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;

    iput-object p2, p0, Lc/c/a/n/j/g/f;->b:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    iput-object p3, p0, Lc/c/a/n/j/g/f;->c:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lc/c/a/n/j/g/f;->a:Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;

    iget-object v0, p0, Lc/c/a/n/j/g/f;->b:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;->a(Lcom/farsitel/bazaar/ui/cinema/reviews/VideoReviewsFragment;I)V

    .line 2
    iget-object p1, p0, Lc/c/a/n/j/g/f;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
