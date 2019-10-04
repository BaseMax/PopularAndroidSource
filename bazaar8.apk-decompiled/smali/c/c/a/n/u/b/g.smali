.class public abstract Lc/c/a/n/u/b/g;
.super Lc/c/a/n/u/b/a;
.source "PostCommentWithRateFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/c/a/n/u/b/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public Fa:Landroid/widget/RatingBar;

.field public Ga:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/n/u/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/u/b/a;->b(Landroid/view/View;)V

    const v0, 0x7f0a02ad

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.rbPostComment)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/RatingBar;

    iput-object p1, p0, Lc/c/a/n/u/b/g;->Fa:Landroid/widget/RatingBar;

    .line 3
    iget-object p1, p0, Lc/c/a/n/u/b/g;->Fa:Landroid/widget/RatingBar;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    return-void

    :cond_0
    const-string p1, "ratingBar"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public ib()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/u/b/a;->eb()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const v0, 0x7f1001de

    goto :goto_1

    :cond_1
    const v0, 0x7f1001df

    :goto_1
    iput v0, p0, Lc/c/a/n/u/b/g;->Ga:I

    return-void
.end method

.method public final nb()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/n/u/b/g;->Ga:I

    return v0
.end method

.method public final ob()Landroid/widget/RatingBar;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/b/g;->Fa:Landroid/widget/RatingBar;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "ratingBar"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public pb()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/b/g;->Fa:Landroid/widget/RatingBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    const/4 v1, 0x0

    int-to-float v2, v1

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const-string v0, "ratingBar"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/u/b/a;->qa()V

    invoke-virtual {p0}, Lc/c/a/d/f/l;->Qa()V

    return-void
.end method

.method public final qb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/n/u/b/g;->Fa:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    const-string v2, "ratingBar"

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v0

    float-to-int v0, v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/c/a/n/u/b/g;->Fa:Landroid/widget/RatingBar;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010026

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 3
    :cond_2
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method
