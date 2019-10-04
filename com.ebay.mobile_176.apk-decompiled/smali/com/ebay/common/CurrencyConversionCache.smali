.class public final Lcom/ebay/common/CurrencyConversionCache;
.super Ljava/lang/Object;
.source "CurrencyConversionCache.java"


# static fields
.field private static final INVALID_RATE:Lcom/ebay/common/model/currency/CurrencyConversionRate;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 34
    :try_start_0
    new-instance v7, Lcom/ebay/common/model/currency/CurrencyConversionRate;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x395d1827c000L

    add-long v1, v0, v2

    const-string v3, "1.0"

    const-string v4, "invalid"

    const-string v5, "invalid"

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/ebay/common/model/currency/CurrencyConversionRate;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v7, Lcom/ebay/common/CurrencyConversionCache;->INVALID_RATE:Lcom/ebay/common/model/currency/CurrencyConversionRate;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 41
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to parse INVALID_RATE"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConversionRate(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;)Lcom/ebay/common/model/currency/CurrencyConversionRate;
    .locals 1

    .line 65
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->getCurrency()Lcom/ebay/nautilus/domain/EbayCurrency;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/EbayCurrency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/ebay/common/CurrencyConversionCache;->getConversionRate(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/model/currency/CurrencyConversionRate;

    move-result-object p0

    return-object p0
.end method

.method public static getConversionRate(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/model/currency/CurrencyConversionRate;
    .locals 7

    .line 89
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 91
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/ebay/mobile/dcs/DcsBoolean;->CurrencyConversion:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    sget-object p0, Lcom/ebay/common/CurrencyConversionCache;->INVALID_RATE:Lcom/ebay/common/model/currency/CurrencyConversionRate;

    return-object p0

    .line 95
    :cond_0
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    iget-object v4, v0, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 97
    new-instance v0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/util/Date;)V

    .line 100
    invoke-static {p0}, Lcom/ebay/common/CurrencyConversionCache;->getManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->getConversionRate(Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)Lcom/ebay/common/model/currency/CurrencyConversionRate;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;
    .locals 2

    const-class v0, Lcom/ebay/common/CurrencyConversionCache;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->KEY:Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$KeyParams;

    invoke-static {p0, v1}, Lcom/ebay/nautilus/domain/content/DataManager;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;)Lcom/ebay/nautilus/domain/content/DataManager;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static loadConversionRate(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z
    .locals 7

    .line 119
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 121
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/ebay/mobile/dcs/DcsBoolean;->CurrencyConversion:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 125
    :cond_0
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->getCurrentCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v0

    iget-object v4, v0, Lcom/ebay/nautilus/domain/EbayCountry;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 127
    new-instance v0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/util/Date;)V

    .line 130
    invoke-static {p0}, Lcom/ebay/common/CurrencyConversionCache;->getManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->loadConversionRate(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static willFetch(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 146
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->verifyMain()V

    .line 148
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    .line 149
    sget-object v1, Lcom/ebay/mobile/dcs/DcsBoolean;->CurrencyConversion:Lcom/ebay/mobile/dcs/DcsBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    invoke-static {p0}, Lcom/ebay/common/CurrencyConversionCache;->getManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->willFetch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
