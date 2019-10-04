.class public Lf/a/a/e/b/a/a;
.super Ljava/lang/Object;
.source "FullScreenImageActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/e/b/a/a;->b:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p0, Lf/a/a/e/b/a/a;->b:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;

    invoke-static {p1}, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->a(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)Lir/cafebazaar/inline/ui/inflaters/activities/HackyViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lf/a/a/e/b/a/a;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    if-nez p1, :cond_1

    .line 1
    iget p1, p0, Lf/a/a/e/b/a/a;->a:I

    iget-object v0, p0, Lf/a/a/e/b/a/a;->b:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;

    invoke-static {v0}, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->a(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)Lir/cafebazaar/inline/ui/inflaters/activities/HackyViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-eq p1, v0, :cond_1

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lf/a/a/e/b/a/a;->b:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;

    invoke-static {v0}, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->a(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)Lir/cafebazaar/inline/ui/inflaters/activities/HackyViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lf/a/a/e/b/a/a;->b:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;

    invoke-static {v0}, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->a(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)Lir/cafebazaar/inline/ui/inflaters/activities/HackyViewPager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v1, Lf/a/a/e;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/github/chrisbanes/photoview/PhotoView;

    .line 4
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->a(Landroid/graphics/Matrix;)Z

    .line 5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Lcom/github/chrisbanes/photoview/PhotoView;->b(Landroid/graphics/Matrix;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lf/a/a/e/b/a/a;->b:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;

    invoke-static {p1}, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->a(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)Lir/cafebazaar/inline/ui/inflaters/activities/HackyViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    iput p1, p0, Lf/a/a/e/b/a/a;->a:I

    :cond_1
    return-void
.end method

.method public a(IFI)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method
