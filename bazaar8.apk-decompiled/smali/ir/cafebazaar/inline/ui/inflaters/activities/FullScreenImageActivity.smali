.class public Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;
.super Landroid/app/Activity;
.source "FullScreenImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;
    }
.end annotation


# instance fields
.field public a:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;

.field public b:Lir/cafebazaar/inline/ui/inflaters/activities/HackyViewPager;

.field public c:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)Lir/cafebazaar/inline/ui/inflaters/activities/HackyViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->b:Lir/cafebazaar/inline/ui/inflaters/activities/HackyViewPager;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/view/View;[Ljava/lang/String;I)V
    .locals 2

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "image_url_arrays"

    .line 3
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "image_id"

    .line 4
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x10

    if-le p2, p3, :cond_0

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p3

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, p2, p3}, Landroid/app/ActivityOptions;->makeScaleUpAnimation(Landroid/view/View;IIII)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static synthetic b(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->c:[Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lf/a/a/f;->inline_fullscreen_image_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    sget p1, Lf/a/a/e;->pager:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lir/cafebazaar/inline/ui/inflaters/activities/HackyViewPager;

    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->b:Lir/cafebazaar/inline/ui/inflaters/activities/HackyViewPager;

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "image_url_arrays"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->c:[Ljava/lang/String;

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "image_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 6
    new-instance v0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;-><init>(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;Lf/a/a/e/b/a/a;)V

    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->a:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;

    .line 7
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->b:Lir/cafebazaar/inline/ui/inflaters/activities/HackyViewPager;

    iget-object v1, p0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->a:Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity$a;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lb/G/a/a;)V

    .line 8
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->b:Lir/cafebazaar/inline/ui/inflaters/activities/HackyViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 9
    iget-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;->b:Lir/cafebazaar/inline/ui/inflaters/activities/HackyViewPager;

    new-instance v0, Lf/a/a/e/b/a/a;

    invoke-direct {v0, p0}, Lf/a/a/e/b/a/a;-><init>(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 10
    sget p1, Lf/a/a/e;->close:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 11
    new-instance v0, Lf/a/a/e/b/a/b;

    invoke-direct {v0, p0}, Lf/a/a/e/b/a/b;-><init>(Lir/cafebazaar/inline/ui/inflaters/activities/FullScreenImageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
