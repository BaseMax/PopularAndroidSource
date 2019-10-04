.class public Lcom/ebay/common/net/api/cart/EbayCartApi;
.super Ljava/lang/Object;
.source "EbayCartApi.java"


# static fields
.field public static final SOA_INCENTIVE_SERVICE_NAME:Ljava/lang/String; = "CommonMobileAppService"


# instance fields
.field public final applicationVersion:Ljava/lang/String;

.field public final iafToken:Ljava/lang/String;

.field public final payPalAppId:Ljava/lang/String;

.field public riskCorrelationId:Ljava/lang/String;

.field public final site:Lcom/ebay/nautilus/domain/EbaySite;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/ebay/common/net/api/cart/EbayCartApi;->payPalAppId:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/ebay/common/net/api/cart/EbayCartApi;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 37
    iput-object p3, p0, Lcom/ebay/common/net/api/cart/EbayCartApi;->iafToken:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/ebay/common/net/api/cart/EbayCartApi;->applicationVersion:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "payPalAppId"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static getIncentiveServiceUrl()Ljava/net/URL;
    .locals 1

    .line 21
    sget-object v0, Lcom/ebay/common/util/EbaySettings;->commonMobileAppSvcUrl:Lcom/ebay/common/util/EbaySettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
