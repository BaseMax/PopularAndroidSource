.class public final Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesRequest;
.super Lcom/ebay/nautilus/domain/net/EbaySoaRequest;
.source "GetUserIncentives.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/cart/GetUserIncentives;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GetUserIncentivesRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/EbaySoaRequest<",
        "Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final incentiveType:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/cart/EbayCartApi;Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;)V
    .locals 3

    const-string v0, "CommonMobileAppService"

    const-string v1, "getUserIncentives"

    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, v0, v2, v1}, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 35
    iget-object v0, p1, Lcom/ebay/common/net/api/cart/EbayCartApi;->iafToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->iafToken:Ljava/lang/String;

    const-string v0, "JSON"

    .line 36
    iput-object v0, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->dataFormat:Ljava/lang/String;

    const-string v0, "application/json"

    .line 37
    iput-object v0, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaContentType:Ljava/lang/String;

    .line 38
    iget-object p1, p1, Lcom/ebay/common/net/api/cart/EbayCartApi;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaGlobalId:Ljava/lang/String;

    const-string/jumbo p1, "x-ebay-soa-security-appname"

    .line 39
    iput-object p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaAppIdHeaderName:Ljava/lang/String;

    .line 40
    iput-boolean v2, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->bUseSoaServiceVersion:Z

    const/4 p1, 0x1

    .line 41
    iput-boolean p1, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->useSoaLocaleList:Z

    .line 42
    iput-object p2, p0, Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesRequest;->incentiveType:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    return-void
.end method


# virtual methods
.method public buildRequest()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;
        }
    .end annotation

    .line 52
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesRequest;->incentiveType:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    if-nez v1, :cond_0

    const-string v1, "incentiveType"

    .line 54
    sget-object v2, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->VOUCHER:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    invoke-virtual {v2}, Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "incentiveType"

    .line 56
    iget-object v2, p0, Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesRequest;->incentiveType:Lcom/ebay/common/net/api/cart/GetUserIncentives$UserIncentiveType;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "includeIncentiveUsages"

    const/4 v3, 0x1

    .line 59
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "incentiveStatus"

    const-string v3, "ACTIVE"

    .line 60
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 63
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v0, "incentiveTypeList"

    .line 65
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "getUserIncentivesRequest"

    .line 68
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 75
    invoke-static {v0}, Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;->create(Ljava/lang/Throwable;)Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;

    move-result-object v0

    throw v0
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 88
    invoke-static {}, Lcom/ebay/common/net/api/cart/EbayCartApi;->getIncentiveServiceUrl()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesResponse;
    .locals 1

    .line 82
    new-instance v0, Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesResponse;

    invoke-direct {v0}, Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesRequest;->getResponse()Lcom/ebay/common/net/api/cart/GetUserIncentives$GetUserIncentivesResponse;

    move-result-object v0

    return-object v0
.end method
