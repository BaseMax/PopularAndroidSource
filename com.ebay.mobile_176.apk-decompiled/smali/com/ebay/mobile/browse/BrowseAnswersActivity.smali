.class public Lcom/ebay/mobile/browse/BrowseAnswersActivity;
.super Lcom/ebay/mobile/search/SearchResultActivity;
.source "BrowseAnswersActivity.java"

# interfaces
.implements Lcom/ebay/mobile/quickshop/QuickShopActionHandler;


# instance fields
.field private cartActionInputLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;",
            ">;"
        }
    .end annotation
.end field

.field private pendingCartActionInput:Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;

.field private quickShopDataManager:Lcom/ebay/nautilus/domain/content/dm/QuickShopDataManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/ebay/mobile/search/SearchResultActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getCartActionInputAfterUserSignedIn()Landroidx/lifecycle/LiveData;
    .locals 1

    .line 26
    invoke-virtual {p0}, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->getCartActionInputAfterUserSignedIn()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    return-object v0
.end method

.method public getCartActionInputAfterUserSignedIn()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->cartActionInputLiveData:Landroidx/lifecycle/MutableLiveData;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->cartActionInputLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->cartActionInputLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method protected getSearchIdentifier()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "browse"

    return-object v0
.end method

.method public getTrackingEventName()Ljava/lang/String;
    .locals 1

    const-string v0, "BrowseViewed"

    return-object v0
.end method

.method public handleAddToCart(Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;)Z
    .locals 2

    .line 108
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/ebay/mobile/connection/idsignin/SignInActivity;->getIntentForSignIn(Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x20000

    .line 111
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v1, 0x46

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 113
    iput-object p1, p0, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->pendingCartActionInput:Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->quickShopDataManager:Lcom/ebay/nautilus/domain/content/dm/QuickShopDataManager;

    sget-object v1, Lcom/ebay/nautilus/domain/content/dm/QuickShopDataManager;->NO_OPS:Lcom/ebay/nautilus/domain/content/dm/QuickShopDataManager$Observer;

    invoke-virtual {v0, p1, v1}, Lcom/ebay/nautilus/domain/content/dm/QuickShopDataManager;->addToCartDelay(Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;Lcom/ebay/nautilus/domain/content/dm/QuickShopDataManager$Observer;)Z

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 90
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/search/SearchResultActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 91
    invoke-virtual {p0}, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->isFinishing()Z

    move-result p3

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->isDestroyed()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    const/16 p3, 0x46

    if-ne p1, p3, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->getCartActionInputAfterUserSignedIn()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->pendingCartActionInput:Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->pendingCartActionInput:Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;->cartActionState:Lcom/ebay/nautilus/domain/data/quickshop/CartActionState;

    if-eqz p1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->pendingCartActionInput:Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;->cartActionState:Lcom/ebay/nautilus/domain/data/quickshop/CartActionState;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/quickshop/CartActionState;->reset()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->pendingCartActionInput:Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/ebay/mobile/search/SearchResultActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v0, "CART_ACTION_INPUT_KEY"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;

    iput-object p1, p0, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->pendingCartActionInput:Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;

    :cond_0
    return-void
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcom/ebay/mobile/search/SearchResultActivity;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    .line 75
    invoke-virtual {p0}, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->getUserContext()Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/ebay/nautilus/domain/content/dm/QuickShopDataManager$KeyParams;

    invoke-direct {v1, v0}, Lcom/ebay/nautilus/domain/content/dm/QuickShopDataManager$KeyParams;-><init>(Lcom/ebay/nautilus/domain/EbayCountry;)V

    new-instance v0, Lcom/ebay/nautilus/domain/content/dm/QuickShopDataManager$NoOpsObserver;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/content/dm/QuickShopDataManager$NoOpsObserver;-><init>()V

    invoke-virtual {p1, v1, v0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/content/dm/QuickShopDataManager;

    iput-object v0, p0, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->quickShopDataManager:Lcom/ebay/nautilus/domain/content/dm/QuickShopDataManager;

    .line 78
    sget-object v0, Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/payments/ShoppingCartDataManager$KeyParams;

    new-instance v1, Lcom/ebay/mobile/quickshop/addtocart/CartRefreshObserver;

    invoke-direct {v1, p0}, Lcom/ebay/mobile/quickshop/addtocart/CartRefreshObserver;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    return-void
.end method

.method protected onInitializeGeneralNavigation(Lcom/ebay/mobile/search/SearchIntentBuilder;)V
    .locals 4
    .param p1    # Lcom/ebay/mobile/search/SearchIntentBuilder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 46
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->searchDataManager:Lcom/ebay/nautilus/domain/content/dm/SearchDataManager;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/content/dm/SearchDataManager;->getRefinements()Lcom/ebay/nautilus/domain/data/search/refine/Refinements;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/search/refine/Refinements;->getSearchOptions()Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;

    move-result-object v0

    const-string v1, "_sacat"

    const-wide/16 v2, -0x1

    .line 47
    invoke-virtual {v0, v1, v2, v3}, Lcom/ebay/nautilus/domain/data/search/refine/SearchOptions;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 51
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setCategory(JLjava/lang/String;)Lcom/ebay/mobile/search/SearchIntentBuilder;

    .line 52
    invoke-virtual {p1}, Lcom/ebay/mobile/search/SearchIntentBuilder;->setCategoryConstrained()Lcom/ebay/mobile/search/SearchIntentBuilder;

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 67
    invoke-super {p0, p1}, Lcom/ebay/mobile/search/SearchResultActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "CART_ACTION_INPUT_KEY"

    .line 68
    iget-object v1, p0, Lcom/ebay/mobile/browse/BrowseAnswersActivity;->pendingCartActionInput:Lcom/ebay/nautilus/domain/data/quickshop/CartActionInput;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
