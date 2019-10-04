.class public Lcom/ebay/mobile/browse/BrowseExtension;
.super Ljava/lang/Object;
.source "BrowseExtension.java"


# instance fields
.field private cartActionsViewModel:Lcom/ebay/mobile/quickshop/addtocart/CartActionsViewModel;

.field private specialCaption:Lcom/ebay/mobile/browse/SpecialCaptionViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapSearchExtension(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;)Lcom/ebay/mobile/browse/BrowseExtension;
    .locals 3

    .line 26
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;->getSearchExtension()Lcom/ebay/nautilus/domain/data/experience/search/SearchListingExtension;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_0
    new-instance v1, Lcom/ebay/mobile/browse/BrowseExtension;

    invoke-direct {v1}, Lcom/ebay/mobile/browse/BrowseExtension;-><init>()V

    .line 31
    invoke-static {p0}, Lcom/ebay/mobile/search/answers/SearchThemeData;->getStyleData(Landroid/content/Context;)Lcom/ebay/mobile/search/answers/SearchThemeData;

    move-result-object v2

    .line 32
    invoke-static {p1, v2}, Lcom/ebay/mobile/browse/SpecialCaptionViewModel;->setupSpecialCaption(Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;Lcom/ebay/mobile/uxcomponents/viewmodel/item/ItemCardThemeData;)Lcom/ebay/mobile/browse/SpecialCaptionViewModel;

    move-result-object p1

    iput-object p1, v1, Lcom/ebay/mobile/browse/BrowseExtension;->specialCaption:Lcom/ebay/mobile/browse/SpecialCaptionViewModel;

    .line 34
    invoke-static {p0}, Lcom/ebay/mobile/verticals/VerticalsUtil;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    .line 35
    instance-of p1, p0, Landroidx/lifecycle/LifecycleOwner;

    if-eqz p1, :cond_1

    instance-of p1, p0, Lcom/ebay/mobile/quickshop/QuickShopActionHandler;

    if-eqz p1, :cond_1

    .line 37
    invoke-static {}, Lcom/ebay/mobile/quickshop/QuickShopTransformer;->get()Lcom/ebay/mobile/quickshop/QuickShopTransformer;

    move-result-object p1

    .line 38
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/search/SearchListingExtension;->getQuickShopActions()Lcom/ebay/nautilus/domain/data/experience/quickshop/QuickShopActions;

    move-result-object v0

    move-object v2, p0

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    check-cast p0, Lcom/ebay/mobile/quickshop/QuickShopActionHandler;

    invoke-virtual {p1, v0, v2, p0}, Lcom/ebay/mobile/quickshop/QuickShopTransformer;->transform(Lcom/ebay/nautilus/domain/data/experience/quickshop/QuickShopActions;Landroidx/lifecycle/LifecycleOwner;Lcom/ebay/mobile/quickshop/QuickShopActionHandler;)Lcom/ebay/mobile/quickshop/addtocart/CartActionsViewModel;

    move-result-object p0

    iput-object p0, v1, Lcom/ebay/mobile/browse/BrowseExtension;->cartActionsViewModel:Lcom/ebay/mobile/quickshop/addtocart/CartActionsViewModel;

    :cond_1
    return-object v1
.end method


# virtual methods
.method public getCartActionsViewModel()Lcom/ebay/mobile/quickshop/addtocart/CartActionsViewModel;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseExtension;->cartActionsViewModel:Lcom/ebay/mobile/quickshop/addtocart/CartActionsViewModel;

    return-object v0
.end method

.method public getSpecialCaption()Lcom/ebay/mobile/browse/SpecialCaptionViewModel;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseExtension;->specialCaption:Lcom/ebay/mobile/browse/SpecialCaptionViewModel;

    return-object v0
.end method
