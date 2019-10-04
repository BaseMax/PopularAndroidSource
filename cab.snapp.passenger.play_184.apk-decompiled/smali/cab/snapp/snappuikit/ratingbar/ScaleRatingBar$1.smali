.class final Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:D

.field final synthetic c:Lcab/snapp/snappuikit/ratingbar/PartialView;

.field final synthetic d:F

.field final synthetic e:Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;


# direct methods
.method constructor <init>(Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;IDLcab/snapp/snappuikit/ratingbar/PartialView;F)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->e:Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;

    iput p2, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->a:I

    iput-wide p3, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->b:D

    iput-object p5, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->c:Lcab/snapp/snappuikit/ratingbar/PartialView;

    iput p6, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->d:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 74
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->a:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->b:D

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 75
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->c:Lcab/snapp/snappuikit/ratingbar/PartialView;

    iget v1, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->d:F

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setPartialFilled(F)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->c:Lcab/snapp/snappuikit/ratingbar/PartialView;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/ratingbar/PartialView;->setFilled()V

    .line 80
    :goto_0
    iget v0, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->a:I

    int-to-float v0, v0

    iget v1, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->d:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->e:Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;

    invoke-virtual {v0}, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcab/snapp/snappuikit/a$a;->anim_rating_star_scale_up:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->e:Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;

    invoke-virtual {v1}, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcab/snapp/snappuikit/a$a;->anim_rating_star_scale_down:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->c:Lcab/snapp/snappuikit/ratingbar/PartialView;

    invoke-virtual {v2, v0}, Lcab/snapp/snappuikit/ratingbar/PartialView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 84
    iget-object v0, p0, Lcab/snapp/snappuikit/ratingbar/ScaleRatingBar$1;->c:Lcab/snapp/snappuikit/ratingbar/PartialView;

    invoke-virtual {v0, v1}, Lcab/snapp/snappuikit/ratingbar/PartialView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method
