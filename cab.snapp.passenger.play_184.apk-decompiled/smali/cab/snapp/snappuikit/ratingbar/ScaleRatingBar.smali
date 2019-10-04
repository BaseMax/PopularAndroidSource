.class public Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;
.super Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/snappuikit/ratingbar/AnimationRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final a(F)V
    .locals 9

    .line 51
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcab/snapp/snappuikit/ratingbar/PartialView;

    .line 56
    invoke-virtual {v7}, Lcab/snapp/snappuikit/ratingbar/PartialView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    float-to-double v1, p1

    .line 57
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    int-to-double v1, v4

    cmpl-double v3, v1, v5

    if-lez v3, :cond_1

    .line 60
    invoke-virtual {v7}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setEmpty()V

    goto :goto_0

    .line 1071
    :cond_1
    new-instance v1, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;

    move-object v2, v1

    move-object v3, p0

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;-><init>(Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;IDLcab/snapp/snappuikit/ratingbar/PartialView;F)V

    .line 64
    iput-object v1, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;->b:Ljava/lang/Runnable;

    .line 65
    iget-object v1, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;->b:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    return-void
.end method
