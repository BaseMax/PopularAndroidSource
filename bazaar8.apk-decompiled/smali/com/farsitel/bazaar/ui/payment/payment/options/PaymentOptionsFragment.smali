.class public final Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;
.super Lc/c/a/n/c/a/b;
.source "PaymentOptionsFragment.kt"

# interfaces
.implements Lc/c/a/n/s/e/a/c;


# instance fields
.field public ia:Lc/c/a/n/s/e/a/h;

.field public ja:Lc/c/a/n/s/e/a/a;

.field public ka:J

.field public la:Ljava/lang/String;

.field public ma:Ljava/lang/String;

.field public na:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

.field public oa:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/b;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ka:J

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->la:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ma:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->Wa()V

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->oa:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/PaymentOptionsScreen;
    .locals 6

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/PaymentOptionsScreen;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->na:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    const/4 v2, 0x0

    const-string v3, "args"

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->na:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;->d()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->na:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/farsitel/bazaar/analytics/model/where/PaymentOptionsScreen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/PaymentOptionsScreen;

    move-result-object v0

    return-object v0
.end method

.method public final Ua()V
    .locals 1

    .line 1
    sget v0, Lc/c/a/e;->contentContainer:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 2
    :cond_0
    sget v0, Lc/c/a/e;->loadingContainer:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final Va()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ia:Lc/c/a/n/s/e/a/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->na:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    const-string v3, "args"

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->na:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lc/c/a/n/s/e/a/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string v0, "viewModel"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final Wa()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ja:Lc/c/a/n/s/e/a/a;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lc/c/a/n/s/e/a/a;->f()Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->h()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->GIFT_CARD:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Not Implemented"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 5
    sget-object v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$NotImplemented;->INSTANCE:Lcom/farsitel/bazaar/data/entity/ErrorModel$NotImplemented;

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    goto :goto_0

    .line 6
    :cond_0
    sget-object v2, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->CREDIT:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    invoke-virtual {v2}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->a(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->c(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "paymentOptionsAdapter"

    .line 8
    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Xa()V
    .locals 1

    .line 1
    sget v0, Lc/c/a/e;->contentContainer:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 2
    :cond_0
    sget v0, Lc/c/a/e;->loadingContainer:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d005e

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(I)V
    .locals 8

    .line 42
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->ea()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ja:Lc/c/a/n/s/e/a/a;

    const/4 v1, 0x0

    const-string v2, "paymentOptionsAdapter"

    if-eqz v0, :cond_16

    invoke-virtual {v0, p1}, Lc/c/a/n/s/e/a/a;->f(I)V

    .line 44
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ja:Lc/c/a/n/s/e/a/a;

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lc/c/a/n/s/e/a/a;->f()Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;

    move-result-object p1

    .line 45
    sget v0, Lc/c/a/e;->descriptionTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->f()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 47
    sget v0, Lc/c/a/e;->subDescriptionTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    goto :goto_1

    .line 48
    :cond_3
    sget v0, Lc/c/a/e;->subDescriptionTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 49
    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 50
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->CREDIT:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    invoke-virtual {v3}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "creditTextView"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->la:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_6

    .line 52
    sget v0, Lc/c/a/e;->creditTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f10023d

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->la:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {p0, v4, v5}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget v0, Lc/c/a/e;->creditTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    goto :goto_3

    .line 54
    :cond_6
    sget v0, Lc/c/a/e;->creditTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 55
    :goto_3
    sget v0, Lc/c/a/e;->payButton:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->b(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;)Z

    move-result v3

    if-eqz v3, :cond_7

    const v3, 0x7f1000f2

    .line 56
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.increase_credit)"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const v3, 0x7f100162

    .line 57
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.pay)"

    invoke-static {v3, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :goto_4
    invoke-virtual {v0, v3}, Lcom/farsitel/bazaar/widget/LoadingButton;->setText(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type kotlin.CharSequence"

    if-eqz v0, :cond_14

    invoke-static {v0}, Lh/k/n;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    :goto_5
    const-string v4, "agreementDivider"

    const v5, 0x7f100023

    if-eqz v0, :cond_d

    .line 60
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ma:Ljava/lang/String;

    if-eqz p1, :cond_c

    invoke-static {p1}, Lh/k/n;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    :goto_6
    if-eqz p1, :cond_a

    .line 61
    sget p1, Lc/c/a/e;->agreementDivider:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    .line 62
    sget p1, Lc/c/a/e;->agreementTextView:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    const-string v0, "agreementTextView"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->a(Landroid/view/View;)V

    goto/16 :goto_9

    .line 63
    :cond_a
    sget p1, Lc/c/a/e;->agreementDivider:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 64
    sget p1, Lc/c/a/e;->agreementTextView:I

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    .line 65
    invoke-static {p1}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 66
    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ma:Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-static {v1}, Lh/k/n;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v5, v0}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_b
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 68
    :cond_d
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ma:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-static {v0}, Lh/k/n;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    :goto_7
    if-eqz v0, :cond_10

    .line 69
    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    invoke-static {p1}, Lh/k/n;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {p0, v5, v0}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_f
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ma:Ljava/lang/String;

    if-eqz v7, :cond_12

    invoke-static {v7}, Lh/k/n;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {p0, v5, v6}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\n"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->a()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-static {p1}, Lh/k/n;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {p0, v5, v1}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_8
    const-string v0, "if (agreementDescription\u2026ent.trim())\n            }"

    .line 72
    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget v0, Lc/c/a/e;->agreementDivider:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 74
    sget v0, Lc/c/a/e;->agreementTextView:I

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 75
    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 76
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_9
    return-void

    .line 77
    :cond_11
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_12
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_13
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_14
    new-instance p1, Lkotlin/TypeCastException;

    invoke-direct {p1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_15
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 82
    :cond_16
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-wide/from16 v0, p1

    move-object/from16 v7, p8

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->Ua()V

    .line 13
    iput-wide v0, v6, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ka:J

    move-object/from16 v2, p7

    .line 14
    iput-object v2, v6, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->la:Ljava/lang/String;

    .line 15
    iput-object v7, v6, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ma:Ljava/lang/String;

    .line 16
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/LoadPaymentOptionsEvent;

    invoke-virtual/range {p9 .. p9}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3, v0, v1}, Lcom/farsitel/bazaar/analytics/model/what/LoadPaymentOptionsEvent;-><init>(IJ)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    if-eqz p3, :cond_0

    .line 17
    sget-object v9, Lc/c/a/d/g/a/i;->a:Lc/c/a/d/g/a/i;

    .line 18
    sget v0, Lc/c/a/e;->dealerIconImageView:I

    invoke-virtual {v6, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "dealerIconImageView"

    invoke-static {v10, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    const v0, 0x7f080073

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x34

    const/16 v17, 0x0

    move-object/from16 v11, p3

    .line 20
    invoke-static/range {v9 .. v17}, Lc/c/a/d/g/a/i;->a(Lc/c/a/d/g/a/i;Landroid/widget/ImageView;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/Integer;Ljava/lang/String;IILjava/lang/Object;)V

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->x()Lb/o/a/i;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lc/c/a/d/b/j;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 22
    sget v1, Lc/c/a/e;->dealerIconImageView:I

    invoke-virtual {v6, v1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_1
    :goto_0
    sget v0, Lc/c/a/e;->dealerNameTextView:I

    invoke-virtual {v6, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v1, "dealerNameTextView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    sget v0, Lc/c/a/e;->productNameTextView:I

    invoke-virtual {v6, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LocalAwareTextView;

    const-string v1, "productNameTextView"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    sget v0, Lc/c/a/e;->payButton:I

    invoke-virtual {v6, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/farsitel/bazaar/widget/LoadingButton;

    new-instance v1, Lc/c/a/n/s/e/a/e;

    invoke-direct {v1, v6}, Lc/c/a/n/s/e/a/e;-><init>(Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;)V

    invoke-virtual {v0, v1}, Lcom/farsitel/bazaar/widget/LoadingButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    invoke-interface/range {p8 .. p8}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 27
    sget v0, Lc/c/a/e;->agreementDivider:I

    invoke-virtual {v6, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    const-string v3, "agreementDivider"

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    .line 28
    sget v0, Lc/c/a/e;->agreementTextView:I

    invoke-virtual {v6, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatTextView;

    .line 29
    invoke-static {v0}, Lc/c/a/d/b/l;->c(Landroid/view/View;)V

    const v3, 0x7f100023

    .line 30
    new-array v4, v1, [Ljava/lang/Object;

    if-eqz v7, :cond_3

    invoke-static/range {p8 .. p8}, Lh/k/n;->f(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v6, v3, v4}, Landroidx/fragment/app/Fragment;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 31
    :cond_4
    :goto_2
    new-instance v0, Lc/c/a/n/s/e/a/a;

    invoke-direct {v0, v6}, Lc/c/a/n/s/e/a/a;-><init>(Lc/c/a/n/s/e/a/c;)V

    iput-object v0, v6, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ja:Lc/c/a/n/s/e/a/a;

    .line 32
    iget-object v0, v6, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ja:Lc/c/a/n/s/e/a/a;

    const/4 v3, 0x0

    const-string v4, "paymentOptionsAdapter"

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lc/c/a/n/s/e/a/a;->e()Ljava/util/List;

    move-result-object v0

    move-object/from16 v5, p9

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    sget v0, Lc/c/a/e;->paymentGatewaysRecyclerView:I

    invoke-virtual {v6, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->e(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 35
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object v1

    instance-of v1, v1, Lb/y/a/P;

    if-eqz v1, :cond_6

    .line 36
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$f;

    move-result-object v1

    if-eqz v1, :cond_5

    check-cast v1, Lb/y/a/P;

    invoke-virtual {v1, v2}, Lb/y/a/P;->a(Z)V

    goto :goto_3

    :cond_5
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_6
    :goto_3
    iget-object v1, v6, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ja:Lc/c/a/n/s/e/a/a;

    if-eqz v1, :cond_7

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$a;)V

    .line 38
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 39
    new-instance v1, Lc/c/a/n/s/e/a/d;

    invoke-direct {v1, v6}, Lc/c/a/n/s/e/a/d;-><init>(Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 40
    :cond_7
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3

    .line 41
    :cond_8
    invoke-static {v4}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v3
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

    const-class p2, Lc/c/a/n/s/e/a/h;

    invoke-virtual {p1, p2}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string p2, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    check-cast p1, Lc/c/a/n/s/e/a/h;

    .line 9
    invoke-virtual {p1}, Lc/c/a/n/s/e/a/h;->e()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment$onViewCreated$1$1;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment$onViewCreated$1$1;-><init>(Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;)V

    invoke-static {p0, p2, v0}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 10
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ia:Lc/c/a/n/s/e/a/h;

    .line 11
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->Va()V

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

    .line 93
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 94
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Loading;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Loading;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->Xa()V

    goto :goto_0

    .line 95
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$BuyProductDataReceived;->a:Lcom/farsitel/bazaar/core/model/PaymentState$BuyProductDataReceived;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->a(Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;)V

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.farsitel.bazaar.data.feature.payment.PaymentInfo"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_2
    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$AlreadyBought;->a:Lcom/farsitel/bazaar/core/model/PaymentState$AlreadyBought;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 97
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;

    if-nez v0, :cond_3

    const/4 p1, 0x0

    :cond_3
    check-cast p1, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;

    const v0, 0x7f100025

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.already_bought)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->a(Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_4
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 9

    .line 124
    new-instance v4, Lcom/farsitel/bazaar/analytics/model/what/ErrorHappenedEvent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/farsitel/bazaar/analytics/model/what/ErrorHappenedEvent;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 125
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v8

    .line 126
    sget-object v0, Lc/c/a/n/s/e/a/g;->a:Lc/c/a/n/s/e/a/g$a;

    .line 127
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x18

    const/4 v7, 0x0

    move-object v2, p1

    .line 128
    invoke-static/range {v0 .. v7}, Lc/c/a/n/s/e/a/g$a;->a(Lc/c/a/n/s/e/a/g$a;ZLcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object v0

    .line 129
    invoke-static {v8, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;)V
    .locals 7

    .line 83
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->b(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v2, Lcom/farsitel/bazaar/analytics/model/what/BuyProductWithNotEnoughCreditClick;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->e()J

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lcom/farsitel/bazaar/analytics/model/what/BuyProductWithNotEnoughCreditClick;-><init>(J)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 85
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 86
    sget-object v1, Lc/c/a/n/s/e/a/g;->a:Lc/c/a/n/s/e/a/g$a;

    .line 87
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->e()J

    move-result-wide v2

    .line 88
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->na:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {v1, v2, v3, p1}, Lc/c/a/n/s/e/a/g$a;->a(JLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)Lb/w/p;

    move-result-object p1

    .line 90
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    goto :goto_0

    :cond_0
    const-string p1, "args"

    .line 91
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 92
    :cond_1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->c(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;)V
    .locals 12

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->b()Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 101
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->d()Ljava/lang/String;

    move-result-object v5

    .line 102
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->na:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;->a()Ljava/lang/String;

    move-result-object v6

    .line 103
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->e()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 104
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->h()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 105
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->c()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 106
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    move-object v10, v0

    .line 107
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentInfo;->g()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    move-object v11, p1

    check-cast v11, Ljava/util/ArrayList;

    move-object v2, p0

    .line 108
    invoke-virtual/range {v2 .. v11}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 109
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.farsitel.bazaar.data.feature.payment.PaymentGateway> /* = java.util.ArrayList<com.farsitel.bazaar.data.feature.payment.PaymentGateway> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 110
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    throw v1

    .line 111
    :cond_3
    :try_start_1
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    throw v1

    .line 112
    :cond_4
    :try_start_2
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    throw v1

    :cond_5
    :try_start_3
    const-string p1, "args"

    .line 113
    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0

    throw v1

    .line 114
    :cond_6
    :try_start_4
    invoke-static {}, Lh/f/b/j;->a()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0

    throw v1

    :catch_0
    move-exception p1

    .line 115
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "Something is not supposed to be null"

    invoke-direct {v1, v2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 116
    sget-object p1, Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;->INSTANCE:Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    :goto_1
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;Ljava/lang/String;)V
    .locals 9

    .line 117
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/AlreadyBoughtEvent;

    invoke-direct {v1}, Lcom/farsitel/bazaar/analytics/model/what/AlreadyBoughtEvent;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 118
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 119
    sget-object v1, Lc/c/a/n/s/e/a/g;->a:Lc/c/a/n/s/e/a/g$a;

    if-eqz p1, :cond_0

    .line 120
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->a()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    goto :goto_0

    :cond_0
    move-object v5, v2

    :goto_0
    if-eqz p1, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PurchasedItemData;->b()Ljava/lang/String;

    move-result-object p1

    move-object v6, p1

    goto :goto_1

    :cond_1
    move-object v6, v2

    :goto_1
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v4, p2

    .line 122
    invoke-static/range {v1 .. v8}, Lc/c/a/n/s/e/a/g$a;->a(Lc/c/a/n/s/e/a/g$a;ZLcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 123
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final b(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->h()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->CREDIT:Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentGatewayType;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->ka:J

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->e()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lc/c/a/d/f/o;->c(Landroid/os/Bundle;)V

    .line 2
    sget-object p1, Lc/c/a/n/s/e/a/f;->a:Lc/c/a/n/s/e/a/f$a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->C()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments!!"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/n/s/e/a/f$a;->a(Landroid/os/Bundle;)Lc/c/a/n/s/e/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/n/s/e/a/f;->a()Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->na:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    return-void

    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final c(Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;)V
    .locals 20

    move-object/from16 v6, p0

    .line 3
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/BuyProductWithGatewayClick;

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->e()J

    move-result-wide v2

    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/farsitel/bazaar/analytics/model/what/BuyProductWithGatewayClick;-><init>(JLjava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 4
    invoke-static/range {p0 .. p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 5
    sget-object v7, Lc/c/a/n/s/e/a/g;->a:Lc/c/a/n/s/e/a/g$a;

    .line 6
    iget-object v1, v6, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->na:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    const-string v3, "args"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;->a()Ljava/lang/String;

    move-result-object v8

    .line 7
    iget-object v1, v6, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->na:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;->d()Ljava/lang/String;

    move-result-object v9

    .line 8
    iget-object v1, v6, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->na:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;->b()Ljava/lang/String;

    move-result-object v10

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->e()J

    move-result-wide v11

    .line 10
    iget-object v1, v6, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->na:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;->c()Ljava/lang/String;

    move-result-object v13

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->h()Ljava/lang/String;

    move-result-object v14

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/farsitel/bazaar/data/feature/payment/PaymentGateway;->b()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x100

    const/16 v19, 0x0

    .line 13
    invoke-static/range {v7 .. v19}, Lc/c/a/n/s/e/a/g$a;->a(Lc/c/a/n/s/e/a/g$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;ILjava/lang/Object;)Lb/w/p;

    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void

    .line 15
    :cond_0
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 16
    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 17
    :cond_2
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 18
    :cond_3
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->oa:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->oa:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->oa:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->oa:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/a/b;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/payment/options/PaymentOptionsFragment;->La()V

    return-void
.end method
