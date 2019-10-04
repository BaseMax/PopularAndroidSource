.class public final Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;
.super Lcom/ebay/nautilus/domain/datamapping/ImmutableDataMapped;
.source "CurrencyConversionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversionRequestParams"
.end annotation


# instance fields
.field public final fromCurr:Ljava/lang/String;
    .annotation runtime Lcom/ebay/nautilus/domain/datamapping/ExposeForEquality;
    .end annotation

    .annotation runtime Lcom/ebay/nautilus/domain/datamapping/ExposeForToString;
    .end annotation
.end field

.field public final historicalDate:Ljava/util/Date;
    .annotation runtime Lcom/ebay/nautilus/domain/datamapping/ExposeForToString;
    .end annotation
.end field

.field private final iafToken:Ljava/lang/String;
    .annotation runtime Lcom/ebay/nautilus/domain/datamapping/ExposeForToString;
    .end annotation
.end field

.field public final site:Lcom/ebay/nautilus/domain/EbaySite;
    .annotation runtime Lcom/ebay/nautilus/domain/datamapping/ExposeForToString;
    .end annotation
.end field

.field public final toCurr:Ljava/lang/String;
    .annotation runtime Lcom/ebay/nautilus/domain/datamapping/ExposeForEquality;
    .end annotation

    .annotation runtime Lcom/ebay/nautilus/domain/datamapping/ExposeForToString;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/domain/EbaySite;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/ImmutableDataMapped;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 143
    iput-object p1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->fromCurr:Ljava/lang/String;

    .line 144
    iput-object p2, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->toCurr:Ljava/lang/String;

    .line 145
    iput-object p3, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->site:Lcom/ebay/nautilus/domain/EbaySite;

    .line 146
    iput-object p4, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->iafToken:Ljava/lang/String;

    .line 147
    iput-object p5, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->historicalDate:Ljava/util/Date;

    return-void

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Site must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 139
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Currencies must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->iafToken:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getHistoricalDate()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->historicalDate:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->historicalDate:Ljava/util/Date;

    invoke-static {v0}, Lcom/ebay/common/util/EbayDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isHistorical()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;->historicalDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
