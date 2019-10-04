.class public Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;
.super Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;
.source "CurrencyConversionResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "CurrencyConversionResponseData"
.end annotation


# instance fields
.field protected conversionDate:Ljava/lang/String;

.field protected currencyConversionRate:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/dataobject/BaseApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCurrencyConversionRate(Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;)Lcom/ebay/common/model/currency/CurrencyConversionRate;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 94
    :try_start_0
    iget-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;->conversionDate:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;->conversionDate:Ljava/lang/String;

    invoke-static {v0}, Lcom/ebay/common/util/EbayDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 96
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ebay/nautilus/domain/net/EbayResponse;->getClientTime(J)J

    move-result-wide v3

    .line 98
    iget-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;->currencyConversionRate:Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    move-wide v5, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;->currencyConversionRate:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    .line 99
    :goto_1
    new-instance v0, Lcom/ebay/common/model/currency/CurrencyConversionRate;

    iget-object v7, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;->currencyConversionRate:Ljava/lang/String;

    iget-object v8, p1, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;->fromCurrency:Ljava/lang/String;

    iget-object v9, p1, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;->toCurrency:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result p1

    if-nez p1, :cond_2

    cmpl-double p1, v5, v1

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    move-object v2, v0

    move-object v5, v7

    move-object v6, v8

    move-object v7, v9

    move v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/ebay/common/model/currency/CurrencyConversionRate;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 104
    new-instance v0, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;

    invoke-direct {v0, p1}, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
