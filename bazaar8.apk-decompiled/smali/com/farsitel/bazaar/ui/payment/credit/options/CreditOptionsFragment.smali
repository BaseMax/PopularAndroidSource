.class public final Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;
.super Lc/c/a/n/c/a/b;
.source "CreditOptionsFragment.kt"


# instance fields
.field public ia:Lc/c/a/n/s/a/a/g;

.field public ja:Lc/c/a/n/s/a/a/e;

.field public ka:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;)Lcom/farsitel/bazaar/data/feature/payment/CreditOption;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->Va()Lcom/farsitel/bazaar/data/feature/payment/CreditOption;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method

.method public static final synthetic b(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;)Lc/c/a/n/s/a/a/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ia:Lc/c/a/n/s/a/a/g;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "viewModel"

    invoke-static {p0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic c(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->Xa()V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ka:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/CreditOptionsScreen;
    .locals 6

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/CreditOptionsScreen;

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ja:Lc/c/a/n/s/a/a/e;

    const/4 v2, 0x0

    const-string v3, "args"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lc/c/a/n/s/a/a/e;->b()J

    move-result-wide v4

    .line 4
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ja:Lc/c/a/n/s/a/a/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/n/s/a/a/e;->a()Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-direct {v0, v4, v5, v1}, Lcom/farsitel/bazaar/analytics/model/where/CreditOptionsScreen;-><init>(JZ)V

    return-object v0

    .line 6
    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_2
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/CreditOptionsScreen;

    move-result-object v0

    return-object v0
.end method

.method public final Ua()V
    .locals 0

    return-void
.end method

.method public final Va()Lcom/farsitel/bazaar/data/feature/payment/CreditOption;
    .locals 4

    .line 1
    sget v0, Lc/c/a/e;->creditOptionsGroup:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget v2, Lc/c/a/e;->creditOptionsGroup:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    const-string v3, "creditOptionsGroup"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    check-cast v1, Lcom/farsitel/bazaar/data/feature/payment/CreditOption;

    return-object v1

    :cond_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type com.farsitel.bazaar.data.feature.payment.CreditOption"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final Wa()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->backButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/RTLImageView;

    new-instance v1, Lc/c/a/n/s/a/a/a;

    invoke-direct {v1, p0}, Lc/c/a/n/s/a/a/a;-><init>(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final Xa()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ia:Lc/c/a/n/s/a/a/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ja:Lc/c/a/n/s/a/a/e;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc/c/a/n/s/a/a/e;->b()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/c/a/n/s/a/a/g;->b(J)V

    return-void

    :cond_0
    const-string v0, "args"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final Ya()V
    .locals 1

    .line 1
    sget v0, Lc/c/a/e;->contentContainer:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 2
    :cond_0
    sget v0, Lc/c/a/e;->loadingContainer:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 3
    :cond_1
    sget v0, Lc/c/a/e;->errorContainer:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d004e

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/DialogVisit;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/farsitel/bazaar/analytics/model/what/DialogVisit;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 6
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object p1

    .line 7
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class p2, Lc/c/a/n/s/a/a/g;

    invoke-virtual {p1, p2}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string p2, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    check-cast p1, Lc/c/a/n/s/a/a/g;

    .line 9
    invoke-virtual {p1}, Lc/c/a/n/s/a/a/g;->e()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment$onViewCreated$1$1;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment$onViewCreated$1$1;-><init>(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;)V

    invoke-static {p0, p2, v0}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 10
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ia:Lc/c/a/n/s/a/a/g;

    .line 11
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->Xa()V

    .line 12
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->Wa()V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "+",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 34
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 35
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->Ya()V

    goto :goto_0

    .line 36
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$CreditOptionReceived;->a:Lcom/farsitel/bazaar/core/model/PaymentState$CreditOptionReceived;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/data/feature/payment/CreditOptionList;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/CreditOptionList;->a()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.farsitel.bazaar.data.feature.payment.CreditOptionList"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_2
    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$BuyCreditMethodsReceived;->a:Lcom/farsitel/bazaar/core/model/PaymentState$BuyCreditMethodsReceived;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->a(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.farsitel.bazaar.data.feature.payment.PaymentGateway"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 38
    :cond_4
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 8

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v3, Lcom/farsitel/bazaar/analytics/model/what/ErrorHappenedEvent;

    invoke-direct {v3, v0}, Lcom/farsitel/bazaar/analytics/model/what/ErrorHappenedEvent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 54
    sget v2, Lc/c/a/e;->contentContainer:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v2, :cond_0

    invoke-static {v2}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 55
    :cond_0
    sget v2, Lc/c/a/e;->loadingContainer:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;

    if-eqz v2, :cond_1

    invoke-static {v2}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 56
    :cond_1
    sget v2, Lc/c/a/e;->errorContainer:I

    invoke-virtual {p0, v2}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 57
    invoke-static {v2}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    const v3, 0x7f0a01b6

    .line 58
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, p1}, Lc/c/a/d/b/d;->a(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_2
    const v1, 0x7f0a0378

    .line 59
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    const v1, 0x7f0a02ca

    .line 60
    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v1, :cond_4

    new-instance v2, Lc/c/a/n/s/a/a/d;

    invoke-direct {v2, p0, p1, v0}, Lc/c/a/n/s/a/a/d;-><init>(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;Lcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;)V
    .locals 14

    .line 39
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 40
    sget-object v1, Lc/c/a/n/s/a/a/f;->a:Lc/c/a/n/s/a/a/f$a;

    .line 41
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "requireContext().packageName"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->Va()Lcom/farsitel/bazaar/data/feature/payment/CreditOption;

    move-result-object v3

    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/feature/payment/CreditOption;->a()J

    move-result-wide v5

    .line 43
    sget-object v3, Lcom/farsitel/bazaar/ui/payment/PaymentType;->CREDIT:Lcom/farsitel/bazaar/ui/payment/PaymentType;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/ui/payment/PaymentType;->f()Ljava/lang/String;

    move-result-object v7

    .line 44
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->h()Ljava/lang/String;

    move-result-object v8

    .line 45
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->b()Ljava/lang/String;

    move-result-object v9

    .line 46
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ja:Lc/c/a/n/s/a/a/e;

    const/4 v3, 0x0

    const-string v4, "args"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lc/c/a/n/s/a/a/e;->a()Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v10, 0x0

    .line 47
    :goto_0
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ja:Lc/c/a/n/s/a/a/e;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lc/c/a/n/s/a/a/e;->a()Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    move-result-object v11

    const/4 v12, 0x4

    const/4 v13, 0x0

    const-string v3, "bazaar_credit"

    const/4 v4, 0x0

    .line 48
    invoke-static/range {v1 .. v13}, Lc/c/a/n/s/a/a/f$a;->a(Lc/c/a/n/s/a/a/f$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 49
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void

    .line 50
    :cond_1
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3

    .line 51
    :cond_2
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3
.end method

.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/farsitel/bazaar/data/feature/payment/CreditOption;",
            ">;)V"
        }
    .end annotation

    .line 13
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/LoadCreditOptionsEvent;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/farsitel/bazaar/analytics/model/what/LoadCreditOptionsEvent;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 14
    sget v0, Lc/c/a/e;->contentContainer:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 15
    :cond_0
    sget v0, Lc/c/a/e;->loadingContainer:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/core/widget/loading/SpinKitView;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 16
    :cond_1
    sget v0, Lc/c/a/e;->errorContainer:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 17
    :cond_2
    sget v0, Lc/c/a/e;->increaseCreditButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setEnabled(Z)V

    .line 19
    new-instance v2, Lc/c/a/n/s/a/a/b;

    invoke-direct {v2, p0}, Lc/c/a/n/s/a/a/b;-><init>(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;)V

    invoke-virtual {v0, v2}, Lcom/farsitel/bazaar/widget/LoadingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    sget v0, Lc/c/a/e;->creditOptionsGroup:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 21
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 22
    new-instance v2, Lc/c/a/n/s/a/a/c;

    invoke-direct {v2, p0}, Lc/c/a/n/s/a/a/c;-><init>(Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/farsitel/bazaar/data/feature/payment/CreditOption;

    .line 25
    invoke-virtual {v3}, Lcom/farsitel/bazaar/data/feature/payment/CreditOption;->a()J

    move-result-wide v3

    iget-object v5, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ja:Lc/c/a/n/s/a/a/e;

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lc/c/a/n/s/a/a/e;->b()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    const-string p1, "args"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 26
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/CreditOption;

    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->M()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d00b7

    sget v4, Lc/c/a/e;->creditOptionsGroup:I

    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioGroup;

    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v2, Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 28
    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/feature/payment/CreditOption;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 30
    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/feature/payment/CreditOption;->a()J

    move-result-wide v3

    long-to-int v0, v3

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setId(I)V

    .line 31
    sget v0, Lc/c/a/e;->creditOptionsGroup:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 32
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.appcompat.widget.AppCompatRadioButton"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_8
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->Ua()V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 3
    sget-object p1, Lc/c/a/n/s/a/a/e;->a:Lc/c/a/n/s/a/a/e$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/s/a/a/e$a;->a(Landroid/os/Bundle;)Lc/c/a/n/s/a/a/e;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ja:Lc/c/a/n/s/a/a/e;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ka:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ka:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ka:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->ka:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/a/b;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/credit/options/CreditOptionsFragment;->La()V

    return-void
.end method
