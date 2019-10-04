.class public final Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;
.super Lc/c/a/n/c/a/b;
.source "StartPaymentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;
    }
.end annotation


# instance fields
.field public final ia:Z

.field public ja:Lc/c/a/n/s/f/b;

.field public ka:Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

.field public la:Lc/c/a/n/s/a;

.field public ma:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc/c/a/n/c/a/b;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ia:Z

    return-void
.end method

.method public static final synthetic a(Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;Lcom/farsitel/bazaar/core/model/Resource;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->a(Lcom/farsitel/bazaar/core/model/Resource;)V

    return-void
.end method


# virtual methods
.method public La()V
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ma:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public Sa()Lcom/farsitel/bazaar/analytics/model/where/PaymentFlow;
    .locals 6

    .line 2
    new-instance v0, Lcom/farsitel/bazaar/analytics/model/where/PaymentFlow;

    .line 3
    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ka:Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

    const/4 v2, 0x0

    const-string v3, "paymentConfigs"

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;->a()Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object v4, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ka:Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;->d()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v4, ""

    .line 5
    :goto_0
    iget-object v5, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ka:Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;->c()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-direct {v0, v1, v4, v2}, Lcom/farsitel/bazaar/analytics/model/where/PaymentFlow;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 7
    :cond_1
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_2
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2

    .line 9
    :cond_3
    invoke-static {v3}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v2
.end method

.method public bridge synthetic Sa()Lcom/farsitel/bazaar/analytics/model/where/WhereType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->Sa()Lcom/farsitel/bazaar/analytics/model/where/PaymentFlow;

    move-result-object v0

    return-object v0
.end method

.method public Ta()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ia:Z

    return v0
.end method

.method public final Ua()Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    .line 2
    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 3
    new-instance v1, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

    const-string v2, "DEALER_PACKAGE_NAME"

    .line 4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "intent.getStringExtra(Pa\u2026.KEY_DEALER_PACKAGE_NAME)"

    invoke-static {v3, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "NAME"

    .line 5
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "SKU"

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "DEV_PAYLOAD"

    .line 7
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "paymentType"

    .line 8
    invoke-static {v7, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    .line 9
    invoke-direct/range {v2 .. v7}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 10
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Va()V
    .locals 7

    .line 1
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    sget-object v1, Lc/c/a/n/s/f/a;->a:Lc/c/a/n/s/f/a$a;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/n/s/f/a$a;->a(Lc/c/a/n/s/f/a$a;JLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;ILjava/lang/Object;)Lb/w/p;

    move-result-object v1

    invoke-static {v0, v1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final Wa()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ka:Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

    const/4 v1, 0x0

    const-string v2, "paymentConfigs"

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v3

    .line 3
    sget-object v4, Lc/c/a/n/s/f/a;->a:Lc/c/a/n/s/f/a$a;

    .line 4
    new-instance v5, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    .line 5
    iget-object v6, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ka:Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;->a()Ljava/lang/String;

    move-result-object v6

    .line 6
    iget-object v7, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ka:Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;->c()Ljava/lang/String;

    move-result-object v7

    .line 7
    iget-object v8, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ka:Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;->b()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-direct {v5, v6, v0, v7, v1}, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v4, v5}, Lc/c/a/n/s/f/a$a;->a(Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)Lb/w/p;

    move-result-object v0

    .line 10
    invoke-static {v3, v0}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 12
    :cond_1
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 13
    :cond_2
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_3
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "trying to buy a product with null sku"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 15
    sget-object v0, Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;->INSTANCE:Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;

    invoke-virtual {p0, v0}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    :goto_0
    return-void

    .line 16
    :cond_4
    invoke-static {v2}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1
.end method

.method public final Xa()V
    .locals 4

    .line 1
    sget-object v0, Lcom/farsitel/bazaar/ui/login/LoginActivity;->w:Lcom/farsitel/bazaar/ui/login/LoginActivity$a;

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ka:Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/farsitel/bazaar/common/model/login/LoginType;->IN_APP_PURCHASE:Lcom/farsitel/bazaar/common/model/login/LoginType;

    const/16 v3, 0xfa0

    invoke-virtual {v0, p0, v3, v1, v2}, Lcom/farsitel/bazaar/ui/login/LoginActivity$a;->a(Landroidx/fragment/app/Fragment;ILjava/lang/String;Lcom/farsitel/bazaar/common/model/login/LoginType;)V

    return-void

    :cond_0
    const-string v0, "paymentConfigs"

    invoke-static {v0}, Lh/f/b/j;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final Ya()Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v0

    const-string v1, "requireActivity()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "requireActivity().intent"

    invoke-static {v0, v2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    const/16 v2, 0x12

    .line 2
    invoke-static {v2}, Lc/c/a/c/h/d;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v2

    invoke-static {v2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v2

    invoke-static {v2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v2

    invoke-static {v2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 v0, 0x0

    throw v0

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v2

    invoke-static {v2, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const-string v3, "getString(R.string.pardakht_error_invalid_request)"

    const v4, 0x7f100155

    const/4 v5, 0x0

    if-nez v0, :cond_3

    .line 7
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v5}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->a(Ljava/lang/String;Z)V

    return v5

    .line 8
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v7, "pardakht"

    invoke-static {v7, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x1

    xor-int/2addr v0, v7

    if-nez v0, :cond_c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x2

    if-ge v0, v8, :cond_4

    goto/16 :goto_2

    .line 10
    :cond_4
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v8, "v1"

    invoke-static {v8, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v7

    if-eqz v0, :cond_5

    const v0, 0x7f100156

    .line 11
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.pardakht_error_not_supported)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v7}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->a(Ljava/lang/String;Z)V

    return v5

    .line 12
    :cond_5
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v8, -0x4e58192e

    if-eq v6, v8, :cond_a

    const v8, 0x1b0a8

    if-eq v6, v8, :cond_7

    goto :goto_1

    :cond_7
    const-string v6, "pay"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-nez v2, :cond_8

    const v0, 0x7f100154

    .line 13
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.parda\u2026_error_called_improperly)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v7}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->a(Ljava/lang/String;Z)V

    return v5

    .line 14
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ga()Lb/o/a/i;

    move-result-object v0

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "DEALER_PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v7

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v7

    if-eqz v0, :cond_9

    const v0, 0x7f100153

    .line 16
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(R.string.pardakht_error_called_by_else)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v7}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->a(Ljava/lang/String;Z)V

    return v5

    :cond_9
    return v7

    :cond_a
    const-string v1, "buy_credit"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v7

    .line 18
    :cond_b
    :goto_1
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v5}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->a(Ljava/lang/String;Z)V

    return v5

    .line 19
    :cond_c
    :goto_2
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v5}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->a(Ljava/lang/String;Z)V

    return v5
.end method

.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const p3, 0x7f0d006c

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 6

    .line 24
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult :: requestCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , resultCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    const/16 v0, 0xfa0

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 25
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ja:Lc/c/a/n/s/f/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ka:Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/c/a/n/s/f/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "paymentConfigs"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "viewModel"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_3
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->la:Lc/c/a/n/s/a;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lc/c/a/n/s/a;->o()V

    .line 27
    :cond_4
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->a(IILandroid/content/Intent;)V

    return-void
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
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->la:Lc/c/a/n/s/a;

    .line 4
    invoke-super {p0, p1}, Lc/c/a/d/f/i;->a(Landroid/content/Context;)V

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "this activity must implement InvoiceCallback"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1, p2}, Lc/c/a/d/f/o;->a(Landroid/view/View;Landroid/os/Bundle;)V

    .line 8
    invoke-virtual {p0}, Lc/c/a/d/f/i;->Ra()Lb/r/F$b;

    move-result-object p1

    .line 9
    invoke-static {p0, p1}, Lb/r/G;->a(Landroidx/fragment/app/Fragment;Lb/r/F$b;)Lb/r/F;

    move-result-object p1

    const-class p2, Lc/c/a/n/s/f/b;

    invoke-virtual {p1, p2}, Lb/r/F;->a(Ljava/lang/Class;)Lb/r/E;

    move-result-object p1

    const-string p2, "ViewModelProviders.of(th\u2026, factory)[T::class.java]"

    invoke-static {p1, p2}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    check-cast p1, Lc/c/a/n/s/f/b;

    .line 11
    invoke-virtual {p1}, Lc/c/a/n/s/f/b;->e()Landroidx/lifecycle/LiveData;

    move-result-object p2

    new-instance v0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$onViewCreated$1$1;

    invoke-direct {v0, p0}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$onViewCreated$1$1;-><init>(Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;)V

    invoke-static {p0, p2, v0}, Lc/c/a/d/b/h;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/LiveData;Lh/f/a/b;)V

    .line 12
    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ja:Lc/c/a/n/s/f/b;

    .line 13
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->Ya()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->Ua()Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ka:Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

    .line 15
    new-instance v1, Lcom/farsitel/bazaar/analytics/model/what/StartFlowEvent;

    invoke-direct {v1}, Lcom/farsitel/bazaar/analytics/model/what/StartFlowEvent;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lc/c/a/n/c/a/b;->a(Lc/c/a/n/c/a/b;Lcom/farsitel/bazaar/analytics/model/what/WhatType;Lcom/farsitel/bazaar/analytics/model/where/WhereType;Ljava/lang/String;ILjava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ja:Lc/c/a/n/s/f/b;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ka:Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment$a;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lc/c/a/n/s/f/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "paymentConfigs"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "viewModel"

    invoke-static {p1}, Lh/f/b/j;->c(Ljava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
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

    if-eqz p1, :cond_4

    .line 17
    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->d()Lcom/farsitel/bazaar/core/model/ResourceState;

    move-result-object v0

    .line 18
    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$NotLoggedIn;->a:Lcom/farsitel/bazaar/core/model/PaymentState$NotLoggedIn;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->Xa()V

    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$NavigateToCreditOptions;->a:Lcom/farsitel/bazaar/core/model/PaymentState$NavigateToCreditOptions;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->Va()V

    goto :goto_0

    .line 20
    :cond_1
    sget-object v1, Lcom/farsitel/bazaar/core/model/PaymentState$NavigateToBuyProduct;->a:Lcom/farsitel/bazaar/core/model/PaymentState$NavigateToBuyProduct;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->Wa()V

    goto :goto_0

    .line 21
    :cond_2
    sget-object v1, Lcom/farsitel/bazaar/core/model/ResourceState$Error;->a:Lcom/farsitel/bazaar/core/model/ResourceState$Error;

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/farsitel/bazaar/core/model/Resource;->c()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    goto :goto_0

    .line 22
    :cond_3
    sget-object p1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 23
    sget-object p1, Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;->INSTANCE:Lcom/farsitel/bazaar/data/entity/ErrorModel$UnExpected;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V
    .locals 9

    .line 30
    invoke-static {p0}, Lb/w/b/b;->a(Landroidx/fragment/app/Fragment;)Lb/w/j;

    move-result-object v0

    .line 31
    sget-object v1, Lc/c/a/n/s/b/d;->a:Lc/c/a/n/s/b/d$a;

    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->Ha()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext()"

    invoke-static {v2, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lc/c/a/d/b/d;->b(Landroid/content/Context;Lcom/farsitel/bazaar/data/entity/ErrorModel;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1a

    const/4 v8, 0x0

    .line 33
    invoke-static/range {v1 .. v8}, Lc/c/a/n/s/b/d$a;->a(Lc/c/a/n/s/b/d$a;ZLcom/farsitel/bazaar/data/entity/ErrorModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lb/w/p;

    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Lc/c/a/i/c;->a(Lb/w/j;Lb/w/p;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 28
    iget-object p1, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->la:Lc/c/a/n/s/a;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lc/c/a/n/s/a;->a()V

    goto :goto_0

    .line 29
    :cond_0
    new-instance p2, Lcom/farsitel/bazaar/data/entity/ErrorModel$Error;

    invoke-direct {p2, p1}, Lcom/farsitel/bazaar/data/entity/ErrorModel$Error;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->a(Lcom/farsitel/bazaar/data/entity/ErrorModel;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ma:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ma:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ma:Ljava/util/HashMap;

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

    iget-object v1, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->ma:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public synthetic qa()V
    .locals 0

    invoke-super {p0}, Lc/c/a/n/c/a/b;->qa()V

    invoke-virtual {p0}, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->La()V

    return-void
.end method

.method public ra()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/farsitel/bazaar/ui/payment/starter/StartPaymentFragment;->la:Lc/c/a/n/s/a;

    .line 2
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->ra()V

    return-void
.end method
