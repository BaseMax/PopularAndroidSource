.class public final Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;
.super Lc/c/a/n/c/a/b;
.source "MyBazaarFragment.kt"

# interfaces
.implements Lc/c/a/n/r/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$b;,
        Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$a;
    }
.end annotation


# static fields
.field public static final synthetic ia:[Lh/i/i;

.field public static final ja:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$a;


# instance fields
.field public final ka:I

.field public la:Lc/c/a/f/q;

.field public ma:Lc/c/a/n/r/q;

.field public na:Lc/c/a/n/A/k;

.field public oa:Ljava/lang/Integer;

.field public final pa:Lh/c;

.field public qa:Lc/c/a/o/c;

.field public ra:Landroidx/viewpager/widget/ViewPager$f;

.field public sa:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "isLocalePersian"

    const-string v4, "isLocalePersian()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->ia:[Lh/i/i;

    new-instance v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->ja:Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/b;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->ka:I

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$isLocalePersian$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$isLocalePersian$2;-><init>(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->pa:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->oa:Ljava/lang/Integer;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->k(Z)V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->sa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/MyBazaarScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/MyBazaarScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/MyBazaarScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/MyBazaarScreen;

    move-result-object v0

    return-object v0
.end method

.method public final Ua()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/a/a$a;->a(Landroid/content/Context;)Lc/c/a/e/d/u/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/c/a/e/d/u/a;->n()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://help.cafebazaar.ir/?l="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final Va()Z
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->pa:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->ia:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final Wa()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->la:Lc/c/a/f/q;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->Ua()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lc/c/a/f/q;->L:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v3, Lc/c/a/n/r/l;

    invoke-direct {v3, p0}, Lc/c/a/n/r/l;-><init>(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object v0, v0, Lc/c/a/f/q;->J:Landroidx/appcompat/widget/AppCompatImageView;

    new-instance v2, Lc/c/a/n/r/m;

    invoke-direct {v2, v1, p0}, Lc/c/a/n/r/m;-><init>(Ljava/lang/String;Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string v0, "binding"

    .line 5
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Xa()V
    .locals 9

    .line 1
    sget v0, Lc/c/a/e;->viewPager:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const-string v1, "viewPager"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Lb/G/a/a;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 2
    sget v0, Lc/c/a/e;->tabLayout:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    sget v4, Lc/c/a/e;->viewPager:I

    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->e(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v0, 0x2

    .line 3
    new-array v0, v0, [Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f100124

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f100126

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    .line 6
    invoke-static {v0}, Lh/a/l;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->Va()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 8
    invoke-static {v0}, Lh/a/u;->d(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 9
    :cond_0
    sget v4, Lc/c/a/e;->viewPager:I

    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->e(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v4, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$b;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->Va()Z

    move-result v6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v7

    const-string v8, "childFragmentManager"

    invoke-static {v7, v8}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v0, v6, v7}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment$b;-><init>(Ljava/util/List;ZLb/o/a/n;)V

    invoke-virtual {v4, v5}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Lb/G/a/a;)V

    .line 10
    :cond_1
    new-instance v0, Lc/c/a/o/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v4

    sget v5, Lc/c/a/e;->tabLayout:I

    invoke-virtual {p0, v5}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->e(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/tabs/TabLayout;

    const-string v6, "tabLayout"

    invoke-static {v5, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget v6, Lc/c/a/e;->viewPager:I

    invoke-virtual {p0, v6}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->e(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v6, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v4, v5, v6}, Lc/c/a/o/c;-><init>(Landroid/content/Context;Lcom/google/android/material/tabs/TabLayout;Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->qa:Lc/c/a/o/c;

    .line 11
    sget v0, Lc/c/a/e;->tabLayout:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->qa:Lc/c/a/o/c;

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-virtual {v0, v4}, Lcom/google/android/material/tabs/TabLayout;->a(Lcom/google/android/material/tabs/TabLayout$b;)V

    .line 12
    new-instance v0, Lc/c/a/n/r/n;

    invoke-direct {v0, p0}, Lc/c/a/n/r/n;-><init>(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->ra:Landroidx/viewpager/widget/ViewPager$f;

    .line 13
    sget v0, Lc/c/a/e;->viewPager:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->ra:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v4, :cond_5

    invoke-virtual {v0, v4}, Landroidx/viewpager/widget/ViewPager;->a(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 14
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->oa:Ljava/lang/Integer;

    if-nez v0, :cond_3

    .line 15
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->Va()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->oa:Ljava/lang/Integer;

    .line 16
    :cond_3
    sget v0, Lc/c/a/e;->viewPager:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->oa:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_4
    invoke-static {}, Lh/f/b/j;->a()V

    throw v5

    .line 17
    :cond_5
    invoke-static {}, Lh/f/b/j;->a()V

    throw v5

    .line 18
    :cond_6
    invoke-static {}, Lh/f/b/j;->a()V

    throw v5
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Lc/c/a/f/q;->a(Landroid/view/LayoutInflater;)Lc/c/a/f/q;

    move-result-object p1

    const-string p2, "FragmentMyBazaarBinding.inflate(inflater)"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->la:Lc/c/a/f/q;

    .line 4
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->la:Lc/c/a/f/q;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->h()Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "binding"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->Wa()V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class v0, Lc/c/a/n/A/k;

    invoke-virtual {p1, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast p1, Lc/c/a/n/A/k;

    .line 5
    invoke-virtual {p1}, Lc/c/a/n/A/k;->e()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/r/k;

    invoke-direct {v3, p0}, Lc/c/a/n/r/k;-><init>(Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 6
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->na:Lc/c/a/n/A/k;

    .line 7
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object p1

    .line 8
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class v1, Lc/c/a/n/r/q;

    invoke-virtual {p1, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    check-cast p1, Lc/c/a/n/r/q;

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->ma:Lc/c/a/n/r/q;

    .line 10
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->la:Lc/c/a/f/q;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 11
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->ma:Lc/c/a/n/r/q;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/r/q;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lc/c/a/f/q;->a(Landroidx/lifecycle/LiveData;)V

    .line 12
    invoke-virtual {p1, p0}, Lc/c/a/f/q;->a(Lc/c/a/n/r/p;)V

    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/databinding/ViewDataBinding;->a(Lb/r/k;)V

    .line 14
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->Xa()V

    return-void

    :cond_0
    const-string p1, "myBazaarViewModel"

    .line 15
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "binding"

    .line 16
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v0
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->sa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->sa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->sa:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->sa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final k(Z)V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    sget-object v1, Lc/c/a/n/r/o;->a:Lc/c/a/n/r/o$a;

    invoke-virtual {v1}, Lc/c/a/n/r/o$a;->b()Lb/w/p;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public p()V
    .locals 7

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/ui/login/LoginActivity;->w:Lcom/farsitel/bazaar/ui/login/LoginActivity$a;

    iget v2, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->ka:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v6}, Lcom/farsitel/bazaar/ui/login/LoginActivity$a;->a(Lcom/farsitel/bazaar/ui/login/LoginActivity$a;Landroidx/fragment/app/Fragment;ILjava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;ILjava/lang/Object;)V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->ma:Lc/c/a/n/r/q;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc/c/a/n/r/q;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/common/model/user/User;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/user/User;->isLoggedIn()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->n()V

    :cond_0
    return-void

    :cond_1
    const-string v0, "myBazaarViewModel"

    .line 3
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public qa()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->qa:Lc/c/a/o/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/c/a/o/c;->b()V

    .line 3
    sget v1, Lc/c/a/e;->tabLayout:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->b(Lcom/google/android/material/tabs/TabLayout$b;)V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->qa:Lc/c/a/o/c;

    .line 5
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->ra:Landroidx/viewpager/widget/ViewPager$f;

    if-eqz v1, :cond_1

    .line 6
    sget v2, Lc/c/a/e;->viewPager:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->b(Landroidx/viewpager/widget/ViewPager$f;)V

    .line 7
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->ra:Landroidx/viewpager/widget/ViewPager$f;

    .line 8
    :cond_1
    invoke-super {p0}, Lc/c/a/n/c/a/b;->qa()V

    .line 9
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/mybazaar/MyBazaarFragment;->La()V

    return-void
.end method
