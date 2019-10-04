.class Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseWrapper;
.super Ljava/lang/Object;
.source "CurrencyConversionResponse.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/net/ResponseWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CurrencyConversionResponseWrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ebay/nautilus/domain/net/ResponseWrapper<",
        "Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;",
        ">;"
    }
.end annotation


# instance fields
.field private apiResponse:Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "getCurrencyConversionRateResponse"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseWrapper;)Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseWrapper;->apiResponse:Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;

    return-object p0
.end method


# virtual methods
.method public getResponse()Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseWrapper;->apiResponse:Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;

    return-object v0
.end method

.method public bridge synthetic getResponse()Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseWrapper;->getResponse()Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;

    move-result-object v0

    return-object v0
.end method
