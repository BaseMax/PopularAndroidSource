.class public final Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;
.super Ljava/lang/Object;
.source "ViewHolderItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final a:I

.field public final viewType:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;-><init>(IILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;->a:I

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;->REVIEW_ACTION:Lcom/farsitel/bazaar/common/model/cinema/CinemaViewItemType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(IILh/f/b/f;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;-><init>(I)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;IILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget p1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;->a:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;->copy(I)Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;->a:I

    return v0
.end method

.method public final copy(I)Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;-><init>(I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;->a:I

    iget p1, p1, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;->a:I

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public final getA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;->a:I

    return v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;->a:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoReviewActionItem(a="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/cinema/VideoReviewActionItem;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
