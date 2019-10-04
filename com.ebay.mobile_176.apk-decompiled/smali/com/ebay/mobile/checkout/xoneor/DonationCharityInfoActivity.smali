.class public Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;
.super Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;
.source "DonationCharityInfoActivity.java"

# interfaces
.implements Lcom/ebay/mobile/charity/CharitySelectionListener;


# static fields
.field public static CHARITY_INFO:Ljava/lang/String; = "charity_info"


# instance fields
.field charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    return-void
.end method

.method private renderScreen()V
    .locals 5

    .line 55
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->setResult(I)V

    .line 58
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->finish()V

    return-void

    .line 62
    :cond_0
    new-instance v0, Lcom/ebay/nautilus/domain/data/Nonprofit;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/Nonprofit;-><init>()V

    .line 63
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->charityId:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/Nonprofit;->externalId:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->name:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/Nonprofit;->name:Ljava/lang/String;

    .line 65
    iget-object v2, p0, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->info:Ljava/lang/String;

    iput-object v2, v0, Lcom/ebay/nautilus/domain/data/Nonprofit;->mission:Ljava/lang/String;

    .line 67
    new-instance v2, Lcom/ebay/mobile/charity/CharityInfoFragment;

    invoke-direct {v2}, Lcom/ebay/mobile/charity/CharityInfoFragment;-><init>()V

    .line 68
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "charity_nonprofit"

    .line 69
    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "charity_selection_enabled"

    .line 70
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "toolbar_title"

    .line 71
    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;->charityDetailsTitle:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v2, v3}, Lcom/ebay/mobile/charity/CharityInfoFragment;->setArguments(Landroid/os/Bundle;)V

    const/16 v0, 0x1000

    .line 74
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->removeToolbarFlags(I)V

    .line 76
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0a057e

    .line 77
    sget-object v3, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->CHARITY_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 78
    sget-object v1, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->CHARITY_INFO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 79
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 80
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->trackRenderedModuleView(Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->setResult(I)V

    .line 96
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->finish()V

    .line 97
    invoke-super {p0}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onBackPressed()V

    return-void
.end method

.method public onCharitySelected(Lcom/ebay/nautilus/domain/data/Nonprofit;)V
    .locals 2

    .line 86
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "favorites"

    .line 87
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/charity/CharityFavoritesFragment;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0, p1}, Lcom/ebay/mobile/charity/CharityFavoritesFragment;->onCharitySelected(Lcom/ebay/nautilus/domain/data/Nonprofit;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 28
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d016d

    .line 29
    invoke-virtual {p0, v0, p1}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->initContentView(ILandroid/os/Bundle;)V

    .line 31
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->showBackButton()V

    return-void
.end method

.method public onMenuHomeClicked(Landroid/view/MenuItem;)Z
    .locals 0
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->onBackPressed()V

    const/4 p1, 0x1

    return p1
.end method

.method public onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;",
            "Lcom/ebay/nautilus/domain/content/Content<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;",
            ">;Z)V"
        }
    .end annotation

    .line 37
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/BaseCheckoutActivity;->onSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)V

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->checkSessionChanged(Lcom/ebay/nautilus/domain/content/dm/payments/CheckoutDataManager;Lcom/ebay/nautilus/domain/content/Content;Z)Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->stopProgress()V

    return-void

    .line 45
    :cond_0
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/content/Content;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    .line 46
    iget-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->xoSession:Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;

    const-class p2, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/domain/data/experience/checkout/session/CheckoutSession;->getSessionModule(Ljava/lang/reflect/Type;)Lcom/ebay/nautilus/domain/data/experience/type/base/IModule;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->charityModule:Lcom/ebay/nautilus/domain/data/experience/checkout/charity/CharityModule;

    .line 48
    invoke-direct {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->renderScreen()V

    .line 49
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/xoneor/DonationCharityInfoActivity;->stopProgress()V

    return-void
.end method
