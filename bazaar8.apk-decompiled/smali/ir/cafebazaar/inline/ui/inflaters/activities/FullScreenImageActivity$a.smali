.class public Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;
.super Lb/G/a/a;
.source "FullScreenImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final synthetic c:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;


# direct methods
.method public constructor <init>(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;->c:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;

    invoke-direct {p0}, Lb/G/a/a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;Lf/a/a/e/b/a/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;-><init>(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;->c:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;

    invoke-static {v0}, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->b(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .line 4
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;->c:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lf/a/a/f;->inline_fullscreen_image_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    sget v1, Lf/a/a/e;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 6
    sget v2, Lf/a/a/e;->image:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/github/chrisbanes/photoview/PhotoView;

    .line 7
    invoke-static {}, Lf/a/a/f/e;->a()Lf/a/a/f/e;

    move-result-object v3

    iget-object v4, p0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;->c:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;

    invoke-static {v4}, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->b(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)[Ljava/lang/String;

    move-result-object v4

    aget-object p2, v4, p2

    new-instance v4, Lf/a/a/e/b/a/c;

    invoke-direct {v4, p0, v1}, Lf/a/a/e/b/a/c;-><init>(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;Landroid/widget/ProgressBar;)V

    invoke-virtual {v3, p2, v2, v4}, Lf/a/a/f/e;->a(Ljava/lang/String;Landroid/widget/ImageView;Lf/a/a/f/e$a;)V

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
