.class public final Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;
.super Lc/c/a/n/c/a/b;
.source "GiftCardFragment.kt"


# instance fields
.field public ia:Lc/c/a/n/s/c/d;

.field public ja:Lcom/google/android/material/snackbar/Snackbar;

.field public ka:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/b;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->Xa()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->ka:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/GiftCardScreen;
    .locals 1

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/GiftCardScreen;

    invoke-direct {v0}, Lcom/farsitel/bazaar/analytics/model/where/GiftCardScreen;-><init>()V

    return-object v0
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/GiftCardScreen;

    move-result-object v0

    return-object v0
.end method

.method public final Ua()V
    .locals 5

    .line 1
    new-instance v0, Lc/c/a/n/s/c/a;

    invoke-direct {v0, p0}, Lc/c/a/n/s/c/a;-><init>(Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;)V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->S()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1000e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 4
    new-instance v3, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    sget v1, Lc/c/a/e;->legalNotes:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "legalNotes"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget v4, Lc/c/a/e;->legalNotes:I

    invoke-virtual {p0, v4}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v4, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v3}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 8
    invoke-static {v0}, Lh/a/k;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 9
    invoke-static {v1, v2, v3, v0}, Lc/c/a/i/e;->a(Landroid/widget/TextView;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public final Va()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->submitButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->ja:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->c()V

    :cond_0
    return-void
.end method

.method public final Wa()V
    .locals 2

    .line 1
    sget v0, Lc/c/a/e;->submitButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Qa()Lc/c/a/d/d/c;

    move-result-object v0

    const v1, 0x7f1001e4

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/d/d/c;->a(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    invoke-virtual {v0}, Lb/w/j;->i()Z

    return-void
.end method

.method public final Xa()V
    .locals 6

    .line 1
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/SubmitGiftCardCodeButtonClick;

    invoke-static {}, Lc/c/a/c/d/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/farsitel/bazaar/analytics/model/what/SubmitGiftCardCodeButtonClick;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->ia:Lc/c/a/n/s/c/d;

    if-eqz v0, :cond_0

    sget v1, Lc/c/a/e;->codeEditText:I

    invoke-virtual {p0, v1}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v2, "codeEditText"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/n/s/c/d;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Ya()V
    .locals 3

    .line 1
    sget v0, Lc/c/a/e;->legalNotes:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "legalNotes"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f1000e4

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.gift_card_terms)"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lc/c/a/c/b/i;->a(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->Ua()V

    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d0054

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 5
    sget p1, Lc/c/a/e;->backButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/RTLImageView;

    new-instance p2, Lc/c/a/n/s/c/b;

    invoke-direct {p2, p0}, Lc/c/a/n/s/c/b;-><init>(Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget p1, Lc/c/a/e;->submitButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LoadingButton;

    new-instance p2, Lc/c/a/n/s/c/c;

    invoke-direct {p2, p0}, Lc/c/a/n/s/c/c;-><init>(Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;)V

    invoke-virtual {p1, p2}, Lcom/farsitel/bazaar/widget/LoadingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    sget p1, Lc/c/a/e;->submitButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LoadingButton;

    const-string p2, "submitButton"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/farsitel/bazaar/widget/LoadingButton;->setEnabled(Z)V

    .line 8
    sget p1, Lc/c/a/e;->submitButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lc/c/a/e;->codeEditText:I

    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatEditText;

    const-string v0, "codeEditText"

    invoke-static {p2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment$onViewCreated$3;->a:Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment$onViewCreated$3;

    invoke-static {p1, p2, v0}, Lc/c/a/d/b/c;->a(Landroid/view/View;Landroid/widget/EditText;Lh/f/a/b;)V

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->E()Landroid/content/Context;

    move-result-object p1

    sget p2, Lc/c/a/e;->codeEditText:I

    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatEditText;

    invoke-static {p1, p2}, Lf/a/a/f/f;->a(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/farsitel/bazaar/core/model/Resource<",
            "Lcom/farsitel/bazaar/data/entity/None;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 11
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Success;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Success;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->Wa()V

    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    goto :goto_0

    .line 13
    :cond_1
    sget-object p1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->Va()V

    goto :goto_0

    .line 14
    :cond_2
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 3

    .line 15
    sget v0, Lc/c/a/e;->submitButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setShowLoading(Z)V

    .line 16
    sget v0, Lc/c/a/e;->codeInput:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, "codeInput"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->b(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object p1

    .line 3
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class v0, Lc/c/a/n/s/c/d;

    invoke-virtual {p1, v0}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string v0, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    check-cast p1, Lc/c/a/n/s/c/d;

    .line 5
    invoke-virtual {p1}, Lc/c/a/n/s/c/d;->e()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment$onActivityCreated$1$1;

    invoke-direct {v1, p0}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment$onActivityCreated$1$1;-><init>(Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;)V

    invoke-static {p0, v0, v1}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 6
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->ia:Lc/c/a/n/s/c/d;

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->ka:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->ka:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->ka:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->ka:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/a/b;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->La()V

    return-void
.end method

.method public ta()V
    .locals 0

    .line 1
    invoke-super {p0}, Lc/c/a/n/c/a/b;->ta()V

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/giftcard/GiftCardFragment;->Ya()V

    return-void
.end method

.method public va()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->va()V

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->aa()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, v0}, Lc/c/a/d/b/f;->a(Landroidx/fragment/app/Fragment;Landroid/os/IBinder;)V

    return-void
.end method
