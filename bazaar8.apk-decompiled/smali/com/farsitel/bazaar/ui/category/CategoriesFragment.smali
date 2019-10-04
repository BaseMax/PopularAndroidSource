.class public final Lcom/farsitel/bazaar/ui/category/CategoriesFragment;
.super Lc/c/a/n/c/a/b;
.source "CategoriesFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;,
        Lcom/farsitel/bazaar/ui/category/CategoriesFragment$b;
    }
.end annotation


# static fields
.field public static final synthetic ia:[Lh/i/i;

.field public static final ja:Lcom/farsitel/bazaar/ui/category/CategoriesFragment$b;


# instance fields
.field public ka:Lc/c/a/n/h/c;

.field public la:I

.field public ma:Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;

.field public final na:Lh/c;

.field public oa:Lc/c/a/o/c;

.field public pa:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "isLocalePersian"

    const-string v4, "isLocalePersian()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->ia:[Lh/i/i;

    new-instance v0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$b;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->ja:Lcom/farsitel/bazaar/ui/category/CategoriesFragment$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/b;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->la:I

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$isLocalePersian$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$isLocalePersian$2;-><init>(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->na:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/o;->Oa()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->la:I

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->a(Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;Lcom/farsitel/bazaar/data/entity/ErrorModel;Z)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2}, Lc/c/a/d/f/o;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;Z)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->k(Z)V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->k(Z)V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->pa:Ljava/util/HashMap;

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
    new-instance v0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$retryLoadData$1;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$retryLoadData$1;-><init>(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;)V

    return-object v0
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/CategoriesScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/CategoriesScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/CategoriesScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/CategoriesScreen;

    move-result-object v0

    return-object v0
.end method

.method public final Ua()Lc/c/a/n/h/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->ka:Lc/c/a/n/h/c;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Va()Z
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->na:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->ia:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d004d

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f0a0168

    .line 8
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lc/c/a/d/f/o;->b(Landroid/view/ViewGroup;)V

    .line 9
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object p1

    .line 10
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class p2, Lc/c/a/n/h/c;

    invoke-virtual {p1, p2}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string p2, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    check-cast p1, Lc/c/a/n/h/c;

    .line 12
    invoke-virtual {p1}, Lc/c/a/n/h/c;->f()V

    .line 13
    invoke-virtual {p1}, Lc/c/a/n/h/c;->e()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$onViewCreated$$inlined$createViewModel$lambda$1;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$onViewCreated$$inlined$createViewModel$lambda$1;-><init>(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;)V

    invoke-static {p0, p2, v0}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 14
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->ka:Lc/c/a/n/h/c;

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;)V
    .locals 6

    .line 15
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->ma:Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;

    const-string v1, "viewPager"

    if-eqz v0, :cond_0

    sget v0, Lc/c/a/e;->viewPager:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lb/G/a/a;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x2

    .line 16
    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f10002f

    .line 17
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const v3, 0x7f1000dd

    .line 18
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 19
    invoke-static {v0}, Lh/a/l;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->Va()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 21
    invoke-static {v0}, Lh/a/u;->d(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 22
    :cond_1
    sget v2, Lc/c/a/e;->tabLayout:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    sget v3, Lc/c/a/e;->viewPager:I

    invoke-virtual {p0, v3}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->e(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 23
    new-instance v2, Lc/c/a/o/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v3

    sget v4, Lc/c/a/e;->tabLayout:I

    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->e(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/tabs/TabLayout;

    const-string v5, "tabLayout"

    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lc/c/a/e;->viewPager:I

    invoke-virtual {p0, v5}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->e(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v5, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v4, v5}, Lc/c/a/o/c;-><init>(Landroid/content/Context;Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager/widget/ViewPager;)V

    iput-object v2, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->oa:Lc/c/a/o/c;

    .line 24
    sget v2, Lc/c/a/e;->tabLayout:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/tabs/TabLayout;

    iget-object v3, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->oa:Lc/c/a/o/c;

    if-eqz v3, :cond_3

    invoke-virtual {v2, v3}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$b;)V

    .line 25
    new-instance v2, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->Va()Z

    move-result v3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v4

    const-string v5, "childFragmentManager"

    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1, v0, v3, v4}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;-><init>(Lcom/farsitel/bazaar/common/model/categroy/CategoryModel;Ljava/util/List;ZLb/o/a/n;)V

    iput-object v2, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->ma:Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;

    .line 26
    sget p1, Lc/c/a/e;->viewPager:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->ma:Lcom/farsitel/bazaar/ui/category/CategoriesFragment$a;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lb/G/a/a;)V

    .line 27
    sget p1, Lc/c/a/e;->viewPager:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    new-instance v0, Lc/c/a/n/h/a;

    invoke-direct {v0, p0}, Lc/c/a/n/h/a;-><init>(Lcom/farsitel/bazaar/ui/category/CategoriesFragment;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 28
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->Va()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 29
    sget p1, Lc/c/a/e;->viewPager:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->la:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_2
    return-void

    .line 30
    :cond_3
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->pa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->pa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->pa:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->pa:Ljava/util/HashMap;

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

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget p1, Lc/c/a/e;->loading:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public qa()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->oa:Lc/c/a/o/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/o/c;->b()V

    .line 3
    sget v1, Lc/c/a/e;->tabLayout:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$b;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->oa:Lc/c/a/o/c;

    .line 5
    invoke-super {p0}, Lc/c/a/n/c/a/b;->qa()V

    .line 6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/category/CategoriesFragment;->La()V

    return-void
.end method
