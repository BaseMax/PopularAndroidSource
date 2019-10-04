.class public Lcom/ebay/mobile/addon/AddOnUtil;
.super Ljava/lang/Object;
.source "AddOnUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructAddOnItemTitle(Lcom/ebay/mobile/AddOnItem;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 8
    .param p0    # Lcom/ebay/mobile/AddOnItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 445
    iget-object v0, p0, Lcom/ebay/mobile/AddOnItem;->addOnItemTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/AddOnItem;->price:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ebay/mobile/AddOnItem;->provider:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/ebay/mobile/AddOnItem;->price:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 449
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x2

    .line 448
    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/common/EbayCurrencyUtil;->formatDisplay(Lcom/ebay/nautilus/domain/data/ItemCurrency;Ljava/util/Locale;I)Ljava/lang/String;

    move-result-object v0

    .line 450
    sget-object v1, Lcom/ebay/mobile/addon/AddOnUtil$1;->$SwitchMap$com$ebay$mobile$AddOnItem$AddOnType:[I

    iget-object v3, p0, Lcom/ebay/mobile/AddOnItem;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-virtual {v3}, Lcom/ebay/mobile/AddOnItem$AddOnType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 464
    :pswitch_0
    iget-object v1, p0, Lcom/ebay/mobile/AddOnItem;->addOnAppliedTo:Ljava/lang/String;

    sget-object v6, Lcom/ebay/mobile/AddOnItem$AddOnKind;->AUTOMOTIVE:Lcom/ebay/mobile/AddOnItem$AddOnKind;

    invoke-virtual {v6}, Lcom/ebay/mobile/AddOnItem$AddOnKind;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f120293

    .line 467
    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/ebay/mobile/AddOnItem;->addOnItemTitle:Ljava/lang/String;

    aput-object p0, v2, v4

    aput-object v0, v2, v5

    .line 468
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/ebay/mobile/AddOnItem;->addOnAppliedTo:Ljava/lang/String;

    sget-object v6, Lcom/ebay/mobile/AddOnItem$AddOnKind;->CELLPHONE:Lcom/ebay/mobile/AddOnItem$AddOnKind;

    invoke-virtual {v6}, Lcom/ebay/mobile/AddOnItem$AddOnKind;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f120310

    .line 473
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ebay/mobile/AddOnItem;->addOnItemTitle:Ljava/lang/String;

    aput-object v6, v3, v4

    iget-object p0, p0, Lcom/ebay/mobile/AddOnItem;->provider:Ljava/lang/String;

    aput-object p0, v3, v5

    aput-object v0, v3, v2

    .line 474
    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :pswitch_1
    const v1, 0x7f120743

    const/4 v6, 0x4

    .line 459
    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/ebay/mobile/AddOnItem;->addOnItemTitle:Ljava/lang/String;

    aput-object v7, v6, v4

    iget-object v4, p0, Lcom/ebay/mobile/AddOnItem;->descriptionTitle:Ljava/lang/String;

    aput-object v4, v6, v5

    iget-object p0, p0, Lcom/ebay/mobile/AddOnItem;->provider:Ljava/lang/String;

    aput-object p0, v6, v2

    aput-object v0, v6, v3

    .line 460
    invoke-virtual {p1, v1, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const v1, 0x7f12019b

    .line 454
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/ebay/mobile/AddOnItem;->addOnItemTitle:Ljava/lang/String;

    aput-object v6, v3, v4

    iget-object p0, p0, Lcom/ebay/mobile/AddOnItem;->provider:Ljava/lang/String;

    aput-object p0, v3, v5

    aput-object v0, v3, v2

    .line 455
    invoke-virtual {p1, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertAddOnTypes(Ljava/util/List;Ljava/lang/String;Z)Lcom/ebay/mobile/addon/AvailableAddons;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/ebay/mobile/addon/AvailableAddons;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 174
    :cond_0
    new-instance v0, Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance p1, Lcom/ebay/mobile/addon/AvailableAddons;

    invoke-direct {p1}, Lcom/ebay/mobile/addon/AvailableAddons;-><init>()V

    .line 176
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;

    .line 178
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;->isSupport(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 181
    :cond_2
    invoke-static {v1, p2}, Lcom/ebay/mobile/addon/AddOnUtil;->getDefaultOrFirstItem(Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;Z)Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ebay/mobile/addon/AddOnUtil;->convertToAddonItem(Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;)Lcom/ebay/mobile/AddOnItem;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 183
    invoke-virtual {p1, v1}, Lcom/ebay/mobile/addon/AvailableAddons;->addAddon(Lcom/ebay/mobile/AddOnItem;)V

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static convertAddOnTypes(Ljava/util/List;Z)Lcom/ebay/mobile/addon/AvailableAddons;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;",
            ">;Z)",
            "Lcom/ebay/mobile/addon/AvailableAddons;"
        }
    .end annotation

    const-string v0, ""

    .line 166
    invoke-static {p0, v0, p1}, Lcom/ebay/mobile/addon/AddOnUtil;->convertAddOnTypes(Ljava/util/List;Ljava/lang/String;Z)Lcom/ebay/mobile/addon/AvailableAddons;

    move-result-object p0

    return-object p0
.end method

.method private static convertToAddOnDescription(Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnDetailDescription;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnDetailDescription;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/mobile/addon/AddOnItemDescription;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnDetailDescription;->content:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 297
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnDetailDescription;->content:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnDetailContent;

    if-nez v1, :cond_1

    goto :goto_0

    .line 303
    :cond_1
    new-instance v2, Lcom/ebay/mobile/addon/AddOnItemDescription;

    invoke-direct {v2}, Lcom/ebay/mobile/addon/AddOnItemDescription;-><init>()V

    .line 304
    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnDetailContent;->key:Ljava/lang/String;

    iput-object v3, v2, Lcom/ebay/mobile/addon/AddOnItemDescription;->content:Ljava/lang/String;

    .line 305
    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnDetailContent;->value:Ljava/lang/String;

    const-string v3, "APPLICABLE"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, v2, Lcom/ebay/mobile/addon/AddOnItemDescription;->eligible:Z

    .line 306
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static convertToAddonItem(Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;)Lcom/ebay/mobile/AddOnItem;
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->type:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/mobile/AddOnItem$AddOnType;->parse(Ljava/lang/String;)Lcom/ebay/mobile/AddOnItem$AddOnType;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 211
    iget-object v2, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->addOnAppliedTo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/ebay/mobile/addon/AddOnUtil;->isSupported(Lcom/ebay/mobile/AddOnItem$AddOnType;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 214
    :cond_1
    new-instance v0, Lcom/ebay/mobile/AddOnItem;

    invoke-direct {v0}, Lcom/ebay/mobile/AddOnItem;-><init>()V

    .line 215
    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    .line 216
    iget-object v1, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->addOnAppliedTo:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->addOnAppliedTo:Ljava/lang/String;

    .line 217
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->addOnId:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->id:Ljava/lang/String;

    .line 218
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->provider:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->provider:Ljava/lang/String;

    .line 219
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->description:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    if-eqz v1, :cond_2

    .line 220
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->description:Lcom/ebay/nautilus/domain/data/cos/base/Text;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/cos/base/Text;->content:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->addOnItemTitle:Ljava/lang/String;

    .line 222
    :cond_2
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->image:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$Image;

    if-eqz v1, :cond_3

    .line 225
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->image:Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$Image;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/net/api/viewlisting/Listing$Image;->imageURL:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->imageUrl:Ljava/lang/String;

    .line 228
    :cond_3
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->lowestFixedPrice:Lcom/ebay/nautilus/domain/data/cos/base/Amount;

    if-eqz v1, :cond_4

    .line 229
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->currency:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 230
    new-instance v2, Lcom/ebay/nautilus/domain/data/ItemCurrency;

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->currency:Ljava/lang/String;

    iget-wide v4, v1, Lcom/ebay/nautilus/domain/data/cos/base/Amount;->value:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/ebay/nautilus/domain/data/ItemCurrency;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/ebay/mobile/AddOnItem;->price:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 232
    :cond_4
    iget-object v1, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->addOnTypeSpecifics:Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnSpecific;

    if-eqz v1, :cond_5

    .line 233
    iget-object v1, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->addOnTypeSpecifics:Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnSpecific;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnSpecific;->postalCode:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->postalCode:Ljava/lang/String;

    .line 235
    :cond_5
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->detailDescription:Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnDetailDescription;

    if-eqz v1, :cond_6

    .line 237
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->detailDescription:Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnDetailDescription;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnDetailDescription;->title:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->descriptionTitle:Ljava/lang/String;

    .line 238
    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->detailDescription:Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnDetailDescription;

    invoke-static {v1}, Lcom/ebay/mobile/addon/AddOnUtil;->convertToAddOnDescription(Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnDetailDescription;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->descriptions:Ljava/util/List;

    .line 241
    :cond_6
    iget-object v1, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->learnMore:Ljava/lang/String;

    iput-object v1, v0, Lcom/ebay/mobile/AddOnItem;->learnMoreLink:Ljava/lang/String;

    .line 242
    iget-object v1, v0, Lcom/ebay/mobile/AddOnItem;->learnMoreLink:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 243
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->providerLearnMore:Ljava/lang/String;

    iput-object p1, v0, Lcom/ebay/mobile/AddOnItem;->learnMoreLink:Ljava/lang/String;

    .line 244
    :cond_7
    iget-boolean p1, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->quantityRestriction:Z

    if-eqz p1, :cond_8

    .line 245
    iget p0, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->purchaseLimit:I

    iput p0, v0, Lcom/ebay/mobile/AddOnItem;->purchaseLimit:I

    :cond_8
    return-object v0

    :cond_9
    :goto_0
    return-object v0
.end method

.method public static createAddOnCartKeyParamsFrom(Lcom/ebay/common/Preferences;)Lcom/ebay/nautilus/domain/content/dm/AddOnCartDataManager$KeyParams;
    .locals 1

    const/4 v0, 0x0

    .line 313
    invoke-static {p0, v0}, Lcom/ebay/mobile/addon/AddOnUtil;->doCreateAddOnCartKeyParamsFrom(Lcom/ebay/common/Preferences;Z)Lcom/ebay/nautilus/domain/content/dm/AddOnCartDataManager$KeyParams;

    move-result-object p0

    return-object p0
.end method

.method private static createAddOnItemAddToCartTracking(Lcom/ebay/mobile/AddOnItem;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData;
    .locals 4

    .line 63
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v1, "ShoppingCartAction"

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    const-string v1, "addtocart"

    const-string v2, "1"

    .line 64
    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "itm"

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ebay/mobile/AddOnItem;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ebc"

    .line 66
    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object p0, p0, Lcom/ebay/mobile/AddOnItem;->price:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz p0, :cond_0

    const-string p1, "chtpc"

    .line 70
    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/ItemCurrency;->code:Ljava/lang/String;

    invoke-virtual {v0, p1, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static createAddOnKeyParamsFrom(Lcom/ebay/common/Preferences;JLcom/ebay/mobile/AddOnItem$AddOnType;Ljava/lang/String;I)Lcom/ebay/nautilus/domain/content/dm/AddOnDataManager$KeyParams;
    .locals 10

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v1

    .line 343
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getCurrentSite()Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    .line 349
    iget-object v0, v1, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    :cond_2
    move-object v4, v0

    .line 351
    new-instance p0, Lcom/ebay/nautilus/domain/content/dm/AddOnDataManager$KeyParams;

    invoke-virtual {p3}, Lcom/ebay/mobile/AddOnItem$AddOnType;->name()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    move-wide v5, p1

    move-object v8, p4

    move v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/ebay/nautilus/domain/content/dm/AddOnDataManager$KeyParams;-><init>(Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method public static createCachingAddOnCartKeyParamsFrom(Lcom/ebay/common/Preferences;)Lcom/ebay/nautilus/domain/content/dm/AddOnCartDataManager$KeyParams;
    .locals 1

    const/4 v0, 0x1

    .line 318
    invoke-static {p0, v0}, Lcom/ebay/mobile/addon/AddOnUtil;->doCreateAddOnCartKeyParamsFrom(Lcom/ebay/common/Preferences;Z)Lcom/ebay/nautilus/domain/content/dm/AddOnCartDataManager$KeyParams;

    move-result-object p0

    return-object p0
.end method

.method private static doCreateAddOnCartKeyParamsFrom(Lcom/ebay/common/Preferences;Z)Lcom/ebay/nautilus/domain/content/dm/AddOnCartDataManager$KeyParams;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getAuthentication()Lcom/ebay/nautilus/domain/app/Authentication;

    move-result-object v1

    .line 328
    invoke-virtual {p0}, Lcom/ebay/common/Preferences;->getCurrentSite()Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object p0

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    .line 329
    iget-object v2, v1, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    .line 330
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 333
    :cond_1
    new-instance v0, Lcom/ebay/nautilus/domain/content/dm/AddOnCartDataManager$KeyParams;

    iget-object p0, p0, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/app/Authentication;->iafToken:Ljava/lang/String;

    invoke-direct {v0, p0, v1, p1}, Lcom/ebay/nautilus/domain/content/dm/AddOnCartDataManager$KeyParams;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private static doIsMultiAddonFlow(Lcom/ebay/mobile/Item;Lcom/ebay/mobile/viewitem/ViewItemViewData;Lcom/ebay/mobile/AddOnItem$AddOnType;)Z
    .locals 1

    .line 381
    iget-object p0, p0, Lcom/ebay/mobile/Item;->availableAddons:Lcom/ebay/mobile/addon/AvailableAddons;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->selectedAddOns:Lcom/ebay/mobile/addon/SelectedAddOns;

    if-nez p0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    iget-object p0, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->selectedAddOns:Lcom/ebay/mobile/addon/SelectedAddOns;

    invoke-virtual {p0, p2}, Lcom/ebay/mobile/addon/SelectedAddOns;->hasAddOnSelected(Lcom/ebay/mobile/AddOnItem$AddOnType;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 385
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p0

    sget-object p1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;->multiAddOn:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;

    invoke-interface {p0, p1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public static filterAllAddons(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;",
            ">;"
        }
    .end annotation

    .line 148
    invoke-static {p0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 151
    :cond_0
    new-instance v0, Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 154
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;

    if-eqz v1, :cond_1

    .line 156
    iget-object v2, v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->type:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ebay/mobile/addon/AddOnUtil$AddOnTypeMatcher;->isSupport(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 159
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method private static getDefaultOrFirstItem(Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;Z)Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    .line 252
    iget-object v1, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->addOns:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_5

    .line 257
    iget-object p1, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->addOnsForItem:Ljava/util/List;

    if-nez p1, :cond_1

    return-object v0

    .line 260
    :cond_1
    iget-object p1, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->addOnsForItem:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 262
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 264
    iget-object v2, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->addOns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;

    if-nez v3, :cond_4

    goto :goto_0

    .line 269
    :cond_4
    iget-object v4, v3, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->addOnId:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, v3, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->isDefault:Z

    if-eqz v4, :cond_3

    move-object v0, v3

    goto :goto_0

    .line 277
    :cond_5
    iget-object p0, p0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes;->addOns:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;

    if-nez p1, :cond_7

    goto :goto_1

    :cond_7
    if-nez v0, :cond_8

    move-object v0, p1

    .line 285
    :cond_8
    iget-boolean v1, p1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnTypes$AddOnItem;->isDefault:Z

    if-eqz v1, :cond_6

    return-object p1

    :cond_9
    return-object v0

    :cond_a
    :goto_2
    return-object v0
.end method

.method public static getPostalCode(Lcom/ebay/mobile/Item;Lcom/ebay/mobile/viewitem/ViewItemViewData;Lcom/ebay/mobile/AddOnItem;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/ebay/mobile/Item;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ebay/mobile/viewitem/ViewItemViewData;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/mobile/AddOnItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 391
    iget-object v0, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->selectedAddOns:Lcom/ebay/mobile/addon/SelectedAddOns;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/ebay/mobile/AddOnItem;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->selectedAddOns:Lcom/ebay/mobile/addon/SelectedAddOns;

    iget-object v1, p2, Lcom/ebay/mobile/AddOnItem;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ebay/mobile/addon/SelectedAddOns;->getAddOnInfo(Ljava/lang/String;)Lcom/ebay/mobile/addon/AddOnInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v1, v0, Lcom/ebay/mobile/addon/AddOnInfo;->postalCode:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 395
    iget-object p0, v0, Lcom/ebay/mobile/addon/AddOnInfo;->postalCode:Ljava/lang/String;

    return-object p0

    .line 398
    :cond_0
    iget-object v0, p2, Lcom/ebay/mobile/AddOnItem;->postalCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 399
    iget-object p0, p2, Lcom/ebay/mobile/AddOnItem;->postalCode:Ljava/lang/String;

    return-object p0

    .line 401
    :cond_1
    iget-object p2, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->searchRefinedPostalCode:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 402
    iget-object p0, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->searchRefinedPostalCode:Ljava/lang/String;

    return-object p0

    .line 404
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/Item;->primaryShippingAddress:Lcom/ebay/nautilus/domain/net/api/viewlisting/CachedAddress;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/ebay/mobile/Item;->primaryShippingAddress:Lcom/ebay/nautilus/domain/net/api/viewlisting/CachedAddress;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/net/api/viewlisting/CachedAddress;->postalCode:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 405
    iget-object p0, p0, Lcom/ebay/mobile/Item;->primaryShippingAddress:Lcom/ebay/nautilus/domain/net/api/viewlisting/CachedAddress;

    iget-object p0, p0, Lcom/ebay/nautilus/domain/net/api/viewlisting/CachedAddress;->postalCode:Ljava/lang/String;

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static isEligibleForChooseAddOn(Lcom/ebay/mobile/addon/AvailableAddons;Ljava/lang/Class;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/mobile/addon/AvailableAddons;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 421
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 422
    invoke-static {}, Lcom/ebay/mobile/AddOnItem$AddOnType;->values()[Lcom/ebay/mobile/AddOnItem$AddOnType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 424
    iget-object v6, v5, Lcom/ebay/mobile/AddOnItem$AddOnType;->destination:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 425
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 427
    :cond_2
    invoke-virtual {p0}, Lcom/ebay/mobile/addon/AvailableAddons;->getAll()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/AddOnItem;

    .line 429
    iget-object p1, p1, Lcom/ebay/mobile/AddOnItem;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_4
    return v0
.end method

.method public static isMultiAddOnInstallationFlow(Lcom/ebay/mobile/Item;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Z
    .locals 1

    .line 356
    sget-object v0, Lcom/ebay/mobile/AddOnItem$AddOnType;->INSTALLATION:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-static {p0, p1, v0}, Lcom/ebay/mobile/addon/AddOnUtil;->doIsMultiAddonFlow(Lcom/ebay/mobile/Item;Lcom/ebay/mobile/viewitem/ViewItemViewData;Lcom/ebay/mobile/AddOnItem$AddOnType;)Z

    move-result p0

    return p0
.end method

.method private static isSupported(Lcom/ebay/mobile/AddOnItem$AddOnType;Ljava/lang/String;)Z
    .locals 2
    .param p0    # Lcom/ebay/mobile/AddOnItem$AddOnType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 190
    sget-object v0, Lcom/ebay/mobile/addon/AddOnUtil$1;->$SwitchMap$com$ebay$mobile$AddOnItem$AddOnType:[I

    invoke-virtual {p0}, Lcom/ebay/mobile/AddOnItem$AddOnType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    return v1

    .line 199
    :pswitch_0
    sget-object p0, Lcom/ebay/mobile/AddOnItem$AddOnKind;->AUTOMOTIVE:Lcom/ebay/mobile/AddOnItem$AddOnKind;

    invoke-virtual {p0}, Lcom/ebay/mobile/AddOnItem$AddOnKind;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/ebay/mobile/AddOnItem$AddOnKind;->CELLPHONE:Lcom/ebay/mobile/AddOnItem$AddOnKind;

    .line 200
    invoke-virtual {p0}, Lcom/ebay/mobile/AddOnItem$AddOnKind;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 197
    :pswitch_1
    sget-object p0, Lcom/ebay/mobile/AddOnItem$AddOnKind;->AUTOMOTIVE:Lcom/ebay/mobile/AddOnItem$AddOnKind;

    invoke-virtual {p0}, Lcom/ebay/mobile/AddOnItem$AddOnKind;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    .line 195
    :pswitch_2
    sget-object p0, Lcom/ebay/mobile/AddOnItem$AddOnKind;->TIRE:Lcom/ebay/mobile/AddOnItem$AddOnKind;

    invoke-virtual {p0}, Lcom/ebay/mobile/AddOnItem$AddOnKind;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :pswitch_3
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isSupportedMultiAddOnXoFlow(Lcom/ebay/mobile/Item;Lcom/ebay/mobile/viewitem/ViewItemViewData;)Z
    .locals 2

    .line 368
    iget-object p0, p0, Lcom/ebay/mobile/Item;->availableAddons:Lcom/ebay/mobile/addon/AvailableAddons;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->selectedAddOns:Lcom/ebay/mobile/addon/SelectedAddOns;

    if-nez p0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;->multiAddOn:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Verticals$B;

    invoke-interface {p0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 372
    iget-object p0, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->selectedAddOns:Lcom/ebay/mobile/addon/SelectedAddOns;

    sget-object v1, Lcom/ebay/mobile/AddOnItem$AddOnType;->WARRANTY:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/addon/SelectedAddOns;->hasAddOnSelected(Lcom/ebay/mobile/AddOnItem$AddOnType;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->selectedAddOns:Lcom/ebay/mobile/addon/SelectedAddOns;

    sget-object v1, Lcom/ebay/mobile/AddOnItem$AddOnType;->SUPPORT:Lcom/ebay/mobile/AddOnItem$AddOnType;

    .line 373
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/addon/SelectedAddOns;->hasAddOnSelected(Lcom/ebay/mobile/AddOnItem$AddOnType;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/ebay/mobile/viewitem/ViewItemViewData;->selectedAddOns:Lcom/ebay/mobile/addon/SelectedAddOns;

    sget-object p1, Lcom/ebay/mobile/AddOnItem$AddOnType;->MANUAL:Lcom/ebay/mobile/AddOnItem$AddOnType;

    .line 374
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/addon/SelectedAddOns;->hasAddOnSelected(Lcom/ebay/mobile/AddOnItem$AddOnType;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v0
.end method

.method public static startMultiAddOnCheckout(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 412
    invoke-static {p0, p1, v0}, Lcom/ebay/mobile/shoppingcart/util/ShoppingCartUtil;->startXoneorCartCheckout(Landroid/app/Activity;Ljava/lang/String;Z)Z

    return-void
.end method

.method public static toAddItemInputs(Ljava/lang/Long;Ljava/lang/String;ILcom/ebay/mobile/addon/SelectedAddOns;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "I",
            "Lcom/ebay/mobile/addon/SelectedAddOns;",
            ")",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/shopcart/AddItemsPayload$AddItemInput;",
            ">;"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v1, Lcom/ebay/nautilus/domain/data/experience/shopcart/AddItemsPayload$AddItemInput;

    .line 87
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2}, Lcom/ebay/nautilus/domain/data/experience/shopcart/AddItemsPayload$AddItemInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    .line 92
    invoke-virtual {p3}, Lcom/ebay/mobile/addon/SelectedAddOns;->getAddOns()Ljava/util/Map;

    move-result-object p0

    .line 93
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 95
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/mobile/addon/AddOnInfo;

    iget-object p3, p3, Lcom/ebay/mobile/addon/AddOnInfo;->quantity:Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-nez p3, :cond_0

    move p3, p2

    .line 99
    :cond_0
    new-instance v1, Lcom/ebay/nautilus/domain/data/experience/shopcart/AddItemsPayload$AddItemInput;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {v1, p1, v2, p3}, Lcom/ebay/nautilus/domain/data/experience/shopcart/AddItemsPayload$AddItemInput;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static toAddOnCartCreationData(Ljava/lang/Long;Ljava/lang/String;ILcom/ebay/mobile/addon/SelectedAddOns;)Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData;
    .locals 3

    .line 116
    new-instance v0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData;

    invoke-direct {v0}, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData;-><init>()V

    .line 117
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData;->itemId:Ljava/lang/String;

    .line 118
    iput-object p1, v0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData;->variationId:Ljava/lang/String;

    .line 119
    iput p2, v0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData;->quantity:I

    .line 120
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iput-object p0, v0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData;->addOns:Ljava/util/List;

    if-nez p3, :cond_0

    return-object v0

    .line 125
    :cond_0
    invoke-virtual {p3}, Lcom/ebay/mobile/addon/SelectedAddOns;->getAddOns()Ljava/util/Map;

    move-result-object p0

    .line 126
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 128
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ebay/mobile/addon/AddOnInfo;

    if-nez p3, :cond_1

    goto :goto_0

    .line 132
    :cond_1
    new-instance v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData$AddOn;

    invoke-direct {v1}, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData$AddOn;-><init>()V

    .line 133
    iget-object v2, v0, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData;->addOns:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v2, p3, Lcom/ebay/mobile/addon/AddOnInfo;->quantity:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_2

    .line 135
    iget-object v2, p3, Lcom/ebay/mobile/addon/AddOnInfo;->quantity:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData$AddOn;->quantity:I

    goto :goto_1

    .line 137
    :cond_2
    iput p2, v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData$AddOn;->quantity:I

    .line 138
    :goto_1
    iget-object v2, p3, Lcom/ebay/mobile/addon/AddOnInfo;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    if-eqz v2, :cond_3

    .line 139
    iget-object p3, p3, Lcom/ebay/mobile/addon/AddOnInfo;->type:Lcom/ebay/mobile/AddOnItem$AddOnType;

    invoke-virtual {p3}, Lcom/ebay/mobile/AddOnItem$AddOnType;->name()Ljava/lang/String;

    move-result-object p3

    iput-object p3, v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData$AddOn;->type:Ljava/lang/String;

    .line 141
    :cond_3
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v1, Lcom/ebay/nautilus/domain/data/multiaddon/AddOnCartCreationData$AddOn;->addOnId:Ljava/lang/String;

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static trackAddOnAddToCart(Lcom/ebay/mobile/addon/AvailableAddons;Lcom/ebay/mobile/addon/SelectedAddOns;Ljava/lang/String;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 2

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-nez p3, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/addon/AvailableAddons;->getAll()Ljava/util/List;

    move-result-object p0

    .line 50
    invoke-virtual {p1}, Lcom/ebay/mobile/addon/SelectedAddOns;->getAddOns()Ljava/util/Map;

    move-result-object p1

    .line 51
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/AddOnItem;

    .line 53
    iget-object v1, v0, Lcom/ebay/mobile/AddOnItem;->id:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    invoke-static {v0, p2}, Lcom/ebay/mobile/addon/AddOnUtil;->createAddOnItemAddToCartTracking(Lcom/ebay/mobile/AddOnItem;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    :goto_1
    return-void
.end method
