.class public final Lcom/ebay/common/model/currency/CurrencyConversionRate;
.super Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;
.source "CurrencyConversionRate.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/currency/CurrencyConversionRate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final conversionFactor:Ljava/math/BigDecimal;

.field public final fromCurrency:Ljava/lang/String;

.field public final isExchangeRateAvailable:Z

.field public final timeStamp:J

.field public final toCurrency:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Lcom/ebay/common/model/currency/CurrencyConversionRate$1;

    invoke-direct {v0}, Lcom/ebay/common/model/currency/CurrencyConversionRate$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    const-wide/16 v0, 0x0

    .line 70
    iput-wide v0, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->timeStamp:J

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->conversionFactor:Ljava/math/BigDecimal;

    .line 72
    iput-object v0, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->fromCurrency:Ljava/lang/String;

    .line 73
    iput-object v0, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->toCurrency:Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->isExchangeRateAvailable:Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    .line 53
    iput-wide p1, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->timeStamp:J

    if-eqz p3, :cond_0

    .line 56
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->conversionFactor:Ljava/math/BigDecimal;

    goto :goto_0

    .line 58
    :cond_0
    sget-object p1, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object p1, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->conversionFactor:Ljava/math/BigDecimal;

    .line 60
    :goto_0
    iput-object p4, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->fromCurrency:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->toCurrency:Ljava/lang/String;

    .line 62
    iput-boolean p6, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->isExchangeRateAvailable:Z

    return-void
.end method


# virtual methods
.method public createReciprocalRate()Lcom/ebay/common/model/currency/CurrencyConversionRate;
    .locals 10

    const/4 v0, 0x0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->conversionFactor:Ljava/math/BigDecimal;

    sget-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 90
    sget-object v1, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    iget-object v2, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->conversionFactor:Ljava/math/BigDecimal;

    const/4 v3, 0x6

    sget-object v4, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v1, v2, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 92
    new-instance v9, Lcom/ebay/common/model/currency/CurrencyConversionRate;

    iget-wide v3, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->timeStamp:J

    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->toCurrency:Ljava/lang/String;

    iget-object v7, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->fromCurrency:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->isExchangeRateAvailable:Z

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/ebay/common/model/currency/CurrencyConversionRate;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v9

    :catch_0
    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    iget-boolean v1, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->isExchangeRateAvailable:Z

    if-eqz v1, :cond_0

    const-string v1, "1 "

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->fromCurrency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->conversionFactor:Ljava/math/BigDecimal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->toCurrency:Ljava/lang/String;

    .line 124
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 126
    :cond_0
    iget-object v1, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->fromCurrency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/common/model/currency/CurrencyConversionRate;->toCurrency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
