.class public Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;
.super Lcom/ebay/mobile/activities/CoreActivity;
.source "CheckoutFragmentActivity.java"

# interfaces
.implements Lcom/ebay/payments/experience/PaymentsFragmentActivityContract;
.implements Ldagger/android/support/HasSupportFragmentInjector;


# instance fields
.field dispatchingFragmentInjector:Ldagger/android/DispatchingAndroidInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/android/DispatchingAndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ebay/mobile/activities/CoreActivity;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreate$0(Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;)V
    .locals 2

    .line 53
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->getFragmentContainer()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    instance-of v1, v0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;

    if-eqz v1, :cond_0

    .line 56
    check-cast v0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;

    .line 57
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addFragment(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 66
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const-string/jumbo v0, "screen"

    .line 68
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const/16 v1, 0x1003

    .line 72
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->setTransition(I)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->getFragmentContainer()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    if-eqz p3, :cond_0

    .line 76
    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    return-void
.end method

.method public finishActivity()V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->finish()V

    return-void
.end method

.method public getFragmentContainer()I
    .locals 1

    const v0, 0x7f0a06bc

    return v0
.end method

.method public getPaymentsFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    .line 103
    invoke-super {p0}, Lcom/ebay/mobile/activities/CoreActivity;->onBackPressed()V

    .line 104
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->getFragmentContainer()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 106
    instance-of v1, v0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;

    if-eqz v1, :cond_0

    .line 107
    check-cast v0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;

    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 35
    invoke-static {p0}, Ldagger/android/AndroidInjection;->inject(Landroid/app/Activity;)V

    .line 36
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 37
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->setToolbarFlags(I)V

    const p1, 0x7f0d01a0

    .line 38
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->setContentView(I)V

    .line 39
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 40
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->getFragmentContainer()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;

    invoke-direct {v1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->addFragment(Landroidx/fragment/app/Fragment;Landroid/os/Bundle;Z)V

    .line 51
    :cond_0
    new-instance v0, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutFragmentActivity$q3lLCK_9EaMGchcornNDVt2O6n4;

    invoke-direct {v0, p0}, Lcom/ebay/mobile/checkout/v2/-$$Lambda$CheckoutFragmentActivity$q3lLCK_9EaMGchcornNDVt2O6n4;-><init>(Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;)V

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->addOnBackStackChangedListener(Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/CoreActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->getFragmentContainer()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 115
    instance-of v1, v0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 116
    check-cast v0, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/CheckoutRecyclerFragment;->processOnActivityNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public setToolbar(Z)V
    .locals 0

    return-void
.end method

.method public supportFragmentInjector()Ldagger/android/AndroidInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ldagger/android/AndroidInjector<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/CheckoutFragmentActivity;->dispatchingFragmentInjector:Ldagger/android/DispatchingAndroidInjector;

    return-object v0
.end method
