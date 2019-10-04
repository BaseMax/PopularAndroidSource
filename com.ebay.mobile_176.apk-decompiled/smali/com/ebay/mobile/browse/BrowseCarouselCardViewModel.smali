.class public Lcom/ebay/mobile/browse/BrowseCarouselCardViewModel;
.super Lcom/ebay/mobile/uxcomponents/viewmodel/item/ItemCardCarouselViewModel;
.source "BrowseCarouselCardViewModel.java"


# instance fields
.field private extension:Lcom/ebay/mobile/browse/BrowseExtension;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;I)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/ebay/mobile/uxcomponents/viewmodel/item/ItemCardCarouselViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;I)V

    return-void
.end method


# virtual methods
.method public getExtension()Lcom/ebay/mobile/browse/BrowseExtension;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseCarouselCardViewModel;->extension:Lcom/ebay/mobile/browse/BrowseExtension;

    return-object v0
.end method

.method public getPrimaryMaxLines(I)I
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseCarouselCardViewModel;->extension:Lcom/ebay/mobile/browse/BrowseExtension;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseCarouselCardViewModel;->extension:Lcom/ebay/mobile/browse/BrowseExtension;

    invoke-virtual {v0}, Lcom/ebay/mobile/browse/BrowseExtension;->getCartActionsViewModel()Lcom/ebay/mobile/quickshop/addtocart/CartActionsViewModel;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    return p1

    .line 43
    :cond_0
    invoke-super {p0, p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/item/ItemCardCarouselViewModel;->getPrimaryMaxLines(I)I

    move-result p1

    return p1
.end method

.method protected getText(Lcom/ebay/nautilus/domain/text/ItemCardTheme;Lcom/ebay/nautilus/domain/data/experience/type/layout/PropertyOrderType;Ljava/lang/String;)Lcom/ebay/mobile/uxcomponents/viewmodel/TextDetails;
    .locals 1
    .param p1    # Lcom/ebay/nautilus/domain/text/ItemCardTheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/type/layout/PropertyOrderType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 50
    invoke-super {p0, p1, p2, p3}, Lcom/ebay/mobile/uxcomponents/viewmodel/item/ItemCardCarouselViewModel;->getText(Lcom/ebay/nautilus/domain/text/ItemCardTheme;Lcom/ebay/nautilus/domain/data/experience/type/layout/PropertyOrderType;Ljava/lang/String;)Lcom/ebay/mobile/uxcomponents/viewmodel/TextDetails;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "__search.unitPrice"

    .line 54
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p3, Lcom/ebay/nautilus/domain/data/experience/type/layout/PropertyOrderType;->PRIMARY:Lcom/ebay/nautilus/domain/data/experience/type/layout/PropertyOrderType;

    invoke-virtual {p3, p2}, Lcom/ebay/nautilus/domain/data/experience/type/layout/PropertyOrderType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/ebay/mobile/browse/BrowseCarouselCardViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;

    .line 55
    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;->getSearchExtension()Lcom/ebay/nautilus/domain/data/experience/search/SearchListingExtension;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 57
    iget-object p2, p0, Lcom/ebay/mobile/browse/BrowseCarouselCardViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;->getSearchExtension()Lcom/ebay/nautilus/domain/data/experience/search/SearchListingExtension;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ebay/nautilus/domain/data/experience/search/SearchListingExtension;->getUnitPrice()Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ebay/mobile/uxcomponents/viewmodel/TextDetails;->from(Lcom/ebay/nautilus/domain/data/experience/type/base/StyledThemeData;Lcom/ebay/nautilus/domain/data/experience/type/base/TextSpan;)Lcom/ebay/mobile/uxcomponents/viewmodel/TextDetails;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/item/ItemCardCarouselViewModel;->onBind(Landroid/content/Context;)V

    .line 30
    iget-object v0, p0, Lcom/ebay/mobile/browse/BrowseCarouselCardViewModel;->model:Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;

    invoke-static {p1, v0}, Lcom/ebay/mobile/browse/BrowseExtension;->mapSearchExtension(Landroid/content/Context;Lcom/ebay/nautilus/domain/data/experience/type/listing/ItemCard;)Lcom/ebay/mobile/browse/BrowseExtension;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/browse/BrowseCarouselCardViewModel;->extension:Lcom/ebay/mobile/browse/BrowseExtension;

    return-void
.end method
