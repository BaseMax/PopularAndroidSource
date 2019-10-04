.class public Lb/l/a/e;
.super Ljava/lang/Object;
.source "RatingBarBindingAdapter.java"


# direct methods
.method public static a(Landroid/widget/RatingBar;F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/RatingBar;->setRating(F)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/widget/RatingBar;Landroid/widget/RatingBar$OnRatingBarChangeListener;Lb/l/h;)V
    .locals 1

    if-nez p2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lb/l/a/d;

    invoke-direct {v0, p1, p2}, Lb/l/a/d;-><init>(Landroid/widget/RatingBar$OnRatingBarChangeListener;Lb/l/h;)V

    invoke-virtual {p0, v0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    :goto_0
    return-void
.end method
