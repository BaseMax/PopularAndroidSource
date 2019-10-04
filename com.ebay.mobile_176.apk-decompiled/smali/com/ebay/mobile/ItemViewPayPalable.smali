.class public Lcom/ebay/mobile/ItemViewPayPalable;
.super Ljava/lang/Object;
.source "ItemViewPayPalable.java"


# static fields
.field private static final logPaymentHandling:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "eBayPaymentHandling"

    const-string v2, "Log Payment Handling"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/ItemViewPayPalable;->logPaymentHandling:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canUseImmediatePayment(Lcom/ebay/mobile/Item;)Z
    .locals 2

    .line 178
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 179
    sget-object v1, Lcom/ebay/mobile/dcs/DcsBoolean;->PUDOImmediatePayHack:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    .line 181
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->autoPay:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/ebay/mobile/Item;->availableForPickupAndDropoff:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static canUsePaypal(Landroid/content/Context;Lcom/ebay/mobile/Item;)Z
    .locals 2

    .line 34
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;->verifyItemPaymentMethods:Lcom/ebay/nautilus/domain/dcs/DcsDomain$ViewItem$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {p0, p1}, Lcom/ebay/mobile/ItemViewPayPalable;->getUsePayPalErrorBuyerDependent(Landroid/content/Context;Lcom/ebay/mobile/Item;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getUsePayPalError(Landroid/content/Context;Lcom/ebay/mobile/Item;)Ljava/lang/String;
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lcom/ebay/mobile/ItemViewPayPalable;->getUsePayPalErrorBuyerDependent(Landroid/content/Context;Lcom/ebay/mobile/Item;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUsePayPalErrorBuyerDependent(Landroid/content/Context;Lcom/ebay/mobile/Item;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 63
    invoke-static {p1}, Lcom/ebay/mobile/ItemViewPayPalable;->isPaypalShipping(Lcom/ebay/mobile/Item;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 65
    invoke-static {p1}, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->getShippingType(Lcom/ebay/mobile/Item;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NotSpecified"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f12081c

    goto :goto_1

    :cond_1
    :goto_0
    const p1, 0x7f12081d

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 69
    sget-object p0, Lcom/ebay/mobile/ItemViewPayPalable;->logPaymentHandling:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_4

    .line 70
    sget-object p0, Lcom/ebay/mobile/ItemViewPayPalable;->logPaymentHandling:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p1, "fails !isPaypalShipping(item)"

    invoke-static {p0, p1}, Lcom/ebay/nautilus/kernel/util/FwLog;->println(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)V

    goto :goto_2

    .line 72
    :cond_2
    iget-boolean v1, p1, Lcom/ebay/mobile/Item;->autoPay:Z

    const v2, 0x7f12081e

    if-nez v1, :cond_3

    iget-boolean v1, p1, Lcom/ebay/mobile/Item;->isTransacted:Z

    if-nez v1, :cond_3

    iget-object v1, p1, Lcom/ebay/mobile/Item;->buyerCountryCode:Ljava/lang/String;

    invoke-static {p0, v1, p1}, Lcom/ebay/mobile/ItemViewPayPalable;->shipsToCountry(Landroid/content/res/Resources;Ljava/lang/String;Lcom/ebay/mobile/Item;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 74
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 75
    sget-object p0, Lcom/ebay/mobile/ItemViewPayPalable;->logPaymentHandling:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_4

    .line 76
    sget-object p0, Lcom/ebay/mobile/ItemViewPayPalable;->logPaymentHandling:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p1, "fails shipsToCountry"

    invoke-static {p0, p1}, Lcom/ebay/nautilus/kernel/util/FwLog;->println(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)V

    goto :goto_2

    .line 78
    :cond_3
    iget-boolean v1, p1, Lcom/ebay/mobile/Item;->autoPay:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Lcom/ebay/mobile/Item;->isGspItem:Z

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v1

    sget-object v3, Lcom/ebay/mobile/dcs/DcsBoolean;->GSP:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v1, v3}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "US"

    iget-object p1, p1, Lcom/ebay/mobile/Item;->buyerCountryCode:Ljava/lang/String;

    .line 79
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 82
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    sget-object p0, Lcom/ebay/mobile/ItemViewPayPalable;->logPaymentHandling:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_4

    .line 84
    sget-object p0, Lcom/ebay/mobile/ItemViewPayPalable;->logPaymentHandling:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p1, "fails autopay GSP etc."

    invoke-static {p0, p1}, Lcom/ebay/nautilus/kernel/util/FwLog;->println(Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method private static isItemInBuyerCountry(Ljava/lang/String;Lcom/ebay/mobile/Item;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 163
    iget-object p1, p1, Lcom/ebay/mobile/Item;->site:Ljava/lang/String;

    invoke-static {p1}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p1, Lcom/ebay/nautilus/domain/EbaySite;->localeCountry:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isLocalPickupOrNoShippingInCountry(Ljava/lang/String;Lcom/ebay/mobile/Item;)Z
    .locals 1

    .line 145
    invoke-static {p1}, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->getShippingType(Lcom/ebay/mobile/Item;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {p0, p1}, Lcom/ebay/mobile/ItemViewPayPalable;->isItemInBuyerCountry(Ljava/lang/String;Lcom/ebay/mobile/Item;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "NotSpecified"

    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->IsLocalPickupOnly(Lcom/ebay/mobile/Item;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isPaypalShipping(Lcom/ebay/mobile/Item;)Z
    .locals 4

    .line 109
    invoke-static {p0}, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->getShippingType(Lcom/ebay/mobile/Item;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CalculatedDomesticFlatInternational"

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_5

    const-string v1, "FlatDomesticCalculatedInternational"

    .line 111
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Calculated"

    .line 112
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "FreightFlat"

    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "Flat"

    .line 114
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/ebay/mobile/Item;->buyerCountryCode:Ljava/lang/String;

    .line 115
    invoke-static {v1, p0}, Lcom/ebay/mobile/ItemViewPayPalable;->isLocalPickupOrNoShippingInCountry(Ljava/lang/String;Lcom/ebay/mobile/Item;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget-boolean v1, p0, Lcom/ebay/mobile/Item;->isWorldwideShipping:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ebay/mobile/Item;->depositAmount:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "NotSpecified"

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isShipsToUser:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/ebay/mobile/Item;->isWorldwideShipping:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 125
    :cond_2
    iget-object p0, p0, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    iget-object p0, p0, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->shippingServiceCost:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    if-eqz p0, :cond_4

    .line 128
    new-instance v0, Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-direct {v0, p0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;-><init>(Lcom/ebay/nautilus/domain/data/ItemCurrency;)V

    .line 129
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->compareToZero()I

    move-result p0

    if-ltz p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    move v3, v2

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :cond_5
    :goto_0
    return v3
.end method

.method public static shipsToCountry(Landroid/content/res/Resources;Ljava/lang/String;Lcom/ebay/mobile/Item;)Z
    .locals 1

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-static {p1, p2}, Lcom/ebay/mobile/ItemViewPayPalable;->isLocalPickupOrNoShippingInCountry(Ljava/lang/String;Lcom/ebay/mobile/Item;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/ebay/mobile/Item;->shippingInfo:Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;

    .line 101
    invoke-virtual {v0, p0, p2}, Lcom/ebay/mobile/viewitem/ViewItemShippingInfo;->isShippable(Landroid/content/res/Resources;Lcom/ebay/mobile/Item;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 102
    invoke-virtual {p2, p1}, Lcom/ebay/mobile/Item;->isValidShippingCountry(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
