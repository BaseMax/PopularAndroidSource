.class public final Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;
.super Lc/c/a/n/c/d/a/a;
.source "AppDetailFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/a/a<",
        "Lcom/farsitel/bazaar/common/model/RecyclerData;",
        "Lc/c/a/n/b/s;",
        "Lc/c/a/n/b/w;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic Ba:[Lh/i/i;

.field public static final Ca:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$a;


# instance fields
.field public Da:I

.field public Ea:Z

.field public Fa:Lc/c/a/n/b/s;

.field public Ga:Lc/c/a/n/b/B;

.field public Ha:Lcom/google/android/material/button/MaterialButton;

.field public final Ia:Lh/c;

.field public Ja:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lh/i/i;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;

    invoke-static {v2}, Lh/f/b/k;->a(Ljava/lang/Class;)Lh/i/c;

    move-result-object v2

    const-string v3, "shareMessage"

    const-string v4, "getShareMessage()Ljava/lang/String;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lh/i/e;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lh/f/b/k;->a(Lkotlin/jvm/internal/PropertyReference1;)Lh/i/j;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ba:[Lh/i/i;

    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ca:Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/a/a;-><init>()V

    const v0, 0x7f0d004c

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Da:I

    .line 3
    new-instance v0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$shareMessage$2;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$shareMessage$2;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    invoke-static {v0}, Lh/d;->a(Lh/f/a/a;)Lh/c;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ia:Lh/c;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/s;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Fa:Lc/c/a/n/b/s;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "appDetailArgs"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->g(I)V

    return-void
.end method

.method public static synthetic a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/b/w;

    invoke-virtual {p1}, Lc/c/a/n/b/w;->p()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->g(I)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;)V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/n/c/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lcom/google/android/material/button/MaterialButton;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ha:Lcom/google/android/material/button/MaterialButton;

    return-object p0
.end method

.method public static synthetic b(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;IILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/b/w;

    invoke-virtual {p1}, Lc/c/a/n/b/w;->p()I

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->h(I)V

    return-void
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->tb()I

    move-result p0

    return p0
.end method

.method public static final synthetic d(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/B;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ga:Lc/c/a/n/b/B;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "fabScrollListener"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic e(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/d/d/c;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Qa()Lc/c/a/d/d/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic f(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/c/d/a/f;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/a;->rb()Lc/c/a/n/c/d/a/f;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic h(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)Lc/c/a/n/b/w;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p0

    check-cast p0, Lc/c/a/n/b/w;

    return-object p0
.end method

.method public static final synthetic i(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->ub()V

    return-void
.end method

.method public static final synthetic j(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->xb()V

    return-void
.end method

.method public static final synthetic k(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->yb()V

    return-void
.end method

.method public static final synthetic l(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Bb()V

    return-void
.end method

.method public static final synthetic m(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Cb()V

    return-void
.end method


# virtual methods
.method public final Ab()Lc/c/a/n/b/p;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/b/p;

    invoke-direct {v0, p0}, Lc/c/a/n/b/p;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    return-object v0
.end method

.method public final Bb()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/b/w;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->w:Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;

    .line 3
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getName()Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {v1, p0, v2, v0}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final Cb()V
    .locals 4

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;->ta:Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment$a;

    .line 2
    new-instance v1, Lc/c/a/n/b/c/f;

    const v2, 0x7f1001a0

    .line 3
    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Fa:Lc/c/a/n/b/s;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lc/c/a/n/b/s;->a()Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-direct {v1, v2, v3}, Lc/c/a/n/b/c/f;-><init>(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment$a;->a(Lc/c/a/n/b/c/f;)Lcom/farsitel/bazaar/ui/appdetail/report/ReportFragment;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v1

    const-string v2, "reportApp"

    invoke-virtual {v0, v1, v2}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "appDetailArgs"

    .line 8
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Db()Lc/c/a/n/b/r;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/b/r;

    invoke-direct {v0, p0}, Lc/c/a/n/b/r;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    return-object v0
.end method

.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ja:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/AppDetailsScreen;
    .locals 3

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/AppDetailsScreen;

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Fa:Lc/c/a/n/b/s;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/c/a/n/b/s;->a()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/farsitel/bazaar/analytics/model/where/AppDetailsScreen;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0

    :cond_0
    const-string v0, "appDetailArgs"

    .line 5
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/AppDetailsScreen;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/c/d/a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/c/a/n/c/d/a<",
            "Lcom/farsitel/bazaar/common/model/RecyclerData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lc/c/a/n/b/a;

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ab()Lc/c/a/n/b/p;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->zb()Lc/c/a/n/b/o;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Db()Lc/c/a/n/b/r;

    move-result-object v3

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->wb()Lc/c/a/n/b/n;

    move-result-object v4

    .line 6
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->vb()Lc/c/a/n/b/m;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->sb()Lc/c/a/n/b/b;

    move-result-object v6

    move-object v0, v7

    .line 8
    invoke-direct/range {v0 .. v6}, Lc/c/a/n/b/a;-><init>(Lc/c/a/n/b/d/a/e$a;Lc/c/a/n/b/d/a/a$a;Lc/c/a/n/c/d/o$a;Lc/c/a/n/b/d/a;Lc/c/a/n/b/d/i;Lc/c/a/n/b/d/f;)V

    return-object v7
.end method

.method public Xa()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Da:I

    return v0
.end method

.method public Za()Lc/c/a/n/b/s;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Fa:Lc/c/a/n/b/s;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "appDetailArgs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public bridge synthetic Za()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Za()Lc/c/a/n/b/s;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    .line 8
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    .line 9
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/b/w;

    invoke-virtual {v0, p1, p2, p3}, Lc/c/a/n/b/w;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lc/c/a/n/b/q;

    invoke-direct {v0, p0}, Lc/c/a/n/b/q;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->a(Lc/c/a/n/c/d/m;)V

    .line 7
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/a/a;->a(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/RecyclerData;)V
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppDescriptionItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppDescriptionItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppDescriptionItem;->getAppMoreDescriptionItem()Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;)V

    goto/16 :goto_0

    .line 11
    :cond_0
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;)V

    goto/16 :goto_0

    .line 12
    :cond_1
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;)V

    goto/16 :goto_0

    .line 13
    :cond_2
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/AppMyRateItem;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;IILjava/lang/Object;)V

    goto :goto_0

    .line 14
    :cond_3
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;)V

    goto :goto_0

    .line 15
    :cond_4
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/ArticleItem;->getUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_5
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/reviews/ReviewItem;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/b/w;

    invoke-static {p1, v2, v1, v2}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getReviewActionItem()Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->a(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;)V

    goto :goto_0

    .line 17
    :cond_6
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/ReportItem;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/b/w;

    invoke-virtual {p1}, Lc/c/a/n/b/w;->w()V

    goto :goto_0

    .line 18
    :cond_7
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoiceItem;

    if-eqz v0, :cond_8

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoiceItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoiceItem;->getSlug()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoiceItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/EditorChoiceItem;->getReferrer()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_8
    instance-of v0, p1, Lcom/farsitel/bazaar/common/model/appdetail/ChangeLogItem;

    if-eqz v0, :cond_9

    check-cast p1, Lcom/farsitel/bazaar/common/model/appdetail/ChangeLogItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/common/model/appdetail/ChangeLogItem;->getChangeLog()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->c(Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;)V
    .locals 2

    .line 20
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 21
    sget-object v1, Lc/c/a/n/b/t;->a:Lc/c/a/n/b/t$g;

    invoke-virtual {v1, p1}, Lc/c/a/n/b/t$g;->a(Lcom/farsitel/bazaar/common/model/appdetail/AppMoreDescriptionItem;)Lb/w/p;

    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;)V
    .locals 3

    .line 30
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 31
    sget-object v1, Lc/c/a/n/b/t;->a:Lc/c/a/n/b/t$g;

    const v2, 0x7f100030

    .line 32
    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v2

    .line 33
    invoke-virtual {v1, p1, v2}, Lc/c/a/n/b/t$g;->a(Lcom/farsitel/bazaar/common/model/appdetail/MoreArticleItem;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)Lb/w/p;

    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;)V
    .locals 5

    .line 23
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 24
    sget-object v1, Lc/c/a/n/b/t;->a:Lc/c/a/n/b/t$g;

    const v2, 0x7f1001a8

    .line 25
    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v2

    .line 26
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v3

    check-cast v3, Lc/c/a/n/b/w;

    invoke-virtual {v3}, Lc/c/a/n/b/w;->u()Z

    move-result v3

    .line 27
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v4

    check-cast v4, Lc/c/a/n/b/w;

    invoke-virtual {v4}, Lc/c/a/n/b/w;->p()I

    move-result v4

    .line 28
    invoke-virtual {v1, p1, v2, v3, v4}, Lc/c/a/n/b/t$g;->a(Lcom/farsitel/bazaar/common/model/appdetail/ReviewActionItem;Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;ZI)Lb/w/p;

    move-result-object p1

    .line 29
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 3
    sget-object v1, Lc/c/a/n/b/t;->a:Lc/c/a/n/b/t$g;

    invoke-virtual {v1, p1, p2, p3}, Lc/c/a/n/b/t$g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lb/w/p;

    move-result-object p1

    .line 4
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 8

    .line 2
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Lc/c/a/n/b/s;->a:Lc/c/a/n/b/s$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v2, "arguments!!"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/b/s$a;->a(Landroid/os/Bundle;)Lc/c/a/n/b/s;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Fa:Lc/c/a/n/b/s;

    .line 4
    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/AppDetailVisit;

    iget-object p1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Fa:Lc/c/a/n/b/s;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/c/a/n/b/s;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/farsitel/bazaar/analytics/model/what/AppDetailVisit;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_0
    const-string p1, "appDetailArgs"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1
.end method

.method public c(Landroid/view/View;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-super {p0, p1}, Lc/c/a/n/c/d/a/a;->c(Landroid/view/View;)V

    const v0, 0x7f0a01e3

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ha:Lcom/google/android/material/button/MaterialButton;

    const v0, 0x7f0a0395

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lc/c/a/n/c/d/a/a;->rb()Lc/c/a/n/c/d/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/n/c/d/a/f;->a()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    new-instance v1, Lc/c/a/n/b/B;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ha:Lcom/google/android/material/button/MaterialButton;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-direct {v1, v2, v3, v0}, Lc/c/a/n/b/B;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ga:Lc/c/a/n/b/B;

    .line 11
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ga:Lc/c/a/n/b/B;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->a(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 12
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ha:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ha:Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_2

    new-instance v1, Lc/c/a/n/b/c;

    invoke-direct {v1, p0}, Lc/c/a/n/b/c;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    :cond_2
    new-instance v0, Lc/c/a/n/b/d;

    invoke-direct {v0, p0}, Lc/c/a/n/b/d;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    const-string p1, "fabScrollListener"

    .line 15
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v4

    .line 16
    :cond_4
    invoke-static {}, Lh/f/b/j;->a()V

    throw v4
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    .line 17
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 18
    sget-object v1, Lc/c/a/n/b/t;->a:Lc/c/a/n/b/t$g;

    const v2, 0x7f10004f

    .line 19
    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v2

    .line 20
    invoke-virtual {v1, v2, p1}, Lc/c/a/n/b/t$g;->a(Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;Ljava/lang/String;)Lb/w/p;

    move-result-object p1

    .line 21
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lc/c/a/i/b;->a(Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ja:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ja:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ja:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ja:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/b/w;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getIconURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "getString(toolbarTitleResourceId)"

    invoke-static {p1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, v0, p1}, Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 4
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v1
.end method

.method public final g(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/b/w;

    invoke-virtual {v0, p1}, Lc/c/a/n/b/w;->c(I)V

    return-void
.end method

.method public final h(I)V
    .locals 6

    .line 2
    sget-object v0, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;->Ha:Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment$a;

    .line 3
    new-instance v1, Lc/c/a/n/b/b/a;

    .line 4
    iget-object v2, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Fa:Lc/c/a/n/b/s;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lc/c/a/n/b/s;->a()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v4

    check-cast v4, Lc/c/a/n/b/w;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5, v3}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getVersionCode()J

    move-result-wide v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f10023a

    .line 6
    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->f(I)Lcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;

    move-result-object v4

    .line 7
    invoke-direct {v1, v2, v3, p1, v4}, Lc/c/a/n/b/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/farsitel/bazaar/ui/appdetail/ToolbarInfoModel;)V

    .line 8
    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment$a;->a(Lc/c/a/n/b/b/a;)Lcom/farsitel/bazaar/ui/appdetail/comment/PostAppCommentFragment;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->D()Lb/o/a/n;

    move-result-object v0

    const-string v1, "postFragment"

    invoke-virtual {p1, v0, v1}, Lb/o/a/d;->a(Lb/o/a/n;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "appDetailArgs"

    .line 10
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ea:Z

    return v0
.end method

.method public jb()Lc/c/a/n/b/w;
    .locals 4

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/b/w;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/b/w;

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Za()Lc/c/a/n/b/s;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/n/b/s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/n/b/w;->f(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lc/c/a/n/c/d/g;->g()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;

    invoke-direct {v2, v0, p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment$makeViewModel$$inlined$createViewModel$lambda$1;-><init>(Lc/c/a/n/b/w;Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    invoke-static {p0, v1, v2}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 7
    invoke-virtual {v0}, Lc/c/a/n/b/w;->x()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/b/f;

    invoke-direct {v3, v0, p0}, Lc/c/a/n/b/f;-><init>(Lc/c/a/n/b/w;Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 8
    invoke-virtual {v0}, Lc/c/a/n/b/w;->s()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/b/g;

    invoke-direct {v3, v0, p0}, Lc/c/a/n/b/g;-><init>(Lc/c/a/n/b/w;Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 9
    invoke-virtual {v0}, Lc/c/a/n/b/w;->m()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/b/h;

    invoke-direct {v3, p0}, Lc/c/a/n/b/h;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 10
    invoke-virtual {v0}, Lc/c/a/n/b/w;->k()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/b/i;

    invoke-direct {v3, v0, p0}, Lc/c/a/n/b/i;-><init>(Lc/c/a/n/b/w;Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 11
    invoke-virtual {v0}, Lc/c/a/n/b/w;->o()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/b/j;

    invoke-direct {v3, p0}, Lc/c/a/n/b/j;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 12
    invoke-virtual {v0}, Lc/c/a/n/b/w;->r()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/b/k;

    invoke-direct {v3, p0}, Lc/c/a/n/b/k;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    .line 13
    invoke-virtual {v0}, Lc/c/a/n/b/w;->n()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v2

    new-instance v3, Lc/c/a/n/b/l;

    invoke-direct {v3, p0}, Lc/c/a/n/b/l;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-object v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->jb()Lc/c/a/n/b/w;

    move-result-object v0

    return-object v0
.end method

.method public n(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "bundle"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lc/c/a/n/c/d/a/a;->n(Landroid/os/Bundle;)V

    const-string v0, "totalScroll"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ga:Lc/c/a/n/b/B;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lc/c/a/n/c/d/a/g;->a(I)V

    return-void

    :cond_0
    const-string p1, "fabScrollListener"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public qa()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ha:Lcom/google/android/material/button/MaterialButton;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    :cond_0
    iput-object v1, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ha:Lcom/google/android/material/button/MaterialButton;

    .line 3
    invoke-virtual {p0, v1}, Lc/c/a/n/c/d/f;->a(Lc/c/a/n/c/d/m;)V

    .line 4
    invoke-super {p0}, Lc/c/a/n/c/d/a/a;->qa()V

    .line 5
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->La()V

    return-void
.end method

.method public qb()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ia:Lh/c;

    sget-object v1, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->Ba:[Lh/i/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lh/c;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final sb()Lc/c/a/n/b/b;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/b/b;

    invoke-direct {v0, p0}, Lc/c/a/n/b/b;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    return-object v0
.end method

.method public final tb()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ub()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/b/w;

    invoke-virtual {v0}, Lc/c/a/n/b/w;->l()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object v1

    new-instance v2, Lc/c/a/n/b/e;

    invoke-direct {v2, p0}, Lc/c/a/n/b/e;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-void
.end method

.method public final vb()Lc/c/a/n/b/m;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/b/m;

    invoke-direct {v0, p0}, Lc/c/a/n/b/m;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    return-object v0
.end method

.method public final wb()Lc/c/a/n/b/n;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/b/n;

    invoke-direct {v0, p0}, Lc/c/a/n/b/n;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    return-object v0
.end method

.method public final xb()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/b/w;

    invoke-virtual {v0}, Lc/c/a/n/b/w;->j()V

    return-void
.end method

.method public final yb()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/b/w;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lc/c/a/n/b/w;->a(Lc/c/a/n/b/w;Ljava/util/List;ILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;->getAppState()Lcom/farsitel/bazaar/common/model/ui/EntityState;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/common/model/ui/EntityState;->NONE:Lcom/farsitel/bazaar/common/model/ui/EntityState;

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->l(I)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;->wb()Lc/c/a/n/b/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lc/c/a/n/b/n;->c(Lcom/farsitel/bazaar/common/model/appdetail/AppInfoItem;)V

    :cond_1
    return-void
.end method

.method public final zb()Lc/c/a/n/b/o;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/b/o;

    invoke-direct {v0, p0}, Lc/c/a/n/b/o;-><init>(Lcom/farsitel/bazaar/ui/appdetail/AppDetailFragment;)V

    return-object v0
.end method
