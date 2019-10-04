.class public final Lcom/ebay/common/view/util/EbayCountryManager;
.super Ljava/lang/Object;
.source "EbayCountryManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/view/util/EbayCountryManager$Default;,
        Lcom/ebay/common/view/util/EbayCountryManager$CountryResources;
    }
.end annotation


# static fields
.field protected static final APP_ID:Ljava/lang/String; = "2571"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final countryToCountryWithLanguageResourceId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final countryToFlagResourceId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final detectLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

.field private static final shippingEnumToRegionResourceId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 45
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "CountryAutoDetect"

    const-string v2, "Country Auto-Detect mode"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->detectLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->countryToFlagResourceId:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->countryToCountryWithLanguageResourceId:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    .line 63
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "Americas"

    const v2, 0x7f120b61

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "Asia"

    const v2, 0x7f120b5a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "Caribbean"

    const v2, 0x7f120b5b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "Europe"

    const v2, 0x7f120b5d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "EuropeanUnion"

    const v2, 0x7f120b5e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "European Union"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "LatinAmerica"

    const v2, 0x7f120b5f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "Latin America"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "MiddleEast"

    const v2, 0x7f120b60

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "Middle East"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "NorthAmerica"

    const v2, 0x7f120b62

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "North America"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "Oceania"

    const v2, 0x7f120b63

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "SouthAmerica"

    const v2, 0x7f120b64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "South America"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "Worldwide"

    const v2, 0x7f120b67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "UK"

    const v2, 0x7f1203ca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "WillNotShip"

    const v2, 0x7f1200ac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "Southeast Asia"

    const v2, 0x7f120b65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "Central America and Caribbean"

    const v2, 0x7f120b5c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "Africa"

    const v2, 0x7f120b58

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "US Protectorates"

    const v2, 0x7f120b66

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "Alaska/Hawaii"

    const v2, 0x7f120b59

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    const-string v1, "APO/FPO"

    const v2, 0x7f120b57

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 40
    invoke-static {p0, p1, p2}, Lcom/ebay/common/view/util/EbayCountryManager;->getFlagResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/ebay/common/view/util/EbayCountryManager;->getCountryWithLanguageName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addResponsiveFlowParams(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 452
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 455
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 456
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 458
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string/jumbo v1, "srcAppId"

    const-string v2, "2571"

    .line 459
    invoke-virtual {p0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string/jumbo v1, "rmvHdr"

    const-string/jumbo v2, "true"

    .line 460
    invoke-virtual {p0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "mobile"

    const-string v2, "1"

    .line 461
    invoke-virtual {p0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "lang"

    .line 462
    invoke-virtual {p0, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "clientapptype"

    const-string v1, "12"

    .line 463
    invoke-virtual {p0, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 465
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static detectCountry(Landroid/content/Context;)Lcom/ebay/nautilus/domain/EbayCountry;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 348
    invoke-static {p0, v0}, Lcom/ebay/common/view/util/EbayCountryManager;->detectCountry(Landroid/content/Context;Z)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p0

    return-object p0
.end method

.method public static detectCountry(Landroid/content/Context;Z)Lcom/ebay/nautilus/domain/EbayCountry;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 363
    invoke-static {p0, p1}, Lcom/ebay/common/view/util/EbayCountryManager;->detectCountryWithoutDefaults(Landroid/content/Context;Z)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "US"

    .line 368
    invoke-static {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p0

    .line 369
    sget-object p1, Lcom/ebay/common/view/util/EbayCountryManager;->detectLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_0

    .line 370
    sget-object p1, Lcom/ebay/common/view/util/EbayCountryManager;->detectLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "Detected country from default: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static detectCountryWithoutDefaults(Landroid/content/Context;Z)Lcom/ebay/nautilus/domain/EbayCountry;
    .locals 6
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 394
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/common/Preferences;->getShipToPostalCode()Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 397
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/PostalCodeSpecification;->countryCode:Ljava/lang/String;

    invoke-static {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    .line 398
    sget-object v3, Lcom/ebay/common/view/util/EbayCountryManager;->detectLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v3, v3, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v3, :cond_1

    .line 399
    sget-object v3, Lcom/ebay/common/view/util/EbayCountryManager;->detectLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v4, "Detected country from shipping address: %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p1, v0

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    .line 406
    invoke-static {}, Lcom/ebay/common/UserCache;->getUserDetails()Lcom/ebay/common/model/UserDetail;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 407
    iget-object v4, v3, Lcom/ebay/common/model/UserDetail;->registrationAddress:Lcom/ebay/common/model/UserDetail$Address;

    if-eqz v4, :cond_2

    .line 408
    iget-object p1, v3, Lcom/ebay/common/model/UserDetail;->registrationAddress:Lcom/ebay/common/model/UserDetail$Address;

    iget-object p1, p1, Lcom/ebay/common/model/UserDetail$Address;->country:Ljava/lang/String;

    invoke-static {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    .line 409
    :cond_2
    sget-object v3, Lcom/ebay/common/view/util/EbayCountryManager;->detectLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v3, v3, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v3, :cond_3

    .line 410
    sget-object v3, Lcom/ebay/common/view/util/EbayCountryManager;->detectLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v4, "Detected country from reg address: %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_3
    if-nez p1, :cond_7

    if-eqz p0, :cond_7

    const-string v3, "phone"

    .line 418
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 419
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    .line 420
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 422
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    .line 423
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 425
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 426
    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    .line 428
    :cond_6
    sget-object p0, Lcom/ebay/common/view/util/EbayCountryManager;->detectLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_7

    .line 429
    sget-object p0, Lcom/ebay/common/view/util/EbayCountryManager;->detectLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "Detected country from telephony manager: %s"

    new-array v3, v2, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_7
    if-nez p1, :cond_8

    .line 435
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 436
    invoke-static {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getInstance(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object p1

    .line 437
    sget-object p0, Lcom/ebay/common/view/util/EbayCountryManager;->detectLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p0, p0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p0, :cond_8

    .line 438
    sget-object p0, Lcom/ebay/common/view/util/EbayCountryManager;->detectLog:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "Detected country from device locale: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_8
    return-object p1
.end method

.method public static getBuyerProtectionPageTitle()I
    .locals 2
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .line 1669
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getCurrentSite()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/nautilus/domain/EbaySite;->getInstanceFromId(Ljava/lang/String;)Lcom/ebay/nautilus/domain/EbaySite;

    move-result-object v0

    iget v0, v0, Lcom/ebay/nautilus/domain/EbaySite;->idInt:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4d

    if-eq v0, v1, :cond_0

    const v0, 0x7f120f14

    return v0

    :cond_0
    const v0, 0x7f12009e

    return v0

    :cond_1
    const v0, 0x7f12009f

    return v0
.end method

.method public static getCountryName(Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 0

    .line 127
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ebay/common/view/util/EbayCountryManager;->getCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 111
    invoke-static {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->normalizeCountryCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object p0

    .line 115
    :cond_0
    new-instance p0, Ljava/util/Locale;

    const-string v1, ""

    invoke-direct {p0, v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCountryWithLanguageName(Landroid/content/res/Resources;Lcom/ebay/nautilus/domain/EbayCountry;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->serialize()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/EbayCountry;->getSiteLanguageCode()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p0, v0, v1, p1}, Lcom/ebay/common/view/util/EbayCountryManager;->getCountryWithLanguageName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getCountryWithLanguageName(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1214
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->countryToCountryWithLanguageResourceId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1217
    invoke-static {p2, p3}, Lcom/ebay/common/view/util/EbayCountryManager;->getCountryWithLanguageNameId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1218
    sget-object p3, Lcom/ebay/common/view/util/EbayCountryManager;->countryToCountryWithLanguageResourceId:Ljava/util/Map;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Lcom/ebay/common/view/util/EbayCountryManager;->getCountryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static getCountryWithLanguageNameId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 1647
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 1649
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p1, v1

    .line 1650
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, p1

    const p1, 0x66724245

    if-eq p0, p1, :cond_3

    const p1, 0x66724341

    if-eq p0, p1, :cond_2

    const p1, 0x6e6c4245

    if-eq p0, p1, :cond_1

    return v0

    :cond_1
    const p0, 0x7f1203c8

    return p0

    :cond_2
    const p0, 0x7f1203c9

    return p0

    :cond_3
    const p0, 0x7f1203c7

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method public static getDistanceResourceId(Lcom/ebay/nautilus/domain/EbayCountry;)I
    .locals 0

    if-eqz p0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/ebay/nautilus/domain/EbayCountry;->usesMetric()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f120787

    goto :goto_1

    :cond_1
    :goto_0
    const p0, 0x7f120693

    :goto_1
    return p0
.end method

.method private static getFlagResourceId(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 1198
    sget-object p0, Lcom/ebay/common/view/util/EbayCountryManager;->countryToFlagResourceId:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    .line 1201
    invoke-static {p2}, Lcom/ebay/common/view/util/EbayCountryManager;->getFlagResourceId(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1203
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_0

    const p0, 0x7f0801ce

    .line 1204
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 1206
    :cond_0
    sget-object p2, Lcom/ebay/common/view/util/EbayCountryManager;->countryToFlagResourceId:Ljava/util/Map;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static getFlagResourceId(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1226
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto/16 :goto_0

    .line 1228
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 1229
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    or-int/2addr p0, v1

    sparse-switch p0, :sswitch_data_0

    return v0

    :sswitch_0
    const p0, 0x7f0801cd

    return p0

    :sswitch_1
    const p0, 0x7f0801cc

    return p0

    :sswitch_2
    const p0, 0x7f0801cb

    return p0

    :sswitch_3
    const p0, 0x7f0801ca

    return p0

    :sswitch_4
    const p0, 0x7f0801c9

    return p0

    :sswitch_5
    const p0, 0x7f0801c8

    return p0

    :sswitch_6
    const p0, 0x7f0801c7

    return p0

    :sswitch_7
    const p0, 0x7f0801c6

    return p0

    :sswitch_8
    const p0, 0x7f0801c5

    return p0

    :sswitch_9
    const p0, 0x7f0801c4

    return p0

    :sswitch_a
    const p0, 0x7f0801c3

    return p0

    :sswitch_b
    const p0, 0x7f0801c2

    return p0

    :sswitch_c
    const p0, 0x7f0801c1

    return p0

    :sswitch_d
    const p0, 0x7f0801c0

    return p0

    :sswitch_e
    const p0, 0x7f0801bf

    return p0

    :sswitch_f
    const p0, 0x7f0801be

    return p0

    :sswitch_10
    const p0, 0x7f0801bd

    return p0

    :sswitch_11
    const p0, 0x7f0801bc

    return p0

    :sswitch_12
    const p0, 0x7f0801bb

    return p0

    :sswitch_13
    const p0, 0x7f0801ba

    return p0

    :sswitch_14
    const p0, 0x7f0801b9

    return p0

    :sswitch_15
    const p0, 0x7f0801b8

    return p0

    :sswitch_16
    const p0, 0x7f0801b7

    return p0

    :sswitch_17
    const p0, 0x7f0801b6

    return p0

    :sswitch_18
    const p0, 0x7f0801b5

    return p0

    :sswitch_19
    const p0, 0x7f0801b4

    return p0

    :sswitch_1a
    const p0, 0x7f0801b3

    return p0

    :sswitch_1b
    const p0, 0x7f0801b2

    return p0

    :sswitch_1c
    const p0, 0x7f0801b1

    return p0

    :sswitch_1d
    const p0, 0x7f0801b0

    return p0

    :sswitch_1e
    const p0, 0x7f0801af

    return p0

    :sswitch_1f
    const p0, 0x7f0801ae

    return p0

    :sswitch_20
    const p0, 0x7f0801ad

    return p0

    :sswitch_21
    const p0, 0x7f0801ac

    return p0

    :sswitch_22
    const p0, 0x7f0801ab

    return p0

    :sswitch_23
    const p0, 0x7f0801aa

    return p0

    :sswitch_24
    const p0, 0x7f0801a9

    return p0

    :sswitch_25
    const p0, 0x7f0801a8

    return p0

    :sswitch_26
    const p0, 0x7f0801a7

    return p0

    :sswitch_27
    const p0, 0x7f0801a6

    return p0

    :sswitch_28
    const p0, 0x7f0801a5

    return p0

    :sswitch_29
    const p0, 0x7f0801a4

    return p0

    :sswitch_2a
    const p0, 0x7f0801a3

    return p0

    :sswitch_2b
    const p0, 0x7f0801a2

    return p0

    :sswitch_2c
    const p0, 0x7f0801a1

    return p0

    :sswitch_2d
    const p0, 0x7f0801a0

    return p0

    :sswitch_2e
    const p0, 0x7f08019f

    return p0

    :sswitch_2f
    const p0, 0x7f08019e

    return p0

    :sswitch_30
    const p0, 0x7f08019d

    return p0

    :sswitch_31
    const p0, 0x7f08019c

    return p0

    :sswitch_32
    const p0, 0x7f08019b

    return p0

    :sswitch_33
    const p0, 0x7f08019a

    return p0

    :sswitch_34
    const p0, 0x7f080199

    return p0

    :sswitch_35
    const p0, 0x7f080198

    return p0

    :sswitch_36
    const p0, 0x7f080197

    return p0

    :sswitch_37
    const p0, 0x7f080196

    return p0

    :sswitch_38
    const p0, 0x7f080195

    return p0

    :sswitch_39
    const p0, 0x7f080194

    return p0

    :sswitch_3a
    const p0, 0x7f080193

    return p0

    :sswitch_3b
    const p0, 0x7f080192

    return p0

    :sswitch_3c
    const p0, 0x7f080191

    return p0

    :sswitch_3d
    const p0, 0x7f080190

    return p0

    :sswitch_3e
    const p0, 0x7f08018f

    return p0

    :sswitch_3f
    const p0, 0x7f08018e

    return p0

    :sswitch_40
    const p0, 0x7f08018d

    return p0

    :sswitch_41
    const p0, 0x7f08018c

    return p0

    :sswitch_42
    const p0, 0x7f08018b

    return p0

    :sswitch_43
    const p0, 0x7f08018a

    return p0

    :sswitch_44
    const p0, 0x7f080189

    return p0

    :sswitch_45
    const p0, 0x7f080188

    return p0

    :sswitch_46
    const p0, 0x7f080187

    return p0

    :sswitch_47
    const p0, 0x7f080186

    return p0

    :sswitch_48
    const p0, 0x7f080185

    return p0

    :sswitch_49
    const p0, 0x7f080184

    return p0

    :sswitch_4a
    const p0, 0x7f080183

    return p0

    :sswitch_4b
    const p0, 0x7f080182

    return p0

    :sswitch_4c
    const p0, 0x7f080181

    return p0

    :sswitch_4d
    const p0, 0x7f080180

    return p0

    :sswitch_4e
    const p0, 0x7f08017f

    return p0

    :sswitch_4f
    const p0, 0x7f08017e

    return p0

    :sswitch_50
    const p0, 0x7f08017d

    return p0

    :sswitch_51
    const p0, 0x7f08017c

    return p0

    :sswitch_52
    const p0, 0x7f08017b

    return p0

    :sswitch_53
    const p0, 0x7f08017a

    return p0

    :sswitch_54
    const p0, 0x7f080179

    return p0

    :sswitch_55
    const p0, 0x7f080178

    return p0

    :sswitch_56
    const p0, 0x7f080177

    return p0

    :sswitch_57
    const p0, 0x7f080176

    return p0

    :sswitch_58
    const p0, 0x7f080175

    return p0

    :sswitch_59
    const p0, 0x7f080174

    return p0

    :sswitch_5a
    const p0, 0x7f080173

    return p0

    :sswitch_5b
    const p0, 0x7f080172

    return p0

    :sswitch_5c
    const p0, 0x7f080171

    return p0

    :sswitch_5d
    const p0, 0x7f080170

    return p0

    :sswitch_5e
    const p0, 0x7f08016f

    return p0

    :sswitch_5f
    const p0, 0x7f08016e

    return p0

    :sswitch_60
    const p0, 0x7f08016d

    return p0

    :sswitch_61
    const p0, 0x7f08016c

    return p0

    :sswitch_62
    const p0, 0x7f08016b

    return p0

    :sswitch_63
    const p0, 0x7f08016a

    return p0

    :sswitch_64
    const p0, 0x7f080169

    return p0

    :sswitch_65
    const p0, 0x7f080168

    return p0

    :sswitch_66
    const p0, 0x7f080167

    return p0

    :sswitch_67
    const p0, 0x7f080166

    return p0

    :sswitch_68
    const p0, 0x7f080165

    return p0

    :sswitch_69
    const p0, 0x7f080164

    return p0

    :sswitch_6a
    const p0, 0x7f080163

    return p0

    :sswitch_6b
    const p0, 0x7f080162

    return p0

    :sswitch_6c
    const p0, 0x7f080161

    return p0

    :sswitch_6d
    const p0, 0x7f080160

    return p0

    :sswitch_6e
    const p0, 0x7f08015f

    return p0

    :sswitch_6f
    const p0, 0x7f08015e

    return p0

    :sswitch_70
    const p0, 0x7f08015d

    return p0

    :sswitch_71
    const p0, 0x7f08015c

    return p0

    :sswitch_72
    const p0, 0x7f08015b

    return p0

    :sswitch_73
    const p0, 0x7f08015a

    return p0

    :sswitch_74
    const p0, 0x7f080159

    return p0

    :sswitch_75
    const p0, 0x7f080158

    return p0

    :sswitch_76
    const p0, 0x7f080157

    return p0

    :sswitch_77
    const p0, 0x7f080156

    return p0

    :sswitch_78
    const p0, 0x7f080155

    return p0

    :sswitch_79
    const p0, 0x7f080154

    return p0

    :sswitch_7a
    const p0, 0x7f080153

    return p0

    :sswitch_7b
    const p0, 0x7f080152

    return p0

    :sswitch_7c
    const p0, 0x7f080151

    return p0

    :sswitch_7d
    const p0, 0x7f080150

    return p0

    :sswitch_7e
    const p0, 0x7f08014f

    return p0

    :sswitch_7f
    const p0, 0x7f08014e

    return p0

    :sswitch_80
    const p0, 0x7f08014d

    return p0

    :sswitch_81
    const p0, 0x7f08014c

    return p0

    :sswitch_82
    const p0, 0x7f08014b

    return p0

    :sswitch_83
    const p0, 0x7f08014a

    return p0

    :sswitch_84
    const p0, 0x7f080149

    return p0

    :sswitch_85
    const p0, 0x7f080148

    return p0

    :sswitch_86
    const p0, 0x7f080147

    return p0

    :sswitch_87
    const p0, 0x7f080146

    return p0

    :sswitch_88
    const p0, 0x7f080145

    return p0

    :sswitch_89
    const p0, 0x7f080144

    return p0

    :sswitch_8a
    const p0, 0x7f080143

    return p0

    :sswitch_8b
    const p0, 0x7f080142

    return p0

    :sswitch_8c
    const p0, 0x7f080141

    return p0

    :sswitch_8d
    const p0, 0x7f080140

    return p0

    :sswitch_8e
    const p0, 0x7f08013f

    return p0

    :sswitch_8f
    const p0, 0x7f08013e

    return p0

    :sswitch_90
    const p0, 0x7f08013d

    return p0

    :sswitch_91
    const p0, 0x7f08013c

    return p0

    :sswitch_92
    const p0, 0x7f08013b

    return p0

    :sswitch_93
    const p0, 0x7f08013a

    return p0

    :sswitch_94
    const p0, 0x7f080139

    return p0

    :sswitch_95
    const p0, 0x7f080138

    return p0

    :sswitch_96
    const p0, 0x7f080137

    return p0

    :sswitch_97
    const p0, 0x7f080136

    return p0

    :sswitch_98
    const p0, 0x7f080135

    return p0

    :sswitch_99
    const p0, 0x7f080134

    return p0

    :sswitch_9a
    const p0, 0x7f080133

    return p0

    :sswitch_9b
    const p0, 0x7f080132

    return p0

    :sswitch_9c
    const p0, 0x7f080131

    return p0

    :sswitch_9d
    const p0, 0x7f080130

    return p0

    :sswitch_9e
    const p0, 0x7f08012f

    return p0

    :sswitch_9f
    const p0, 0x7f08012e

    return p0

    :sswitch_a0
    const p0, 0x7f08012d

    return p0

    :sswitch_a1
    const p0, 0x7f08012c

    return p0

    :sswitch_a2
    const p0, 0x7f08012b

    return p0

    :sswitch_a3
    const p0, 0x7f08012a

    return p0

    :sswitch_a4
    const p0, 0x7f080129

    return p0

    :sswitch_a5
    const p0, 0x7f080128

    return p0

    :sswitch_a6
    const p0, 0x7f080127

    return p0

    :sswitch_a7
    const p0, 0x7f080126

    return p0

    :sswitch_a8
    const p0, 0x7f080125

    return p0

    :sswitch_a9
    const p0, 0x7f080124

    return p0

    :sswitch_aa
    const p0, 0x7f080123

    return p0

    :sswitch_ab
    const p0, 0x7f080122

    return p0

    :sswitch_ac
    const p0, 0x7f080121

    return p0

    :sswitch_ad
    const p0, 0x7f080120

    return p0

    :sswitch_ae
    const p0, 0x7f08011f

    return p0

    :sswitch_af
    const p0, 0x7f08011e

    return p0

    :sswitch_b0
    const p0, 0x7f08011d

    return p0

    :sswitch_b1
    const p0, 0x7f08011c

    return p0

    :sswitch_b2
    const p0, 0x7f08011b

    return p0

    :sswitch_b3
    const p0, 0x7f08011a

    return p0

    :sswitch_b4
    const p0, 0x7f080119

    return p0

    :sswitch_b5
    const p0, 0x7f080118

    return p0

    :sswitch_b6
    const p0, 0x7f080117

    return p0

    :sswitch_b7
    const p0, 0x7f080116

    return p0

    :sswitch_b8
    const p0, 0x7f080115

    return p0

    :sswitch_b9
    const p0, 0x7f080114

    return p0

    :sswitch_ba
    const p0, 0x7f080113

    return p0

    :sswitch_bb
    const p0, 0x7f080112

    return p0

    :sswitch_bc
    const p0, 0x7f080111

    return p0

    :sswitch_bd
    const p0, 0x7f080110

    return p0

    :sswitch_be
    const p0, 0x7f08010f

    return p0

    :sswitch_bf
    const p0, 0x7f08010e

    return p0

    :sswitch_c0
    const p0, 0x7f08010d

    return p0

    :sswitch_c1
    const p0, 0x7f08010c

    return p0

    :sswitch_c2
    const p0, 0x7f08010b

    return p0

    :sswitch_c3
    const p0, 0x7f08010a

    return p0

    :sswitch_c4
    const p0, 0x7f080109

    return p0

    :sswitch_c5
    const p0, 0x7f080108

    return p0

    :sswitch_c6
    const p0, 0x7f080107

    return p0

    :sswitch_c7
    const p0, 0x7f080106

    return p0

    :sswitch_c8
    const p0, 0x7f080105

    return p0

    :sswitch_c9
    const p0, 0x7f080104

    return p0

    :sswitch_ca
    const p0, 0x7f080103

    return p0

    :sswitch_cb
    const p0, 0x7f080102

    return p0

    :cond_1
    :goto_0
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6164 -> :sswitch_cb
        0x6165 -> :sswitch_ca
        0x6166 -> :sswitch_c9
        0x6167 -> :sswitch_c8
        0x6169 -> :sswitch_c7
        0x616c -> :sswitch_c6
        0x616d -> :sswitch_c5
        0x616e -> :sswitch_c4
        0x616f -> :sswitch_c3
        0x6172 -> :sswitch_c2
        0x6173 -> :sswitch_c1
        0x6174 -> :sswitch_c0
        0x6175 -> :sswitch_bf
        0x6177 -> :sswitch_be
        0x617a -> :sswitch_bd
        0x6261 -> :sswitch_bc
        0x6262 -> :sswitch_bb
        0x6264 -> :sswitch_ba
        0x6265 -> :sswitch_b9
        0x6266 -> :sswitch_b8
        0x6267 -> :sswitch_b7
        0x6268 -> :sswitch_b6
        0x6269 -> :sswitch_b5
        0x626a -> :sswitch_b4
        0x626d -> :sswitch_b3
        0x626e -> :sswitch_b2
        0x626f -> :sswitch_b1
        0x6272 -> :sswitch_b0
        0x6273 -> :sswitch_af
        0x6274 -> :sswitch_ae
        0x6277 -> :sswitch_ad
        0x627a -> :sswitch_ac
        0x6361 -> :sswitch_ab
        0x6366 -> :sswitch_aa
        0x6368 -> :sswitch_a9
        0x636b -> :sswitch_a8
        0x636c -> :sswitch_a7
        0x636d -> :sswitch_a6
        0x636e -> :sswitch_a5
        0x636f -> :sswitch_a4
        0x6372 -> :sswitch_a3
        0x6376 -> :sswitch_a2
        0x6379 -> :sswitch_a1
        0x637a -> :sswitch_a0
        0x6465 -> :sswitch_9f
        0x646a -> :sswitch_9e
        0x646b -> :sswitch_9d
        0x646d -> :sswitch_9c
        0x646f -> :sswitch_9b
        0x647a -> :sswitch_9a
        0x6563 -> :sswitch_99
        0x6565 -> :sswitch_98
        0x6567 -> :sswitch_97
        0x6568 -> :sswitch_96
        0x6572 -> :sswitch_95
        0x6573 -> :sswitch_94
        0x6574 -> :sswitch_93
        0x6669 -> :sswitch_92
        0x666a -> :sswitch_91
        0x666b -> :sswitch_90
        0x666d -> :sswitch_8f
        0x6672 -> :sswitch_8e
        0x6761 -> :sswitch_8d
        0x6762 -> :sswitch_8c
        0x6764 -> :sswitch_8b
        0x6765 -> :sswitch_8a
        0x6766 -> :sswitch_89
        0x6767 -> :sswitch_88
        0x6768 -> :sswitch_87
        0x6769 -> :sswitch_86
        0x676c -> :sswitch_85
        0x676d -> :sswitch_84
        0x676e -> :sswitch_83
        0x6770 -> :sswitch_89
        0x6771 -> :sswitch_82
        0x6772 -> :sswitch_81
        0x6774 -> :sswitch_80
        0x6775 -> :sswitch_7f
        0x6777 -> :sswitch_7e
        0x6779 -> :sswitch_7d
        0x686b -> :sswitch_7c
        0x686e -> :sswitch_7b
        0x6872 -> :sswitch_7a
        0x6874 -> :sswitch_79
        0x6875 -> :sswitch_78
        0x6964 -> :sswitch_77
        0x6965 -> :sswitch_76
        0x696c -> :sswitch_75
        0x696e -> :sswitch_74
        0x6973 -> :sswitch_73
        0x6974 -> :sswitch_72
        0x6a65 -> :sswitch_71
        0x6a6d -> :sswitch_70
        0x6a6f -> :sswitch_6f
        0x6a70 -> :sswitch_6e
        0x6b65 -> :sswitch_6d
        0x6b67 -> :sswitch_6c
        0x6b68 -> :sswitch_6b
        0x6b69 -> :sswitch_6a
        0x6b6d -> :sswitch_69
        0x6b6e -> :sswitch_68
        0x6b72 -> :sswitch_67
        0x6b77 -> :sswitch_66
        0x6b79 -> :sswitch_65
        0x6b7a -> :sswitch_64
        0x6c61 -> :sswitch_63
        0x6c62 -> :sswitch_62
        0x6c69 -> :sswitch_61
        0x6c6b -> :sswitch_60
        0x6c74 -> :sswitch_5f
        0x6c75 -> :sswitch_5e
        0x6c76 -> :sswitch_5d
        0x6d61 -> :sswitch_5c
        0x6d63 -> :sswitch_77
        0x6d64 -> :sswitch_5b
        0x6d65 -> :sswitch_5a
        0x6d67 -> :sswitch_59
        0x6d68 -> :sswitch_58
        0x6d6b -> :sswitch_57
        0x6d6c -> :sswitch_56
        0x6d6e -> :sswitch_55
        0x6d6f -> :sswitch_54
        0x6d71 -> :sswitch_53
        0x6d72 -> :sswitch_52
        0x6d73 -> :sswitch_51
        0x6d74 -> :sswitch_50
        0x6d75 -> :sswitch_4f
        0x6d76 -> :sswitch_4e
        0x6d77 -> :sswitch_4d
        0x6d78 -> :sswitch_4c
        0x6d79 -> :sswitch_4b
        0x6d7a -> :sswitch_4a
        0x6e61 -> :sswitch_49
        0x6e63 -> :sswitch_48
        0x6e65 -> :sswitch_47
        0x6e67 -> :sswitch_46
        0x6e69 -> :sswitch_45
        0x6e6c -> :sswitch_44
        0x6e6f -> :sswitch_43
        0x6e70 -> :sswitch_42
        0x6e72 -> :sswitch_41
        0x6e75 -> :sswitch_40
        0x6e7a -> :sswitch_3f
        0x6f6d -> :sswitch_3e
        0x7061 -> :sswitch_3d
        0x7065 -> :sswitch_3c
        0x7066 -> :sswitch_3b
        0x7067 -> :sswitch_3a
        0x7068 -> :sswitch_39
        0x706b -> :sswitch_38
        0x706c -> :sswitch_37
        0x706d -> :sswitch_36
        0x7072 -> :sswitch_35
        0x7074 -> :sswitch_34
        0x7077 -> :sswitch_33
        0x7079 -> :sswitch_32
        0x7161 -> :sswitch_31
        0x7265 -> :sswitch_30
        0x726f -> :sswitch_2f
        0x7273 -> :sswitch_2e
        0x7275 -> :sswitch_2d
        0x7277 -> :sswitch_2c
        0x7361 -> :sswitch_2b
        0x7362 -> :sswitch_2a
        0x7363 -> :sswitch_29
        0x7365 -> :sswitch_28
        0x7367 -> :sswitch_27
        0x7368 -> :sswitch_26
        0x7369 -> :sswitch_25
        0x736b -> :sswitch_24
        0x736c -> :sswitch_23
        0x736d -> :sswitch_22
        0x736e -> :sswitch_21
        0x7372 -> :sswitch_20
        0x7376 -> :sswitch_1f
        0x737a -> :sswitch_1e
        0x7463 -> :sswitch_1d
        0x7464 -> :sswitch_1c
        0x7467 -> :sswitch_1b
        0x7468 -> :sswitch_1a
        0x746a -> :sswitch_19
        0x746d -> :sswitch_18
        0x746e -> :sswitch_17
        0x746f -> :sswitch_16
        0x7472 -> :sswitch_15
        0x7474 -> :sswitch_14
        0x7476 -> :sswitch_13
        0x7477 -> :sswitch_12
        0x747a -> :sswitch_11
        0x7561 -> :sswitch_10
        0x7567 -> :sswitch_f
        0x7573 -> :sswitch_e
        0x7579 -> :sswitch_d
        0x757a -> :sswitch_c
        0x7663 -> :sswitch_b
        0x7665 -> :sswitch_a
        0x7667 -> :sswitch_9
        0x7669 -> :sswitch_8
        0x766e -> :sswitch_7
        0x7675 -> :sswitch_6
        0x7766 -> :sswitch_5
        0x7773 -> :sswitch_4
        0x7965 -> :sswitch_3
        0x7974 -> :sswitch_2
        0x7a61 -> :sswitch_1
        0x7a6d -> :sswitch_0
    .end sparse-switch
.end method

.method public static getGbhCountryCodes()Ljava/util/List;
    .locals 188
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "AF"

    const-string v1, "AL"

    const-string v2, "DZ"

    const-string v3, "AS"

    const-string v4, "AD"

    const-string v5, "AO"

    const-string v6, "AI"

    const-string v7, "AG"

    const-string v8, "AR"

    const-string v9, "AM"

    const-string v10, "AW"

    const-string v11, "AZ"

    const-string v12, "BS"

    const-string v13, "BH"

    const-string v14, "BD"

    const-string v15, "BB"

    const-string v16, "BZ"

    const-string v17, "BJ"

    const-string v18, "BM"

    const-string v19, "BT"

    const-string v20, "BO"

    const-string v21, "BA"

    const-string v22, "BW"

    const-string v23, "BR"

    const-string v24, "BN"

    const-string v25, "BG"

    const-string v26, "BF"

    const-string v27, "BI"

    const-string v28, "KH"

    const-string v29, "CM"

    const-string v30, "CV"

    const-string v31, "KY"

    const-string v32, "CF"

    const-string v33, "TD"

    const-string v34, "CL"

    const-string v35, "CN"

    const-string v36, "CO"

    const-string v37, "KM"

    const-string v38, "CK"

    const-string v39, "CR"

    const-string v40, "HR"

    const-string v41, "CY"

    const-string v42, "CZ"

    const-string v43, "DK"

    const-string v44, "DJ"

    const-string v45, "DM"

    const-string v46, "DO"

    const-string v47, "EC"

    const-string v48, "EG"

    const-string v49, "SV"

    const-string v50, "GQ"

    const-string v51, "ER"

    const-string v52, "EE"

    const-string v53, "ET"

    const-string v54, "FK"

    const-string v55, "FJ"

    const-string v56, "FI"

    const-string v57, "GF"

    const-string v58, "PF"

    const-string v59, "GA"

    const-string v60, "GM"

    const-string v61, "GE"

    const-string v62, "GH"

    const-string v63, "GI"

    const-string v64, "GR"

    const-string v65, "GL"

    const-string v66, "GD"

    const-string v67, "GP"

    const-string v68, "GU"

    const-string v69, "GT"

    const-string v70, "GG"

    const-string v71, "GN"

    const-string v72, "GW"

    const-string v73, "GY"

    const-string v74, "HT"

    const-string v75, "HN"

    const-string v76, "HK"

    const-string v77, "HU"

    const-string v78, "IS"

    const-string v79, "ID"

    const-string v80, "IL"

    const-string v81, "IN"

    const-string v82, "JM"

    const-string v83, "JP"

    const-string v84, "JE"

    const-string v85, "JO"

    const-string v86, "KZ"

    const-string v87, "KE"

    const-string v88, "KI"

    const-string v89, "KR"

    const-string v90, "KW"

    const-string v91, "KG"

    const-string v92, "LA"

    const-string v93, "LV"

    const-string v94, "LB"

    const-string v95, "LI"

    const-string v96, "LT"

    const-string v97, "LU"

    const-string v98, "MO"

    const-string v99, "MK"

    const-string v100, "MG"

    const-string v101, "MW"

    const-string v102, "MV"

    const-string v103, "ML"

    const-string v104, "MT"

    const-string v105, "MH"

    const-string v106, "MQ"

    const-string v107, "MR"

    const-string v108, "MU"

    const-string v109, "YT"

    const-string v110, "MX"

    const-string v111, "FM"

    const-string v112, "MD"

    const-string v113, "MC"

    const-string v114, "MN"

    const-string v115, "ME"

    const-string v116, "MS"

    const-string v117, "MA"

    const-string v118, "MZ"

    const-string v119, "NA"

    const-string v120, "NR"

    const-string v121, "NP"

    const-string v122, "NC"

    const-string v123, "NZ"

    const-string v124, "NI"

    const-string v125, "NE"

    const-string v126, "NG"

    const-string v127, "NU"

    const-string v128, "NO"

    const-string v129, "OM"

    const-string v130, "PK"

    const-string v131, "PW"

    const-string v132, "PA"

    const-string v133, "PG"

    const-string v134, "PY"

    const-string v135, "PE"

    const-string v136, "PT"

    const-string v137, "PR"

    const-string v138, "QA"

    const-string v139, "RO"

    const-string v140, "RU"

    const-string v141, "RW"

    const-string v142, "RE"

    const-string v143, "SH"

    const-string v144, "KN"

    const-string v145, "PM"

    const-string v146, "VC"

    const-string v147, "WS"

    const-string v148, "SM"

    const-string v149, "SA"

    const-string v150, "SN"

    const-string v151, "RS"

    const-string v152, "SC"

    const-string v153, "SL"

    const-string v154, "SK"

    const-string v155, "SI"

    const-string v156, "SB"

    const-string v157, "ZA"

    const-string v158, "LK"

    const-string v159, "SR"

    const-string v160, "SZ"

    const-string v161, "SE"

    const-string v162, "TW"

    const-string v163, "TJ"

    const-string v164, "TZ"

    const-string v165, "TH"

    const-string v166, "TG"

    const-string v167, "TO"

    const-string v168, "TT"

    const-string v169, "TN"

    const-string v170, "TR"

    const-string v171, "TM"

    const-string v172, "TC"

    const-string v173, "TV"

    const-string v174, "UG"

    const-string v175, "UA"

    const-string v176, "AE"

    const-string v177, "UY"

    const-string v178, "UZ"

    const-string v179, "VU"

    const-string v180, "VE"

    const-string v181, "VN"

    const-string v182, "VG"

    const-string v183, "VI"

    const-string v184, "WF"

    const-string v185, "EH"

    const-string v186, "YE"

    const-string v187, "ZM"

    .line 162
    filled-new-array/range {v0 .. v187}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getShippingRegionsMapping(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 99
    sget-object v0, Lcom/ebay/common/view/util/EbayCountryManager;->shippingEnumToRegionResourceId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
