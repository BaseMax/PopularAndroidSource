.class public final enum Lcom/ebay/common/util/EbaySettings;
.super Ljava/lang/Enum;
.source "EbaySettings.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/ebay/common/util/EbaySettings;",
        ">;",
        "Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ebay/common/util/EbaySettings;

.field public static final enum applicationProcessSvc:Lcom/ebay/common/util/EbaySettings;

.field public static final enum autoSuggestion2Url:Lcom/ebay/common/util/EbaySettings;

.field public static final enum autoSuggestionUrl:Lcom/ebay/common/util/EbaySettings;

.field public static final enum cartServicesUrl:Lcom/ebay/common/util/EbaySettings;

.field public static final enum clientAlertApi:Lcom/ebay/common/util/EbaySettings;

.field public static final enum commonMobileAppSvcUrl:Lcom/ebay/common/util/EbaySettings;

.field public static final enum communityGuidelinesUrl:Lcom/ebay/common/util/EbaySettings;

.field public static final enum ebncdsvcUrl:Lcom/ebay/common/util/EbaySettings;

.field public static final enum findingUserSettingsApi:Lcom/ebay/common/util/EbaySettings;

.field public static final enum followBaseUrl:Lcom/ebay/common/util/EbaySettings;

.field public static final enum gmAdapterApi:Lcom/ebay/common/util/EbaySettings;

.field public static final enum interestBaseUrl:Lcom/ebay/common/util/EbaySettings;

.field public static final enum localLookupUrl:Lcom/ebay/common/util/EbaySettings;

.field public static final enum merchantInventoryLookupUrl:Lcom/ebay/common/util/EbaySettings;

.field public static final enum notificationApi:Lcom/ebay/common/util/EbaySettings;

.field public static final enum productApi:Lcom/ebay/common/util/EbaySettings;

.field private static qaValuesLoaded:Z

.field public static final enum reportItemWebViewUrl:Lcom/ebay/common/util/EbaySettings;

.field public static final enum rtm:Lcom/ebay/common/util/EbaySettings;

.field public static final enum rtmAds:Lcom/ebay/common/util/EbaySettings;

.field public static final enum shippingApi:Lcom/ebay/common/util/EbaySettings;

.field public static final enum ssoApiBase:Lcom/ebay/common/util/EbaySettings;

.field public static final enum ssoSiteSpecificApiBase:Lcom/ebay/common/util/EbaySettings;

.field public static final enum viewItemLite:Lcom/ebay/common/util/EbaySettings;


# instance fields
.field private final defaultValue:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final property:Lcom/ebay/nautilus/domain/dcs/DcsJsonProperty;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ebay/nautilus/domain/dcs/DcsJsonProperty<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private qaValue:Ljava/lang/String;

.field private final xstageValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 28
    new-instance v6, Lcom/ebay/common/util/EbaySettings;

    const-string v1, "findingUserSettingsApi"

    const-string v3, "https://svcs.ebay.com/services/search/FindingUserSettingsService/v1"

    const-string v4, "https://api4.qa.ebay.com/services/search/FindingUserSettingsService/v1"

    const-string v5, "http://svcs.xstage.ebay.com/services/search/FindingUserSettingsService/v1"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/ebay/common/util/EbaySettings;->findingUserSettingsApi:Lcom/ebay/common/util/EbaySettings;

    .line 31
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v8, "notificationApi"

    const-string v10, "https://api.ebay.com/svcs/mobile/DeviceNotificationService/v1"

    const-string v11, "https://api4.qa.ebay.com/mobile/DeviceNotificationService/v1"

    const-string v12, "http://svcs.xstage.ebay.com/mobile/DeviceNotificationService/v1"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->notificationApi:Lcom/ebay/common/util/EbaySettings;

    .line 34
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v2, "productApi"

    const-string v4, "https://svcs.ebay.com/services/marketplacecatalog/ProductService/v1"

    const-string v5, "http://apifind.qa.ebay.com/services/marketplacecatalog/ProductService/v1"

    const-string v6, "http://apifinding.xstage.ebay.com/services/marketplacecatalog/ProductService/v1"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->productApi:Lcom/ebay/common/util/EbaySettings;

    .line 37
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v8, "cartServicesUrl"

    const-string v10, "https://mobixo4.ebay.com/services/cartservice/v4/CartService"

    const-string v11, "https://api4.qa.ebay.com/services/cartservice/v4/CartService"

    const-string v12, "http://svcs.xstage.ebay.com/services/cartservice/v1/CartService"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->cartServicesUrl:Lcom/ebay/common/util/EbaySettings;

    .line 40
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v2, "ebncdsvcUrl"

    const-string v4, "https://svcs.ebay.com/buy/shipping/v2/deliveries"

    const-string v5, "https://api4.qa.ebay.com/ebnsvc/v2"

    const-string v6, "http://api.xstage.ebay.com/ebnsvc/v2"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->ebncdsvcUrl:Lcom/ebay/common/util/EbaySettings;

    .line 43
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v8, "applicationProcessSvc"

    const-string v10, "https://api.ebay.com/svcs/services/mobileor/v1/IPhoneApplicationProcessService"

    const-string v11, "https://api4.qa.ebay.com/services/mobileor/v1/IPhoneApplicationProcessService"

    const-string v12, "http://svcs.xstage.ebay.com/services/mobileor/v1/IPhoneApplicationProcessService"

    const/4 v9, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->applicationProcessSvc:Lcom/ebay/common/util/EbaySettings;

    .line 46
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string/jumbo v2, "shippingApi"

    const-string v4, "https://api.ebay.com/svcs/services/Shipping/CoreShippingService/v10"

    const-string v5, "https://api4.qa.ebay.com/services/Shipping/CoreShippingService/v10"

    const-string v6, "http://svcs.xstage.ebay.com/services/Shipping/CoreShippingService/v10"

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->shippingApi:Lcom/ebay/common/util/EbaySettings;

    .line 49
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v8, "commonMobileAppSvcUrl"

    const-string v10, "https://api.ebay.com/svcs/services/mobileor/v2/CommonMobileAppServiceV2"

    const-string v11, "https://api4.qa.ebay.com/services/mobileor/v2/CommonMobileAppServiceV2"

    const-string v12, "http://svcs.xstage.ebay.com/services/mobileor/v2/CommonMobileAppServiceV2"

    const/4 v9, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->commonMobileAppSvcUrl:Lcom/ebay/common/util/EbaySettings;

    .line 52
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v1, "gmAdapterApi"

    const-string v2, "https://mobileclient.paypal.com/GMAdapter/"

    const-string v3, "https://www.stage2mobile08.paypal.com:10521/GMAdapter/"

    const/16 v4, 0x8

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->gmAdapterApi:Lcom/ebay/common/util/EbaySettings;

    .line 55
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v1, "clientAlertApi"

    const-string v2, "https://clientalerts.ebay.com/ws/ecasvc/ClientAlerts"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->clientAlertApi:Lcom/ebay/common/util/EbaySettings;

    .line 56
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string/jumbo v6, "rtm"

    const-string v8, "https://api.ebay.com/svcs/services/mobileor/v1/CommonMobileAppService"

    const-string v9, "https://api4.qa.ebay.com/services/mobileor/v1/CommonMobileAppService"

    const-string v10, "http://svcs.xstage.ebay.com/services/mobileor/v1/CommonMobileAppService"

    const/16 v7, 0xa

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->rtm:Lcom/ebay/common/util/EbaySettings;

    .line 59
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string/jumbo v12, "rtmAds"

    const-string v14, "https://api.ebay.com/svcs/services/mobileor/v2/CommonMobileAppServiceV2"

    const-string v15, "https://api4.qa.ebay.com/services/mobileor/v2/CommonMobileAppServiceV2"

    const-string v16, "http://svcs.xstage.ebay.com/services/mobileor/v2/CommonMobileAppServiceV2"

    const/16 v13, 0xb

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->rtmAds:Lcom/ebay/common/util/EbaySettings;

    .line 62
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string/jumbo v6, "viewItemLite"

    const-string v8, "https://api.ebay.com/svcs/ws/eBayISAPI.dll?ViewItemLite"

    const-string v9, "http://cgi.qa.ebay.com/ws/eBayISAPI.dll?ViewItemLite"

    const-string v10, "http://cgi.xstage.ebay.com/ws/eBayISAPI.dll?ViewItemLite"

    const/16 v7, 0xc

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->viewItemLite:Lcom/ebay/common/util/EbaySettings;

    .line 65
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v1, "autoSuggestionUrl"

    const-string v2, "https://autosug.ebay.com/autosug"

    const-string v5, "http://autosug.qa.ebay.com/autosug"

    const/16 v6, 0xd

    invoke-direct {v0, v1, v6, v2, v5}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->autoSuggestionUrl:Lcom/ebay/common/util/EbaySettings;

    .line 66
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v1, "autoSuggestion2Url"

    const-string v2, "https://autosug.ebaystatic.com/autosug"

    const-string v5, "http://autosug.qa.ebay.com/autosug"

    const/16 v7, 0xe

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->autoSuggestion2Url:Lcom/ebay/common/util/EbaySettings;

    .line 67
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string/jumbo v9, "ssoApiBase"

    const-string v11, "https://auth.ebay.com/ws/eBayISAPI.dll"

    const-string v12, "https://tidesauth.vip.qa.ebay.com/ws/eBayISAPI.dll"

    const-string v13, "http://tidesauth.xstage.ebay.com/ws/eBayISAPI.dll"

    const/16 v10, 0xf

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->ssoApiBase:Lcom/ebay/common/util/EbaySettings;

    .line 71
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string/jumbo v15, "ssoSiteSpecificApiBase"

    const-string v17, "https://auth.%s/ws/eBayISAPI.dll"

    const-string v18, "https://tidesauth.vip.qa.%s/ws/eBayISAPI.dll"

    const-string v19, "http://tidesauth.xstage.ebay.com/ws/eBayISAPI.dll"

    const/16 v16, 0x10

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->ssoSiteSpecificApiBase:Lcom/ebay/common/util/EbaySettings;

    .line 76
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v9, "merchantInventoryLookupUrl"

    const-string v11, "https://api.ebay.com/selling/inventorylookup/v1/shallowcheck?client=mobile"

    const-string v12, "https://api4.qa.ebay.com/selling/merchantinventorylookup/v1/real_time_inventory_check/shallow/"

    const-string v13, "http://svcs.xstage.ebay.com/selling/merchantinventorylookup/v1/real_time_inventory_check/shallow/"

    const/16 v10, 0x11

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->merchantInventoryLookupUrl:Lcom/ebay/common/util/EbaySettings;

    .line 79
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v15, "localLookupUrl"

    const-string v17, "https://api.ebay.com/selling/inventorylookup/v1/"

    const-string v18, "https://api4.qa.ebay.com/selling/inventorylookup/v1/"

    const-string v19, "http://svcs.xstage.ebay.com/selling/inventorylookup/v1/"

    const/16 v16, 0x12

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->localLookupUrl:Lcom/ebay/common/util/EbaySettings;

    .line 84
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v1, "communityGuidelinesUrl"

    const-string v2, "https://pages.%s/help/policies/member-created-content-ov.html"

    const/16 v5, 0x13

    invoke-direct {v0, v1, v5, v2}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->communityGuidelinesUrl:Lcom/ebay/common/util/EbaySettings;

    .line 87
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v9, "followBaseUrl"

    const-string v11, "https://api.ebay.com/social/follow/v1/"

    const-string v12, "https://api4.qa.ebay.com/social/follow/v1/"

    const-string v13, "http://api.xstage.ebay.com/social/follow/v1/"

    const/16 v10, 0x14

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->followBaseUrl:Lcom/ebay/common/util/EbaySettings;

    .line 90
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string v1, "interestBaseUrl"

    const-string v2, "https://api.ebay.com/social/interests/v1/"

    const-string v8, "http://www.feedsvcr.stg.stratus.qa.ebay.com/social/interests/v1/"

    const/16 v9, 0x15

    invoke-direct {v0, v1, v9, v2, v8}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->interestBaseUrl:Lcom/ebay/common/util/EbaySettings;

    .line 92
    new-instance v0, Lcom/ebay/common/util/EbaySettings;

    const-string/jumbo v1, "reportItemWebViewUrl"

    const-string v2, "https://ocswf.%s/rti/compose?rmvHdr=true"

    const-string v8, "https://www.ocswf.qa.%s/rti/compose?rmvHdr=true"

    const/16 v10, 0x16

    invoke-direct {v0, v1, v10, v2, v8}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->reportItemWebViewUrl:Lcom/ebay/common/util/EbaySettings;

    const/16 v0, 0x17

    .line 26
    new-array v0, v0, [Lcom/ebay/common/util/EbaySettings;

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->findingUserSettingsApi:Lcom/ebay/common/util/EbaySettings;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->notificationApi:Lcom/ebay/common/util/EbaySettings;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->productApi:Lcom/ebay/common/util/EbaySettings;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->cartServicesUrl:Lcom/ebay/common/util/EbaySettings;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->ebncdsvcUrl:Lcom/ebay/common/util/EbaySettings;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->applicationProcessSvc:Lcom/ebay/common/util/EbaySettings;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->shippingApi:Lcom/ebay/common/util/EbaySettings;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->commonMobileAppSvcUrl:Lcom/ebay/common/util/EbaySettings;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->gmAdapterApi:Lcom/ebay/common/util/EbaySettings;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->clientAlertApi:Lcom/ebay/common/util/EbaySettings;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->rtm:Lcom/ebay/common/util/EbaySettings;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->rtmAds:Lcom/ebay/common/util/EbaySettings;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->viewItemLite:Lcom/ebay/common/util/EbaySettings;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->autoSuggestionUrl:Lcom/ebay/common/util/EbaySettings;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->autoSuggestion2Url:Lcom/ebay/common/util/EbaySettings;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->ssoApiBase:Lcom/ebay/common/util/EbaySettings;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->ssoSiteSpecificApiBase:Lcom/ebay/common/util/EbaySettings;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->merchantInventoryLookupUrl:Lcom/ebay/common/util/EbaySettings;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->localLookupUrl:Lcom/ebay/common/util/EbaySettings;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->communityGuidelinesUrl:Lcom/ebay/common/util/EbaySettings;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->followBaseUrl:Lcom/ebay/common/util/EbaySettings;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->interestBaseUrl:Lcom/ebay/common/util/EbaySettings;

    aput-object v1, v0, v9

    sget-object v1, Lcom/ebay/common/util/EbaySettings;->reportItemWebViewUrl:Lcom/ebay/common/util/EbaySettings;

    aput-object v1, v0, v10

    sput-object v0, Lcom/ebay/common/util/EbaySettings;->$VALUES:[Lcom/ebay/common/util/EbaySettings;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p3

    move-object v5, p3

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p4

    .line 123
    invoke-direct/range {v0 .. v5}, Lcom/ebay/common/util/EbaySettings;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ApiSettings."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ebay/common/util/EbaySettings;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/util/EbaySettings;->key:Ljava/lang/String;

    .line 135
    iput-object p3, p0, Lcom/ebay/common/util/EbaySettings;->defaultValue:Ljava/lang/String;

    .line 136
    iput-object p4, p0, Lcom/ebay/common/util/EbaySettings;->qaValue:Ljava/lang/String;

    .line 137
    iput-object p5, p0, Lcom/ebay/common/util/EbaySettings;->xstageValue:Ljava/lang/String;

    .line 140
    :try_start_0
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilder;->buildUrlProperty()Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderPropertyMode;

    move-result-object p1

    iget-object p2, p0, Lcom/ebay/common/util/EbaySettings;->key:Ljava/lang/String;

    .line 141
    invoke-interface {p1, p2}, Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderPropertyMode;->propertyName(Ljava/lang/String;)Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderPropertyMode;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderPropertyMode;->when()Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderConditionMode;

    move-result-object p1

    sget-object p2, Lcom/ebay/nautilus/base/QaMode;->QATE:Lcom/ebay/nautilus/base/QaMode;

    invoke-interface {p1, p2}, Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderConditionMode;->qaMode(Lcom/ebay/nautilus/base/QaMode;)Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderConditionMode;

    move-result-object p1

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderConditionMode;->thenUseValue(Ljava/lang/Object;)Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderPropertyMode;

    move-result-object p1

    .line 143
    invoke-interface {p1}, Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderPropertyMode;->when()Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderConditionMode;

    move-result-object p1

    sget-object p2, Lcom/ebay/nautilus/base/QaMode;->XSTAGE:Lcom/ebay/nautilus/base/QaMode;

    invoke-interface {p1, p2}, Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderConditionMode;->qaMode(Lcom/ebay/nautilus/base/QaMode;)Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderConditionMode;

    move-result-object p1

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p2}, Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderConditionMode;->thenUseValue(Ljava/lang/Object;)Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderPropertyMode;

    move-result-object p1

    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-interface {p1, p2}, Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderPropertyMode;->defaultValue(Ljava/lang/Object;)Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderPropertyMode;

    move-result-object p1

    .line 145
    invoke-interface {p1}, Lcom/ebay/nautilus/domain/dcs/DcsJsonPropertyBuilderPropertyMode;->build()Lcom/ebay/nautilus/domain/dcs/DcsJsonProperty;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/util/EbaySettings;->property:Lcom/ebay/nautilus/domain/dcs/DcsJsonProperty;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 149
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to create URL property: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ebay/common/util/EbaySettings;->name()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static declared-synchronized checkForOverridePropertiesFile()V
    .locals 8

    const-class v0, Lcom/ebay/common/util/EbaySettings;

    monitor-enter v0

    .line 186
    :try_start_0
    sget-boolean v1, Lcom/ebay/common/util/EbaySettings;->qaValuesLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 187
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 188
    :try_start_1
    sput-boolean v1, Lcom/ebay/common/util/EbaySettings;->qaValuesLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :try_start_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 195
    new-instance v2, Ljava/io/File;

    const-string v3, "ebay.properties"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 199
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 200
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 201
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 203
    invoke-virtual {v2}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 205
    invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :try_start_3
    invoke-static {v3}, Lcom/ebay/common/util/EbaySettings;->valueOf(Ljava/lang/String;)Lcom/ebay/common/util/EbaySettings;

    move-result-object v5

    .line 212
    iput-object v4, v5, Lcom/ebay/common/util/EbaySettings;->qaValue:Ljava/lang/String;

    const-string v5, "EbaySettings"

    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Properties file overrides "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_4
    const-string v2, "EbaySettings"

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForOverridePropertiesFile exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 227
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 185
    monitor-exit v0

    throw v1
.end method

.method public static get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;
    .locals 0

    .line 231
    invoke-static {p0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAutoFillRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 236
    invoke-static {p0, p1}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getAutoFillRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAutoSuggestionQuery(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 271
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/mobile/dcs/Dcs$Search$B;->autoSuggestSpeedChanges:Lcom/ebay/mobile/dcs/Dcs$Search$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget-object v1, Lcom/ebay/common/util/EbaySettings;->autoSuggestion2Url:Lcom/ebay/common/util/EbaySettings;

    .line 273
    :goto_0
    invoke-static {v1}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/ebay/common/util/EbaySettings;->autoSuggestionUrl:Lcom/ebay/common/util/EbaySettings;

    goto :goto_0

    .line 275
    :goto_1
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string/jumbo v2, "sId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 277
    invoke-virtual {v1, v2, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "_dg"

    const-string v2, "1"

    .line 278
    invoke-virtual {p0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v1, "kwd"

    .line 279
    invoke-virtual {p0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string p1, "_cb"

    const-string v1, "0"

    .line 280
    invoke-virtual {p0, p1, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    if-eqz v0, :cond_1

    const-string p1, "_ch"

    const-string v0, "0"

    .line 282
    invoke-virtual {p0, p1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1
    if-eqz p2, :cond_2

    const-string p1, "_prefetch"

    const-string p2, "1"

    .line 284
    invoke-virtual {p0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 285
    :cond_2
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getClientAlertGetAlerts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 251
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->clientAlertApi:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "callname"

    const-string v2, "GetUserAlerts"

    .line 253
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "SessionID"

    .line 254
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "SessionData"

    .line 255
    invoke-virtual {p0, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 257
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getClientAlertLogin(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 241
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->clientAlertApi:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "callname"

    const-string v2, "Login"

    .line 243
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "ClientAlertsAuthToken"

    .line 244
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 245
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 246
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getViewItemLiteReq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 262
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->viewItemLite:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "item"

    .line 264
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 265
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 266
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ebay/common/util/EbaySettings;
    .locals 1

    .line 26
    const-class v0, Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/ebay/common/util/EbaySettings;

    return-object p0
.end method

.method public static values()[Lcom/ebay/common/util/EbaySettings;
    .locals 1

    .line 26
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->$VALUES:[Lcom/ebay/common/util/EbaySettings;

    invoke-virtual {v0}, [Lcom/ebay/common/util/EbaySettings;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ebay/common/util/EbaySettings;

    return-object v0
.end method


# virtual methods
.method public defaultValue(Lcom/ebay/nautilus/domain/dcs/DcsState;)Ljava/lang/Object;
    .locals 1

    .line 173
    invoke-static {}, Lcom/ebay/nautilus/kernel/NautilusKernel;->getQaMode()Lcom/ebay/nautilus/base/QaMode;

    move-result-object p1

    sget-object v0, Lcom/ebay/nautilus/base/QaMode;->QATE:Lcom/ebay/nautilus/base/QaMode;

    if-ne p1, v0, :cond_0

    .line 174
    invoke-static {}, Lcom/ebay/common/util/EbaySettings;->checkForOverridePropertiesFile()V

    .line 175
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "{${qaMode} = 1: \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ebay/common/util/EbaySettings;->qaValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', ${qaMode} = 2: \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ebay/common/util/EbaySettings;->xstageValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ebay/common/util/EbaySettings;->defaultValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProperty()Lcom/ebay/nautilus/domain/dcs/DcsJsonProperty;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/domain/dcs/DcsJsonProperty<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/ebay/common/util/EbaySettings;->property:Lcom/ebay/nautilus/domain/dcs/DcsJsonProperty;

    return-object v0
.end method

.method public key()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/ebay/common/util/EbaySettings;->key:Ljava/lang/String;

    return-object v0
.end method
