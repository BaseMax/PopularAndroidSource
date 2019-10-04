.class public Lcom/ebay/common/net/api/rtm/EbayRtmApi;
.super Ljava/lang/Object;
.source "EbayRtmApi.java"


# static fields
.field public static final HOME_AD_PLACEMENT_ID:Ljava/lang/String; = "19792"

.field public static final HOME_SELL_EBAY_PROMO_LOW_PRIORITY_PLACEMENT_ID:Ljava/lang/String; = "20527"

.field public static final HOME_SELL_EBAY_PROMO_PLACEMENT_ID:Ljava/lang/String; = "20525"

.field public static final HOME_SHOP_DEPARTMENT_PROMO_PLACEMENT_ID:Ljava/lang/String; = "20381"

.field public static final SEARCH_AD_PLACEMENT_ID:Ljava/lang/String; = "19791"

.field public static final SERVICE_DOMAIN:Ljava/lang/String; = "http://www.ebay.com/marketplace/mobileor/v1/commonservices"

.field public static final SERVICE_DOMAIN_V2:Ljava/lang/String; = "http://www.ebay.com/marketplace/mobileor/v2/commonservices"

.field public static final SERVICE_NAME:Ljava/lang/String; = "CommonMobileAppService"

.field public static final SERVICE_NAME_V2:Ljava/lang/String; = "CommonMobileAppServiceV2"

.field public static final SOAP_DOMAIN:Ljava/lang/String; = "http://schemas.xmlsoap.org/soap/envelope/"

.field public static final VIEW_ITEM_PLA_AD_PLACEMENT_ID:Ljava/lang/String; = "20188"

.field static final debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "ebayRtm"

    const-string v2, "Log eBay RTM events"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/common/net/api/rtm/EbayRtmApi;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
