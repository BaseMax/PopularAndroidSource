.class public final Lc/c/a/n/u/n;
.super Ljava/lang/Object;
.source "ReviewsFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

.field public final synthetic b:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

.field public final synthetic c:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;Landroid/widget/PopupWindow;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/n/u/n;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    iput-object p2, p0, Lc/c/a/n/u/n;->b:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    iput-object p3, p0, Lc/c/a/n/u/n;->c:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lc/c/a/n/u/n;->b:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->getReplyItem()Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lc/c/a/n/u/n;->a:Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/reviews/ReplyReviewItem;->getId()I

    move-result p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;->a(Lcom/farsitel/bazaar/ui/reviews/ReviewsFragment;IZ)V

    .line 2
    :cond_0
    iget-object p1, p0, Lc/c/a/n/u/n;->c:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
