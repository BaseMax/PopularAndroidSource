.class public abstract Lc/c/a/n/c/c/c/c;
.super Lc/c/a/n/c/a/b;
.source "BasePageContainerFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "VM:",
        "Lc/c/a/n/c/c/c/d<",
        "TParams;>;>",
        "Lc/c/a/n/c/a/b;"
    }
.end annotation


# static fields
.field public static final synthetic ia:[Lh/i/i;


# instance fields
.field public ja:Lc/c/a/n/c/c/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVM;"
        }
    .end annotation
.end field

.field public ka:Lcom/google/android/material/tabs/TabLayout;

.field public la:Landroidx/viewpager/widget/ViewPager;

.field public final ma:Lh/c;

.field public na:Ljava/lang/Integer;

.field public oa:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lc/c/a/n/c/c/c/c;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "isLocalePersian"

    const-string v4, "isLocalePersian()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lc/c/a/n/c/c/c/c;->ia:[Lh/i/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/b;-><init>()V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/ui/base/page/container/BasePageContainerFragment$isLocalePersian$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/base/page/container/BasePageContainerFragment$isLocalePersian$2;-><init>(Lc/c/a/n/c/c/c/c;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lc/c/a/n/c/c/c/c;->ma:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/c/c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/o;->Oa()V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/c/c;Lcom/farsitel/bazaar/common/model/Page;)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c/c;->b(Lcom/farsitel/bazaar/common/model/Page;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/c/c;Lcom/farsitel/bazaar/data/entity/ErrorModel;Z)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lc/c/a/d/f/o;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;Z)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/c/c;Ljava/lang/Integer;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lc/c/a/n/c/c/c/c;->na:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/c/c;Ljava/util/List;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c/c;->b(Ljava/util/List;)V

    return-void
.end method

.method public static final synthetic a(Lc/c/a/n/c/c/c/c;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c/c;->k(Z)V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/c/c/c/c;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c/c;->k(Z)V

    return-void

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setLoadingVisibility"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic b(Lc/c/a/n/c/c/c/c;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 18
    :cond_0
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c/c;->l(Z)V

    return-void

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: setVisibilityOfHeader"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lc/c/a/n/c/c/c/c;->oa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Pa()Lh/f/a/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/f/a/a<",
            "Lh/h;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/farsitel/bazaar/ui/base/page/container/BasePageContainerFragment$retryLoadData$1;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/base/page/container/BasePageContainerFragment$retryLoadData$1;-><init>(Lc/c/a/n/c/c/c/c;)V

    return-object v0
.end method

.method public abstract Ua()I
.end method

.method public final Va()Landroidx/viewpager/widget/ViewPager;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/c/c;->la:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "pageTabViewPager"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public abstract Wa()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TParams;"
        }
    .end annotation
.end method

.method public final Xa()Lc/c/a/n/c/c/c/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/n/c/c/c/c;->ja:Lc/c/a/n/c/c/c/d;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Ya()Z
    .locals 3

    iget-object v0, p0, Lc/c/a/n/c/c/c/c;->ma:Lh/c;

    sget-object v1, Lc/c/a/n/c/c/c/c;->ia:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public abstract Za()Lc/c/a/n/c/c/c/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVM;"
        }
    .end annotation
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lc/c/a/n/c/c/c/c;->Ua()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p3, "view"

    .line 8
    invoke-static {p1, p3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lc/c/a/n/c/c/c/c;->a(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 9
    invoke-virtual {p0, p1}, Lc/c/a/d/f/o;->b(Landroid/view/View;)V

    return-object p1
.end method

.method public abstract a(Lcom/farsitel/bazaar/common/model/Page;)Lc/c/a/d/f/o;
.end method

.method public abstract a(Ljava/util/List;)Lc/c/a/n/c/c/c/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;)",
            "Lc/c/a/n/c/c/c/e;"
        }
    .end annotation
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0365

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "view.findViewById(R.id.tabLayout)"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/google/android/material/tabs/TabLayout;

    iput-object p2, p0, Lc/c/a/n/c/c/c/c;->ka:Lcom/google/android/material/tabs/TabLayout;

    const p2, 0x7f0a0274

    .line 12
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "view.findViewById(R.id.pageTabViewPager)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lc/c/a/n/c/c/c/c;->la:Landroidx/viewpager/widget/ViewPager;

    .line 13
    invoke-virtual {p0}, Lc/c/a/n/c/c/c/c;->Za()Lc/c/a/n/c/c/c/d;

    move-result-object p1

    .line 14
    invoke-virtual {p0}, Lc/c/a/n/c/c/c/c;->Wa()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/c/a/n/c/c/c/d;->b(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p1}, Lc/c/a/n/c/c/c/d;->e()Landroidx/lifecycle/LiveData;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v0

    new-instance v1, Lc/c/a/n/c/c/c/a;

    invoke-direct {v1, p0}, Lc/c/a/n/c/c/c/a;-><init>(Lc/c/a/n/c/c/c/c;)V

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 16
    iput-object p1, p0, Lc/c/a/n/c/c/c/c;->ja:Lc/c/a/n/c/c/c/d;

    return-void
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 3

    const v0, 0x7f0a0154

    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->M()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d012c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/common/model/Page;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v0

    const v1, 0x7f0a0271

    invoke-virtual {v0, v1}, Lb/o/a/n;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lb/o/a/n;->a()Lb/o/a/C;

    move-result-object v0

    const-string v2, "childFragmentManager.beginTransaction()"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c/c;->a(Lcom/farsitel/bazaar/common/model/Page;)Lc/c/a/d/f/o;

    move-result-object p1

    .line 4
    invoke-virtual {v0, v1, p1}, Lb/o/a/C;->a(ILandroidx/fragment/app/Fragment;)Lb/o/a/C;

    .line 5
    invoke-virtual {v0}, Lb/o/a/C;->b()I

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c/c;->a(Ljava/util/List;)Lc/c/a/n/c/c/c/e;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lc/c/a/n/c/c/c/c;->ka:Lcom/google/android/material/tabs/TabLayout;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    iget-object v3, p0, Lc/c/a/n/c/c/c/c;->la:Landroidx/viewpager/widget/ViewPager;

    const-string v4, "pageTabViewPager"

    if-eqz v3, :cond_7

    invoke-virtual {v1, v3}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 8
    iget-object v1, p0, Lc/c/a/n/c/c/c/c;->la:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 9
    iget-object v1, p0, Lc/c/a/n/c/c/c/c;->la:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lb/G/a/a;)V

    .line 10
    iget-object v0, p0, Lc/c/a/n/c/c/c/c;->la:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_4

    new-instance v1, Lc/c/a/n/c/c/c/b;

    invoke-direct {v1, p0}, Lc/c/a/n/c/c/c/b;-><init>(Lc/c/a/n/c/c/c/c;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 11
    iget-object v0, p0, Lc/c/a/n/c/c/c/c;->na:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p0}, Lc/c/a/n/c/c/c/c;->Ya()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/n/c/c/c/c;->na:Ljava/lang/Integer;

    .line 13
    :cond_1
    iget-object p1, p0, Lc/c/a/n/c/c/c/c;->la:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lc/c/a/n/c/c/c/c;->na:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v2

    :cond_3
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 14
    :cond_4
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_5
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_6
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_7
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_8
    const-string p1, "tabLayout"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lc/c/a/n/c/c/c/c;->oa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc/c/a/n/c/c/c/c;->oa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lc/c/a/n/c/c/c/c;->oa:Ljava/util/HashMap;

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

    iget-object v1, p0, Lc/c/a/n/c/c/c/c;->oa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final k(Z)V
    .locals 1

    const-string v0, "loading"

    if-eqz p1, :cond_0

    .line 1
    sget p1, Lc/c/a/e;->loading:I

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c/c;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_0

    .line 2
    :cond_0
    sget p1, Lc/c/a/e;->loading:I

    invoke-virtual {p0, p1}, Lc/c/a/n/c/c/c/c;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public abstract l(Z)V
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/a/b;->qa()V

    invoke-virtual {p0}, Lc/c/a/n/c/c/c/c;->La()V

    return-void
.end method
