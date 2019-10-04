.class public Lcom/ebay/mobile/addon/warranty/WarrantyUtil;
.super Ljava/lang/Object;
.source "WarrantyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructAddOnItemTitle(Lcom/ebay/mobile/AddOnItem;Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/ebay/mobile/AddOnItem;->addOnItemTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/AddOnItem;->price:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/AddOnItem;->provider:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/ebay/mobile/AddOnItem;->price:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 132
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    .line 131
    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 133
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ebay/mobile/AddOnItem;->addOnItemTitle:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object p0, p0, Lcom/ebay/mobile/AddOnItem;->provider:Ljava/lang/String;

    aput-object p0, v1, v3

    aput-object v0, v1, v2

    invoke-virtual {p1, p2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertPurchasableWarranty(Ljava/util/List;)Lcom/ebay/mobile/addon/AvailableAddons;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;",
            ">;)",
            "Lcom/ebay/mobile/addon/AvailableAddons;"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/ebay/mobile/addon/AvailableAddons;

    invoke-direct {v0}, Lcom/ebay/mobile/addon/AvailableAddons;-><init>()V

    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;

    if-eqz v2, :cond_0

    .line 33
    iget-object v3, v2, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->defaultWarranty:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    invoke-static {v2}, Lcom/ebay/mobile/addon/warranty/WarrantyUtil;->toAddOnItem(Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;)Lcom/ebay/mobile/AddOnItem;

    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Lcom/ebay/mobile/addon/AvailableAddons;->addAddon(Lcom/ebay/mobile/AddOnItem;)V

    return-object v0

    :cond_1
    const/4 v1, 0x0

    .line 41
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 43
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;

    invoke-static {p0}, Lcom/ebay/mobile/addon/warranty/WarrantyUtil;->toAddOnItem(Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;)Lcom/ebay/mobile/AddOnItem;

    move-result-object p0

    .line 44
    invoke-virtual {v0, p0}, Lcom/ebay/mobile/addon/AvailableAddons;->addAddon(Lcom/ebay/mobile/AddOnItem;)V

    :cond_2
    return-object v0
.end method

.method private static convertToAddOnDescription(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/cos/base/NameValuePair;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ebay/mobile/addon/AddOnItemDescription;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/cos/base/NameValuePair;

    if-eqz v1, :cond_0

    .line 80
    new-instance v2, Lcom/ebay/mobile/addon/AddOnItemDescription;

    invoke-direct {v2}, Lcom/ebay/mobile/addon/AddOnItemDescription;-><init>()V

    .line 81
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/cos/base/NameValuePair;->name:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    if-eqz v3, :cond_1

    .line 82
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/cos/base/NameValuePair;->name:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/cos/base/Text;->content:Ljava/lang/String;

    iput-object v3, v2, Lcom/ebay/mobile/addon/AddOnItemDescription;->content:Ljava/lang/String;

    .line 84
    :cond_1
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/cos/base/NameValuePair;->value:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    iget-object v3, v3, Lcom/ebay/nautilus/domain/data/cos/base/Text;->content:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 86
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/cos/base/NameValuePair;->value:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/cos/base/Text;->content:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/ebay/mobile/addon/AddOnItemDescription;->eligible:Z

    .line 88
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public static shouldUseWarrantyCartFlow(Lcom/ebay/mobile/viewitem/ViewItemViewData;Lcom/ebay/mobile/Item;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 106
    iget-object v1, p0, Lcom/ebay/mobile/viewitem/ViewItemViewData;->selectedAddOns:Lcom/ebay/mobile/addon/SelectedAddOns;

    if-eqz v1, :cond_5

    if-eqz p1, :cond_5

    iget-boolean p1, p1, Lcom/ebay/mobile/Item;->isCartable:Z

    if-nez p1, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/ebay/mobile/viewitem/ViewItemViewData;->selectedAddOns:Lcom/ebay/mobile/addon/SelectedAddOns;

    .line 110
    sget-object p1, Lcom/ebay/mobile/AddOnItem$AddOnType;->WARRANTY:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-virtual {p0, p1}, Lcom/ebay/mobile/addon/SelectedAddOns;->hasAddOnSelected(Lcom/ebay/mobile/AddOnItem$AddOnType;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/ebay/mobile/AddOnItem$AddOnType;->INSTALLATION:Lcom/ebay/mobile/AddOnItem$AddOnType;

    .line 111
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/addon/SelectedAddOns;->hasAddOnSelected(Lcom/ebay/mobile/AddOnItem$AddOnType;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p0

    .line 117
    sget-object p1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;->warranty:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;

    invoke-interface {p0, p1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;->multiAddOn:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;

    invoke-interface {p0, p1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0

    :cond_5
    :goto_1
    return v0
.end method

.method private static toAddOnItem(Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;)Lcom/ebay/mobile/AddOnItem;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 52
    new-instance v0, Lcom/ebay/mobile/AddOnItem;

    invoke-direct {v0}, Lcom/ebay/mobile/AddOnItem;-><init>()V

    .line 53
    sget-object v1, Lcom/ebay/mobile/AddOnItem$AddOnType;->WARRANTY:Lcom/ebay/mobile/AddOnItem$AddOnType;

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    .line 54
    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->warrantyId:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->id:Ljava/lang/String;

    .line 55
    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->imageURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->imageUrl:Ljava/lang/String;

    .line 56
    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->warrantyDescription:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    if-eqz v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->warrantyDescription:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/cos/base/Text;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->addOnItemTitle:Ljava/lang/String;

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->price:Lcom/ebay/nautilus/domain/data/BaseCommonType$Amount;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->price:Lcom/ebay/nautilus/domain/data/BaseCommonType$Amount;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/BaseCommonType$Amount;->currency:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 60
    new-instance v1, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v2, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->price:Lcom/ebay/nautilus/domain/data/BaseCommonType$Amount;

    iget-object v2, v2, Lcom/ebay/nautilus/domain/data/BaseCommonType$Amount;->currency:Ljava/lang/String;

    iget-object v3, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->price:Lcom/ebay/nautilus/domain/data/BaseCommonType$Amount;

    iget-wide v3, v3, Lcom/ebay/nautilus/domain/data/BaseCommonType$Amount;->value:D

    .line 61
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->price:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->warrantyProvider:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->warrantyProvider:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/cos/base/Text;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->provider:Ljava/lang/String;

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->detailDescription:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->detailDescription:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 68
    iget-object v1, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->detailDescription:Ljava/util/List;

    invoke-static {v1}, Lcom/ebay/mobile/addon/warranty/WarrantyUtil;->convertToAddOnDescription(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->descriptions:Ljava/util/List;

    .line 69
    :cond_3
    iget-object p0, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$PurchasableWarranty;->learnMoreURL:Ljava/lang/String;

    iput-object p0, v0, Lcom/ebay/mobile/AddOnItem;->learnMoreLink:Ljava/lang/String;

    return-object v0
.end method
