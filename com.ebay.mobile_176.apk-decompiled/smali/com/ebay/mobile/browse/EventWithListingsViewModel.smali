.class public Lcom/ebay/mobile/browse/EventWithListingsViewModel;
.super Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/BaseComponentViewModel;
.source "EventWithListingsViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;


# instance fields
.field private final bannerCardViewModel:Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;

.field private final leftItem:Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

.field private final rightItem:Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;Ljava/util/List;)V
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/type/guidance/NavigationCard;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7f0d0180

    .line 30
    invoke-direct {p0, v0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/BaseComponentViewModel;-><init>(I)V

    const-string v0, "BannerCard must not be null"

    .line 32
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "List<NavigationCard> must not be empty"

    .line 33
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotEmpty(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    .line 35
    new-instance v0, Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/banner/BannerCard;I)V

    iput-object v0, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->bannerCardViewModel:Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;

    .line 37
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    .line 38
    new-instance p1, Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/type/guidance/NavigationCard;

    invoke-direct {p1, v2, v1, v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/guidance/NavigationCard;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->leftItem:Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

    goto :goto_0

    .line 40
    :cond_0
    iput-object v0, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->leftItem:Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

    .line 42
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 43
    new-instance p1, Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/type/guidance/NavigationCard;

    invoke-direct {p1, p2, v1, v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/guidance/NavigationCard;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->rightItem:Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

    goto :goto_1

    .line 45
    :cond_1
    iput-object v0, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->rightItem:Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

    :goto_1
    return-void
.end method


# virtual methods
.method public getImageAccessibilityText()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->bannerCardViewModel:Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;->getImageAccessibilityText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->bannerCardViewModel:Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;->getImageData()Lcom/ebay/nautilus/domain/data/image/ImageData;

    move-result-object v0

    return-object v0
.end method

.method public getLeftItem()Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->leftItem:Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

    return-object v0
.end method

.method public getRightItem()Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->rightItem:Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

    return-object v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->bannerCardViewModel:Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/banner/BannerCardViewModel;->onBind(Landroid/content/Context;)V

    .line 72
    iget-object v0, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->leftItem:Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->leftItem:Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;->onBind(Landroid/content/Context;)V

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->rightItem:Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/ebay/mobile/browse/EventWithListingsViewModel;->rightItem:Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/guidance/NavigationCardViewModel;->onBind(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public synthetic onBind(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem$-CC;->$default$onBind(Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V

    return-void
.end method
