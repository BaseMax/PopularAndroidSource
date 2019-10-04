.class Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$ScreenLauncher;
.super Ljava/lang/Object;
.source "CheckoutActionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenLauncher"
.end annotation


# direct methods
.method static synthetic access$000(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 389
    invoke-static {p0, p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$ScreenLauncher;->launchScreen(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V
    .locals 0

    .line 389
    invoke-static {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$ScreenLauncher;->launchScreenAfterOperation(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V

    return-void
.end method

.method private static launchScreen(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f120a33

    .line 405
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler;->loadBundle(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v0, "screen"

    .line 406
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    instance-of p1, p0, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;

    if-nez p1, :cond_0

    .line 410
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    invoke-virtual {p1, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 p2, 0x7d9

    .line 412
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 416
    :cond_0
    check-cast p0, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;

    .line 418
    new-instance p1, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;

    invoke-direct {p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;-><init>()V

    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, v0}, Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;->addFragment(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    :goto_0
    return-void
.end method

.method private static launchScreenAfterOperation(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;Lcom/ebay/nautilus/domain/data/experience/type/base/Action;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "moduleAction"

    .line 398
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 399
    invoke-static {p0, p1, p2}, Lcom/ebay/mobile/checkout/v2/CheckoutActionHandler$ScreenLauncher;->launchScreen(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
