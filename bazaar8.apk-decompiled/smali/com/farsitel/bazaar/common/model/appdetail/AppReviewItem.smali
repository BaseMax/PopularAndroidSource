.class public final Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final reviewItem:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

.field public final viewType:I


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V
    .locals 1

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;->reviewItem:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;->MY_REVIEW:Lcom/farsitel/bazaar/common/model/appdetail/AppDetailViewItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;->viewType:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;->reviewItem:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;->copy(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;->reviewItem:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    return-object v0
.end method

.method public final copy(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;
    .locals 1

    const-string v0, "reviewItem"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;-><init>(Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;->reviewItem:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    iget-object p1, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;->reviewItem:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getReviewItem()Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;->reviewItem:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;->reviewItem:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppReviewItem(reviewItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/appdetail/AppReviewItem;->reviewItem:Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
