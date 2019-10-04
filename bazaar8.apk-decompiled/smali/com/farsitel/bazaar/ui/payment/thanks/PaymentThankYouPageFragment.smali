.class public final Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;
.super Lc/c/a/n/c/a/c;
.source "PaymentThankYouPageFragment.kt"


# instance fields
.field public fa:Lc/c/a/n/s/a;

.field public ga:Lc/c/a/n/s/g/d;

.field public ha:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/c;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;)Lc/c/a/n/s/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->fa:Lc/c/a/n/s/a;

    return-object p0
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->ha:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Qa()Lcom/farsitel/bazaar/analytics/model/where/PaymentThankYouPageScreen;
    .locals 5

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/PaymentThankYouPageScreen;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->ga:Lc/c/a/n/s/g/d;

    const/4 v2, 0x0

    const-string v3, "args"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/n/s/g/d;->e()Z

    move-result v1

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->ga:Lc/c/a/n/s/g/d;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lc/c/a/n/s/g/d;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/farsitel/bazaar/analytics/model/where/PaymentThankYouPageScreen;-><init>(ZLjava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic Qa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->Qa()Lcom/farsitel/bazaar/analytics/model/where/PaymentThankYouPageScreen;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d006d

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Lc/c/a/n/s/a;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lc/c/a/n/s/a;

    if-eqz v0, :cond_1

    .line 3
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->fa:Lc/c/a/n/s/a;

    .line 4
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->a(Landroid/content/Context;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "this activity must implement FinishPaymentCallbacks"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->ga:Lc/c/a/n/s/g/d;

    const/4 p2, 0x0

    const-string v0, "args"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lc/c/a/n/s/g/d;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->ga:Lc/c/a/n/s/g/d;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lc/c/a/n/s/g/d;->b()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->ga:Lc/c/a/n/s/g/d;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc/c/a/n/s/g/d;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->ga:Lc/c/a/n/s/g/d;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc/c/a/n/s/g/d;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    :cond_1
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    .line 10
    :cond_3
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->ga:Lc/c/a/n/s/g/d;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lc/c/a/n/s/g/d;->a()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    :goto_0
    return-void

    :cond_4
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_5
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 3

    .line 18
    sget v0, Lc/c/a/e;->contentContainer:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "contentContainer"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 19
    sget v0, Lc/c/a/e;->successButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v1, "successButton"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 20
    sget v0, Lc/c/a/e;->failureButtonsGroup:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    const-string v1, "failureButtonsGroup"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 21
    sget v0, Lc/c/a/e;->tryAgainButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lc/c/a/n/s/g/a;

    invoke-direct {v1, p0}, Lc/c/a/n/s/g/a;-><init>(Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    sget v0, Lc/c/a/e;->cancelButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lc/c/a/n/s/g/b;

    invoke-direct {v1, p0}, Lc/c/a/n/s/g/b;-><init>(Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    sget v0, Lc/c/a/e;->statusIconImageView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lc/c/a/d/b/d;->a(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 24
    sget v0, Lc/c/a/e;->messageTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "messageTextView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 12
    sget v0, Lc/c/a/e;->contentContainer:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "contentContainer"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 13
    sget v0, Lc/c/a/e;->successButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v1, "successButton"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 14
    sget v0, Lc/c/a/e;->failureButtonsGroup:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/Group;

    const-string v1, "failureButtonsGroup"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 15
    sget v0, Lc/c/a/e;->statusIconImageView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const v1, 0x7f08016b

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 16
    sget v0, Lc/c/a/e;->messageTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "messageTextView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    sget p1, Lc/c/a/e;->successButton:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    if-eqz p1, :cond_0

    new-instance v0, Lc/c/a/n/s/g/c;

    invoke-direct {v0, p0, p2, p3}, Lc/c/a/n/s/g/c;-><init>(Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/s/g/d;->a:Lc/c/a/n/s/g/d$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/s/g/d$a;->a(Landroid/os/Bundle;)Lc/c/a/n/s/g/d;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->ga:Lc/c/a/n/s/g/d;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->ha:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->ha:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->ha:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->ha:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/a/c;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/thanks/PaymentThankYouPageFragment;->La()V

    return-void
.end method
