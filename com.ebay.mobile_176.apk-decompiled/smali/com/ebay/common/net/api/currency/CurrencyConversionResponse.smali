.class public Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;
.super Lcom/ebay/nautilus/domain/net/EbayResponse;
.source "CurrencyConversionResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;,
        Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseWrapper;
    }
.end annotation


# static fields
.field private static final MAPPER:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;


# instance fields
.field public currencyConversionRate:Lcom/ebay/common/model/currency/CurrencyConversionRate;

.field protected final fromCurrency:Ljava/lang/String;

.field protected final toCurrency:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/util/Date;

    new-instance v2, Lcom/ebay/nautilus/domain/datamapping/gson/EbayDateAdapter;

    invoke-direct {v2}, Lcom/ebay/nautilus/domain/datamapping/gson/EbayDateAdapter;-><init>()V

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/ebay/nautilus/domain/datamapping/DataMapperFactory;->toDataMapper(Lcom/google/gson/Gson;)Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    move-result-object v0

    sput-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;->MAPPER:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/net/EbayResponse;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;->fromCurrency:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;->toCurrency:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public hasReportableResultStatusError()Z
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;->treatableAsError(Lcom/ebay/nautilus/kernel/content/ResultStatus;)Z

    move-result v0

    return v0
.end method

.method public parse(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;
        }
    .end annotation

    .line 49
    :try_start_0
    sget-object v0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;->MAPPER:Lcom/ebay/nautilus/kernel/datamapping/DataMapper;

    const-class v1, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseWrapper;

    invoke-virtual {p0, v0, p1, v1}, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;->readJsonStream(Lcom/ebay/nautilus/kernel/datamapping/DataMapper;Ljava/io/InputStream;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseWrapper;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 56
    invoke-static {p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseWrapper;->access$000(Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseWrapper;)Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-static {p1}, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseWrapper;->access$000(Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseWrapper;)Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse$CurrencyConversionResponseData;->createCurrencyConversionRate(Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;)Lcom/ebay/common/model/currency/CurrencyConversionRate;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionResponse;->currencyConversionRate:Lcom/ebay/common/model/currency/CurrencyConversionRate;

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 53
    new-instance v0, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;

    invoke-direct {v0, p1}, Lcom/ebay/nautilus/kernel/net/ParseResponseDataException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
