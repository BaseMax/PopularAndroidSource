.class public final Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;
.super Lc/c/a/d/f/l;
.source "ScreenshotFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/d/f/l<",
        "Lcom/farsitel/bazaar/data/entity/None;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic sa:[Lh/i/i;

.field public static final ta:Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment$a;


# instance fields
.field public Aa:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public Ba:Landroidx/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/ObservableField<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public Ca:Ljava/util/HashMap;

.field public ua:Lc/c/a/n/v/e;

.field public final va:Lh/c;

.field public final wa:Ljava/lang/String;

.field public xa:Z

.field public ya:I

.field public za:Lc/c/a/n/v/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "isLocalePersian"

    const-string v4, "isLocalePersian()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->sa:[Lh/i/i;

    new-instance v0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->ta:Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/d/f/l;-><init>()V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment$isLocalePersian$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment$isLocalePersian$2;-><init>(Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->va:Lh/c;

    const-string v0, "Screenshot"

    .line 3
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->wa:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->xa:Z

    const/high16 v0, -0x1000000

    .line 5
    iput v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->ya:I

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->c(II)V

    return-void
.end method


# virtual methods
.method public Qa()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Ca:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->wa:Ljava/lang/String;

    return-object v0
.end method

.method public Ta()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->ya:I

    return v0
.end method

.method public Ya()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->xa:Z

    return v0
.end method

.method public final Za()Z
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->va:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->sa:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final _a()V
    .locals 3

    .line 1
    sget v0, Lc/c/a/e;->screenshotViewPager:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "screenshotViewPager"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    sget v0, Lc/c/a/e;->screenshotViewPager:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    sget v2, Lc/c/a/e;->screenshotViewPager:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p3, Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Za()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Aa:Landroidx/databinding/ObservableField;

    .line 3
    new-instance p3, Landroidx/databinding/ObservableField;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Za()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p3, v0}, Landroidx/databinding/ObservableField;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Ba:Landroidx/databinding/ObservableField;

    .line 4
    invoke-static {p1, p2, v1}, Lc/c/a/f/w;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lc/c/a/f/w;

    move-result-object p1

    const/16 p2, 0x19

    .line 5
    iget-object p3, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Aa:Landroidx/databinding/ObservableField;

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    invoke-virtual {p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    const/4 p2, 0x6

    .line 6
    iget-object p3, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Ba:Landroidx/databinding/ObservableField;

    if-eqz p3, :cond_1

    invoke-virtual {p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->a(ILjava/lang/Object;)Z

    const-string p2, "FragmentScreenshotBindin\u2026wObserverField)\n        }"

    .line 7
    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p1

    const-string p2, "FragmentScreenshotBindin\u2026rverField)\n        }.root"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    :cond_1
    const-string p1, "showRightArrowObserverField"

    .line 8
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-string p1, "showLeftArrowObserverField"

    .line 9
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const-string v1, "data"

    .line 11
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->ua:Lc/c/a/n/v/e;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lc/c/a/n/v/e;->a()Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    move-result-object p2

    .line 12
    :goto_0
    sget v1, Lc/c/a/e;->screenshotViewPager:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 13
    new-instance v2, Lc/c/a/n/v/d;

    invoke-direct {v2, p0, p2}, Lc/c/a/n/v/d;-><init>(Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;)V

    .line 14
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 15
    new-instance v1, Lc/c/a/n/v/g;

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v2

    const-string v3, "childFragmentManager"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Za()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 17
    invoke-virtual {p2}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lh/a/u;->d(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v3

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {p2}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;->a()Ljava/util/List;

    move-result-object v3

    .line 19
    :goto_1
    invoke-direct {v1, v2, v3}, Lc/c/a/n/v/g;-><init>(Lb/o/a/n;Ljava/util/List;)V

    iput-object v1, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->za:Lc/c/a/n/v/g;

    .line 20
    sget v1, Lc/c/a/e;->screenshotViewPager:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    .line 21
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->za:Lc/c/a/n/v/g;

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lb/G/a/a;)V

    .line 22
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Za()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {p2}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;->b()I

    move-result v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 24
    :cond_2
    invoke-virtual {p2}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;->b()I

    move-result v0

    .line 25
    :goto_2
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 26
    sget v0, Lc/c/a/e;->screenshotViewPager:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "screenshotViewPager"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p2}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;->a()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->c(II)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->b(Landroid/view/View;)V

    return-void

    :cond_3
    const-string p1, "viewPagerAdapter"

    .line 28
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p1, "screenshotArgs"

    .line 29
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public final ab()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->za:Lc/c/a/n/v/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/a/n/v/g;->a()I

    move-result v0

    sget v1, Lc/c/a/e;->screenshotViewPager:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    const-string v2, "screenshotViewPager"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2
    sget v0, Lc/c/a/e;->screenshotViewPager:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    sget v1, Lc/c/a/e;->screenshotViewPager:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1, v2}, Landroidx/viewpager/widget/ViewPager;->a(IZ)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "viewPagerAdapter"

    .line 3
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final b(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a01fe

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a02db

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a02f3

    .line 3
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 4
    new-instance v2, Lc/c/a/n/v/a;

    invoke-direct {v2, p0}, Lc/c/a/n/v/a;-><init>(Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    new-instance v0, Lc/c/a/n/v/b;

    invoke-direct {v0, p0}, Lc/c/a/n/v/b;-><init>(Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    new-instance v0, Lc/c/a/n/v/c;

    invoke-direct {v0, p0}, Lc/c/a/n/v/c;-><init>(Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final bb()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/o/a/d;->La()V

    return-void
.end method

.method public final c(II)V
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Aa:Landroidx/databinding/ObservableField;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/databinding/ObservableField;->a(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Ba:Landroidx/databinding/ObservableField;

    if-eqz v0, :cond_2

    sub-int/2addr p2, v3

    if-eq p1, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableField;->a(Ljava/lang/Object;)V

    return-void

    :cond_2
    const-string p1, "showRightArrowObserverField"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "showLeftArrowObserverField"

    .line 5
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lb/o/a/d;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/v/e;->a:Lc/c/a/n/v/e$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/v/e$a;->a(Landroid/os/Bundle;)Lc/c/a/n/v/e;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->ua:Lc/c/a/n/v/e;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Ca:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Ca:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Ca:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Ca:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public e(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "outState"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lb/o/a/d;->e(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->ua:Lc/c/a/n/v/e;

    const/4 v1, 0x0

    const-string v2, "screenshotArgs"

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lc/c/a/n/v/e;->a()Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    move-result-object v0

    sget v3, Lc/c/a/e;->screenshotViewPager:I

    invoke-virtual {p0, v3}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->e(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->ua:Lc/c/a/n/v/e;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lc/c/a/n/v/e;->a()Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;->b()I

    move-result v3

    :goto_0
    invoke-virtual {v0, v3}, Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;->a(I)V

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->ua:Lc/c/a/n/v/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/a/n/v/e;->a()Lcom/farsitel/bazaar/ui/appdetail/ScreenShotPagerItem;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void

    :cond_1
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 4
    :cond_2
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_3
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/d/f/l;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/screenshot/ScreenshotFragment;->Qa()V

    return-void
.end method
