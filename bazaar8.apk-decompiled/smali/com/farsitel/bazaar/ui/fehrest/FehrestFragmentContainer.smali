.class public final Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;
.super Lc/c/a/n/c/c/c/c;
.source "FehrestFragmentContainer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/c/c/c<",
        "Lc/c/a/n/l/f;",
        "Lc/c/a/n/l/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic pa:[Lh/i/i;


# instance fields
.field public final qa:I

.field public final ra:Lh/c;

.field public final sa:Lh/c;

.field public ta:Lc/c/a/n/l/f;

.field public ua:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "showBackButton"

    const-string v4, "getShowBackButton()Z"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "toolbarName"

    const-string v4, "getToolbarName()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->pa:[Lh/i/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/c/c/c;-><init>()V

    const v0, 0x7f0d0052

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->qa:I

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer$showBackButton$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer$showBackButton$2;-><init>(Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->ra:Lh/c;

    .line 4
    new-instance v0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer$toolbarName$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer$toolbarName$2;-><init>(Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->sa:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;)Lc/c/a/n/l/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->ta:Lc/c/a/n/l/f;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "fehrestTabArgs"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->c(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->ua:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/FehrestContainerScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/FehrestContainerScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/FehrestContainerScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->Sa()Lcom/farsitel/bazaar/analytics/model/where/FehrestContainerScreen;

    move-result-object v0

    return-object v0
.end method

.method public Ua()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->qa:I

    return v0
.end method

.method public Wa()Lc/c/a/n/l/f;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->ta:Lc/c/a/n/l/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "fehrestTabArgs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic Wa()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->Wa()Lc/c/a/n/l/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Za()Lc/c/a/n/c/c/c/d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->Za()Lc/c/a/n/l/a;

    move-result-object v0

    return-object v0
.end method

.method public Za()Lc/c/a/n/l/a;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/l/a;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/l/a;

    return-object v0
.end method

.method public final _a()Z
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->ra:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->pa:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Lcom/farsitel/bazaar/common/model/Page;)Lc/c/a/d/f/o;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->a(Lcom/farsitel/bazaar/common/model/Page;)Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Lc/c/a/n/c/c/c/e;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/common/model/Page;",
            ">;)",
            "Lc/c/a/n/c/c/c/e;"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer$a;

    invoke-virtual {p0}, Lc/c/a/n/c/c/c/c;->Ya()Z

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v2

    const-string v3, "childFragmentManager"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer$a;-><init>(Ljava/util/List;ZLb/o/a/n;)V

    return-object v0
.end method

.method public a(Lcom/farsitel/bazaar/common/model/Page;)Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;
    .locals 11

    const-string v0, "page"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    sget-object v0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;->za:Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment$a;

    .line 12
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->ta:Lc/c/a/n/l/f;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lc/c/a/n/l/f;->c()Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/Page;->getItems()Ljava/util/List;

    move-result-object v4

    .line 14
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/Page;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/Page;->getTitle()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    xor-int/lit8 v6, v1, 0x1

    const/4 v7, 0x0

    .line 16
    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/Page;->getReferrer()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v8, p1

    const/16 v9, 0x10

    const/4 v10, 0x0

    .line 17
    new-instance p1, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;ZZLjava/lang/String;ILh/f/b/f;)V

    .line 18
    invoke-virtual {v0, p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment$a;->a(Lcom/farsitel/bazaar/ui/fehrest/FehrestParams;)Lcom/farsitel/bazaar/ui/fehrest/FehrestFragment;

    move-result-object p1

    return-object p1

    :cond_3
    const-string p1, "fehrestTabArgs"

    .line 19
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/c/c/c;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->ab()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->_a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    sget p1, Lc/c/a/e;->toolbarBack:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/RTLImageView;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_1

    .line 7
    :cond_1
    sget p1, Lc/c/a/e;->toolbarBack:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/RTLImageView;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 8
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->ab()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->c(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lc/c/a/n/c/c/c/c;->Xa()Lc/c/a/n/c/c/c/d;

    move-result-object p1

    check-cast p1, Lc/c/a/n/l/a;

    invoke-virtual {p1}, Lc/c/a/n/c/c/c/d;->e()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object p2

    new-instance v0, Lc/c/a/n/l/d;

    invoke-direct {v0, p0}, Lc/c/a/n/l/d;-><init>(Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 10
    sget p1, Lc/c/a/e;->toolbarBack:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/RTLImageView;

    if-eqz p1, :cond_3

    new-instance p2, Lc/c/a/n/l/e;

    invoke-direct {p2, p0}, Lc/c/a/n/l/e;-><init>(Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method public final ab()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->sa:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->pa:[Lh/i/i;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/l/f;->a:Lc/c/a/n/l/f$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/l/f$a;->a(Landroid/os/Bundle;)Lc/c/a/n/l/f;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->ta:Lc/c/a/n/l/f;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    .line 3
    sget v0, Lc/c/a/e;->toolbarTitle:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->ua:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->ua:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->ua:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->ua:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public l(Z)V
    .locals 0

    if-eqz p1, :cond_1

    .line 1
    sget p1, Lc/c/a/e;->appBarLayout:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lc/c/a/n/c/c/c/c;->Va()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 3
    sget p1, Lc/c/a/e;->tabBarCard:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lc/c/a/n/c/c/c/c;->Va()Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 5
    sget p1, Lc/c/a/e;->tabBarCard:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/CardView;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 6
    :cond_2
    sget p1, Lc/c/a/e;->appBarLayout:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz p1, :cond_3

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/c/c/c;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/fehrest/FehrestFragmentContainer;->La()V

    return-void
.end method
