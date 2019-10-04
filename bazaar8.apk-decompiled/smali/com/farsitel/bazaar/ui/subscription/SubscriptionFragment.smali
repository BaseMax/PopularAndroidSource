.class public final Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;
.super Lc/c/a/n/c/d/k;
.source "SubscriptionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/k<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lcom/farsitel/bazaar/data/entity/None;",
        "Lc/c/a/n/z/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic ya:[Lh/i/i;


# instance fields
.field public final Aa:Lh/c;

.field public Ba:I

.field public Ca:Ljava/util/HashMap;

.field public za:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "titleName"

    const-string v4, "getTitleName()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->ya:[Lh/i/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/k;-><init>()V

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment$titleName$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment$titleName$2;-><init>(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->Aa:Lh/c;

    const v0, 0x7f0d012d

    .line 3
    iput v0, p0, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->Ba:I

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;)Lc/c/a/d/d/c;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Qa()Lc/c/a/d/d/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;Landroid/view/View;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/n/c/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;)Lc/c/a/n/z/i;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p0

    check-cast p0, Lc/c/a/n/z/i;

    return-object p0
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->Ca:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/SubscriptionScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/SubscriptionScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/SubscriptionScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/SubscriptionScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->Ua()Lc/c/a/n/z/a;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/z/a;
    .locals 2

    .line 2
    new-instance v0, Lc/c/a/n/z/a;

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->tb()Lc/c/a/n/z/g;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/c/a/n/z/a;-><init>(Lc/c/a/n/z/b;)V

    return-object v0
.end method

.method public Wa()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->Ba:I

    return v0
.end method

.method public Za()Lcom/farsitel/bazaar/data/entity/None;
    .locals 1

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/data/entity/None;->INSTANCE:Lcom/farsitel/bazaar/data/entity/None;

    return-object v0
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->Za()Lcom/farsitel/bazaar/data/entity/None;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V
    .locals 3

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/d;->c(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0112

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "popupView"

    .line 7
    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lc/c/a/i/f;->a(Landroid/view/View;Landroid/view/View;)Landroid/widget/PopupWindow;

    move-result-object p1

    const v1, 0x7f0a00e9

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lc/c/a/n/z/f;

    invoke-direct {v1, p0, p2, p1}, Lc/c/a/n/z/f;-><init>(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;Landroid/widget/PopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V
    .locals 7

    .line 9
    sget-object v0, Lc/c/a/d/f/a/a/a;->sa:Lc/c/a/d/f/a/a/a$a;

    const/4 v1, 0x2

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->getEndDate()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const v2, 0x7f1001e0

    invoke-virtual {p0, v2, v1}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "getString(R.string.subs_\u2026subscriptionItem.endDate)"

    invoke-static {v2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f100238

    .line 11
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v3

    const v1, 0x7f10004c

    .line 12
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 13
    invoke-static/range {v0 .. v6}, Lc/c/a/d/f/a/a/a$a;->a(Lc/c/a/d/f/a/a/a$a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lc/c/a/d/f/a/a/a;

    move-result-object v0

    .line 14
    new-instance v1, Lc/c/a/n/z/e;

    invoke-direct {v1, p0, p1}, Lc/c/a/n/z/e;-><init>(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;)V

    invoke-virtual {v0, v1}, Lc/c/a/d/f/l;->a(Lc/c/a/d/f/r;)V

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ia()Lb/o/a/n;

    move-result-object p1

    const-string v1, "requireFragmentManager()"

    invoke-static {p1, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 8

    .line 2
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    new-instance v7, Lc/c/a/o/a/d;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lc/c/a/o/a/d;-><init>(Landroid/content/Context;IIIILh/f/b/f;)V

    invoke-virtual {p1, v7}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$h;)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->Ca:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->Ca:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->Ca:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->Ca:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->za:Z

    return v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->jb()Lc/c/a/n/z/i;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/z/i;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/z/i;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/z/i;

    .line 5
    invoke-virtual {v0}, Lc/c/a/n/z/i;->k()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/z/c;

    invoke-direct {v3, p0}, Lc/c/a/n/z/c;-><init>(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 6
    invoke-virtual {v0}, Lc/c/a/n/z/i;->j()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/z/d;

    invoke-direct {v3, p0}, Lc/c/a/n/z/d;-><init>(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/k;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->La()V

    return-void
.end method

.method public qb()Lc/c/a/n/c/d/l;
    .locals 5

    .line 1
    new-instance v0, Lc/c/a/n/c/d/l;

    .line 2
    new-instance v1, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment$emptyViewData$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment$emptyViewData$1;-><init>(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;)V

    const v2, 0x7f100203

    const v3, 0x7f08010e

    const v4, 0x7f1001fa

    .line 3
    invoke-direct {v0, v2, v3, v4, v1}, Lc/c/a/n/c/d/l;-><init>(IIILh/f/a/a;)V

    return-object v0
.end method

.method public rb()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->Aa:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;->ya:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final tb()Lc/c/a/n/z/g;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/z/g;

    invoke-direct {v0, p0}, Lc/c/a/n/z/g;-><init>(Lcom/farsitel/bazaar/ui/subscription/SubscriptionFragment;)V

    return-object v0
.end method
