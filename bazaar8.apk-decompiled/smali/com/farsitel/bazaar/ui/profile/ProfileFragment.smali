.class public final Lcom/farsitel/bazaar/ui/profile/ProfileFragment;
.super Lc/c/a/n/c/d/f;
.source "ProfileFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/n/c/d/f<",
        "Lcom/farsitel/bazaar/ui/profile/ProfileRowItem;",
        "Lcom/farsitel/bazaar/data/entity/None;",
        "Lc/c/a/n/t/h;",
        ">;"
    }
.end annotation


# instance fields
.field public Aa:Ljava/util/HashMap;

.field public wa:I

.field public xa:Z

.field public final ya:Lc/c/a/d/f/a/b/a;

.field public final za:Lc/c/a/n/t/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/d/f;-><init>()V

    const v0, 0x7f0d0061

    .line 2
    iput v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->wa:I

    .line 3
    new-instance v0, Lc/c/a/d/f/a/b/a;

    invoke-direct {v0}, Lc/c/a/d/f/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->ya:Lc/c/a/d/f/a/b/a;

    .line 4
    new-instance v0, Lc/c/a/n/t/c;

    invoke-direct {v0, p0}, Lc/c/a/n/t/c;-><init>(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->za:Lc/c/a/n/t/c;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;)Lc/c/a/n/t/h;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p0

    check-cast p0, Lc/c/a/n/t/h;

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->b(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->c(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->Aa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/ProfileScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/ProfileScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/ProfileScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/ProfileScreen;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic Ua()Lc/c/a/n/c/d/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->Ua()Lc/c/a/n/t/a;

    move-result-object v0

    return-object v0
.end method

.method public Ua()Lc/c/a/n/t/a;
    .locals 1

    .line 2
    new-instance v0, Lc/c/a/n/t/a;

    invoke-direct {v0}, Lc/c/a/n/t/a;-><init>()V

    return-object v0
.end method

.method public Xa()Landroidx/recyclerview/widget/RecyclerView$h;
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/o/a/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lc/c/a/o/a/a;-><init>(II)V

    return-object v0
.end method

.method public Ya()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->wa:I

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
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->Za()Lcom/farsitel/bazaar/data/entity/None;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 1

    const v0, 0x9c41

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object v0

    check-cast v0, Lc/c/a/n/t/h;

    invoke-virtual {v0}, Lc/c/a/n/t/h;->m()V

    .line 42
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lc/c/a/n/t/d;

    invoke-direct {v0, p0}, Lc/c/a/n/t/d;-><init>(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;)V

    invoke-virtual {p0, v0}, Lc/c/a/n/c/d/f;->a(Lc/c/a/n/c/d/m;)V

    .line 4
    invoke-super {p0, p1, p2}, Lc/c/a/n/c/d/f;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    sget p1, Lc/c/a/e;->backButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/RTLImageView;

    new-instance p2, Lc/c/a/n/t/e;

    invoke-direct {p2, p0}, Lc/c/a/n/t/e;-><init>(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/t/h;

    invoke-virtual {p1}, Lc/c/a/n/t/h;->l()Landroidx/lifecycle/LiveData;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ba()Lb/r/k;

    move-result-object p2

    new-instance v0, Lc/c/a/n/t/f;

    invoke-direct {v0, p0}, Lc/c/a/n/t/f;-><init>(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->a(Lb/r/k;Lb/r/u;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/ui/profile/ProfileRowItem;)V
    .locals 14

    const-string v0, "item"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    instance-of v0, p1, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;

    if-eqz v0, :cond_2

    .line 8
    check-cast p1, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->c()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->cb()Lc/c/a/n/c/d/g;

    move-result-object p1

    check-cast p1, Lc/c/a/n/t/h;

    invoke-virtual {p1}, Lc/c/a/n/t/h;->m()V

    goto/16 :goto_0

    .line 11
    :cond_1
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/IncreaseCreditButtonClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/farsitel/bazaar/analytics/model/what/IncreaseCreditButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 12
    sget-object p1, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->w:Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;

    invoke-virtual {p1, p0}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;->a(Landroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 13
    :cond_2
    instance-of v0, p1, Lcom/farsitel/bazaar/ui/profile/ProfileItem;

    if-eqz v0, :cond_8

    .line 14
    check-cast p1, Lcom/farsitel/bazaar/ui/profile/ProfileItem;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/ui/profile/ProfileItem;->a()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/4 v0, 0x7

    if-eq p1, v0, :cond_4

    const/16 v0, 0x8

    if-eq p1, v0, :cond_3

    goto/16 :goto_0

    .line 15
    :cond_3
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/GiftCardsItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/farsitel/bazaar/analytics/model/what/GiftCardsItemClick;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 16
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    sget-object v0, Lc/c/a/n/t/g;->a:Lc/c/a/n/t/g$a;

    invoke-virtual {v0}, Lc/c/a/n/t/g$a;->b()Lb/w/p;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    goto/16 :goto_0

    .line 17
    :cond_4
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/TransactionsItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/farsitel/bazaar/analytics/model/what/TransactionsItemClick;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 18
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    sget-object v0, Lc/c/a/n/t/g;->a:Lc/c/a/n/t/g$a;

    invoke-virtual {v0}, Lc/c/a/n/t/g$a;->c()Lb/w/p;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    goto :goto_0

    .line 19
    :cond_5
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/LogoutButtonClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/farsitel/bazaar/analytics/model/what/LogoutButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 20
    sget-object v7, Lc/c/a/d/f/a/a/a;->sa:Lc/c/a/d/f/a/a/a$a;

    const/4 v8, 0x0

    const p1, 0x7f100110

    .line 21
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v9

    const-string p1, "getString(R.string.logout_confirm)"

    invoke-static {v9, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const p1, 0x7f100238

    .line 22
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v10

    const p1, 0x7f10012c

    .line 23
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 24
    invoke-static/range {v7 .. v13}, Lc/c/a/d/f/a/a/a$a;->a(Lc/c/a/d/f/a/a/a$a;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lc/c/a/d/f/a/a/a;

    move-result-object p1

    .line 25
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->za:Lc/c/a/n/t/c;

    invoke-virtual {p1, v0}, Lc/c/a/d/f/l;->a(Lc/c/a/d/f/r;)V

    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ia()Lb/o/a/n;

    move-result-object v0

    const-string v1, "requireFragmentManager()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/d/f/l;->a(Lb/o/a/n;)V

    goto :goto_0

    .line 27
    :cond_6
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Not Implemented User Change Phone Number"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 28
    :cond_7
    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/NickNameItemClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/farsitel/bazaar/analytics/model/what/NickNameItemClick;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 29
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    sget-object v0, Lc/c/a/n/t/g;->a:Lc/c/a/n/t/g$a;

    invoke-virtual {v0}, Lc/c/a/n/t/g$a;->a()Lb/w/p;

    move-result-object v0

    invoke-static {p1, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/Long;)V
    .locals 9

    .line 30
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    instance-of v1, v0, Lc/c/a/n/c/d/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lc/c/a/n/c/d/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_2

    check-cast v4, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 32
    instance-of v6, v4, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;

    if-eqz v6, :cond_1

    .line 33
    check-cast v4, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;

    invoke-virtual {v4, v1}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->b(Z)V

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v6

    const-string v7, "requireContext()"

    invoke-static {v6, v7}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, p1, v1}, Lc/c/a/c/g/b;->a(Landroid/content/Context;Ljava/lang/Long;Z)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f10023b

    .line 35
    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(R.string.your_credit)"

    invoke-static {v7, v8}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v1

    array-length v6, v8

    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang.String.format(this, *args)"

    invoke-static {v6, v7}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->b(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v4, v1}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->a(Z)V

    .line 37
    invoke-virtual {v4, v2}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->a(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$a;->c(I)V

    :cond_1
    move v3, v5

    goto :goto_0

    .line 39
    :cond_2
    invoke-static {}, Lh/a/l;->b()V

    throw v2

    :cond_3
    return-void

    .line 40
    :cond_4
    invoke-static {}, Lh/f/b/j;->a()V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public final b(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->a(Ljava/lang/Long;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->d(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object p1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->qb()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final c(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->ya:Lc/c/a/d/f/a/b/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ia()Lb/o/a/n;

    move-result-object v0

    const-string v1, "requireFragmentManager()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/d/f/a/b/a;->a(Lb/o/a/n;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->ya:Lc/c/a/d/f/a/b/a;

    invoke-virtual {p1}, Lb/o/a/d;->La()V

    .line 6
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/w/j;->i()Z

    .line 7
    sget-object p1, Lcom/farsitel/bazaar/app/BazaarApp;->i:Lcom/farsitel/bazaar/app/BazaarApp$a;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/app/BazaarApp$a;->a()Lcom/farsitel/bazaar/app/BazaarApp;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/app/BazaarApp;->a(Z)V

    goto :goto_0

    .line 8
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->b()Ljava/lang/Throwable;

    move-result-object p1

    const-string v2, "Logout finished with error"

    invoke-direct {v1, v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    .line 10
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->ya:Lc/c/a/d/f/a/b/a;

    invoke-virtual {p1}, Lb/o/a/d;->La()V

    .line 11
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object p1

    invoke-virtual {p1}, Lb/w/j;->i()Z

    goto :goto_0

    .line 12
    :cond_2
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "Illegal state in handle logout"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final d(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    instance-of v1, v0, Lc/c/a/n/c/d/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lc/c/a/n/c/d/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_2

    check-cast v4, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 3
    instance-of v6, v4, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;

    if-eqz v6, :cond_1

    .line 4
    check-cast v4, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;

    invoke-virtual {v4, v1}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->b(Z)V

    const v6, 0x7f10023b

    .line 5
    invoke-virtual {p0, v6}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "getString(R.string.your_credit)"

    invoke-static {v6, v7}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    const-string v9, ""

    aput-object v9, v8, v1

    array-length v9, v8

    invoke-static {v8, v9}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "java.lang.String.format(this, *args)"

    invoke-static {v6, v8}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->b(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4, v7}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->a(Z)V

    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v6

    const-string v7, "requireContext()"

    invoke-static {v6, v7}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$a;->c(I)V

    :cond_1
    move v3, v5

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lh/a/l;->b()V

    throw v2

    :cond_3
    return-void

    .line 10
    :cond_4
    invoke-static {}, Lh/f/b/j;->a()V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->Aa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->Aa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->Aa:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->Aa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public hb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->xa:Z

    return v0
.end method

.method public bridge synthetic jb()Lc/c/a/n/c/d/g;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->jb()Lc/c/a/n/t/h;

    move-result-object v0

    return-object v0
.end method

.method public jb()Lc/c/a/n/t/h;
    .locals 3

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object v0

    .line 3
    invoke-static {p0, v0}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object v0

    const-class v1, Lc/c/a/n/t/h;

    invoke-virtual {v0, v1}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object v0

    const-string v1, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast v0, Lc/c/a/n/t/h;

    .line 5
    invoke-virtual {v0}, Lc/c/a/n/t/h;->k()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/farsitel/bazaar/ui/profile/ProfileFragment$makeViewModel$1$1;

    invoke-direct {v2, p0}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment$makeViewModel$1$1;-><init>(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;)V

    invoke-static {p0, v1, v2}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 6
    invoke-virtual {v0}, Lc/c/a/n/t/h;->j()Landroidx/lifecycle/LiveData;

    move-result-object v1

    new-instance v2, Lcom/farsitel/bazaar/ui/profile/ProfileFragment$makeViewModel$1$2;

    invoke-direct {v2, p0}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment$makeViewModel$1$2;-><init>(Lcom/farsitel/bazaar/ui/profile/ProfileFragment;)V

    invoke-static {p0, v1, v2}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/d/f;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/profile/ProfileFragment;->La()V

    return-void
.end method

.method public final qb()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v0

    instance-of v1, v0, Lc/c/a/n/c/d/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lc/c/a/n/c/d/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lc/c/a/n/c/d/a;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    if-ltz v3, :cond_2

    check-cast v4, Lcom/farsitel/bazaar/common/model/RecyclerData;

    .line 3
    instance-of v6, v4, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;

    if-eqz v6, :cond_1

    .line 4
    check-cast v4, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->b(Z)V

    const v7, 0x7f10023b

    .line 5
    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "getString(R.string.your_credit)"

    invoke-static {v7, v8}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v6, v6, [Ljava/lang/Object;

    const-string v8, ""

    aput-object v8, v6, v1

    array-length v8, v6

    invoke-static {v6, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "java.lang.String.format(this, *args)"

    invoke-static {v6, v7}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->b(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4, v1}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->a(Z)V

    .line 7
    invoke-virtual {v4, v2}, Lcom/farsitel/bazaar/ui/profile/ProfileCreditItem;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lc/c/a/n/c/d/f;->_a()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$a;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3}, Landroidx/recyclerview/widget/RecyclerView$a;->c(I)V

    :cond_1
    move v3, v5

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {}, Lh/a/l;->b()V

    throw v2

    :cond_3
    return-void

    .line 10
    :cond_4
    invoke-static {}, Lh/f/b/j;->a()V

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method
