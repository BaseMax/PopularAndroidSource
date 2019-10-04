.class public Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;
.super Lcom/ebay/nautilus/domain/net/EbaySoaRequest;
.source "CurrencyConversionRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;,
        Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$RequestWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/nautilus/domain/net/EbaySoaRequest<",
        "Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAMESPACE:Ljava/lang/String; = "http://www.ebay.com/marketplace/billing/v1/services"

.field public static final OPERATION_NAME:Ljava/lang/String; = "getCurrencyConversionRate"


# instance fields
.field private final fromCurrency:Ljava/lang/String;

.field private final historicalDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conversionDate"
    .end annotation
.end field

.field private final toCurrency:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V
    .locals 3

    const-string v0, "CurrencyRateService"

    const-string v1, "getCurrencyConversionRate"

    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, v0, v2, v1}, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 46
    invoke-static {p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->access$000(Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->iafToken:Ljava/lang/String;

    const-string v0, "application/json"

    .line 47
    iput-object v0, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaContentType:Ljava/lang/String;

    const-string/jumbo v0, "x-ebay-soa-security-appname"

    .line 48
    iput-object v0, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaAppIdHeaderName:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/EbaySite;->idString:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->soaGlobalId:Ljava/lang/String;

    const-string v0, "JSON"

    .line 50
    iput-object v0, p0, Lcom/ebay/nautilus/domain/net/EbaySoaRequest;->dataFormat:Ljava/lang/String;

    .line 52
    iget-object v0, p1, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->fromCurr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;->russianBugFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;->fromCurrency:Ljava/lang/String;

    .line 53
    iget-object v0, p1, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->toCurr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;->russianBugFix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;->toCurrency:Ljava/lang/String;

    .line 54
    iget-object v0, p1, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->historicalDate:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->historicalDate:Ljava/util/Date;

    invoke-static {p1}, Lcom/ebay/common/util/EbayDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;->historicalDate:Ljava/lang/String;

    return-void
.end method

.method private russianBugFix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "RUB"

    if-ne p1, v0, :cond_0

    const-string p1, "RUR"

    return-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public buildRequest()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/BuildRequestDataException;
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;->defaultRequestMapper:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    new-instance v1, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$RequestWrapper;

    invoke-direct {v1, p0}, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$RequestWrapper;-><init>(Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;)V

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/kernel/datamapping/DataMapper;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getRequestUrl()Ljava/net/URL;
    .locals 1

    .line 72
    sget-object v0, Lcom/ebay/nautilus/domain/net/ApiSettings;->currencyConversionApiUrl:Lcom/ebay/nautilus/domain/net/ApiSettings;

    invoke-static {v0}, Lcom/ebay/nautilus/domain/net/ApiSettings;->getUrl(Lcom/ebay/nautilus/domain/dcs/DcsPropUrl;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;
    .locals 3

    .line 66
    new-instance v0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;

    iget-object v1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;->fromCurrency:Ljava/lang/String;

    iget-object v2, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;->toCurrency:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/kernel/net/Response;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;->getResponse()Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;

    move-result-object v0

    return-object v0
.end method

.method public hasRecoverableError(Lcom/ebay/nautilus/kernel/net/Response;Ljava/io/IOException;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 88
    invoke-static {p2}, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;->isRetriableException(Ljava/io/IOException;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/net/Response;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->treatableAsError(Lcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
