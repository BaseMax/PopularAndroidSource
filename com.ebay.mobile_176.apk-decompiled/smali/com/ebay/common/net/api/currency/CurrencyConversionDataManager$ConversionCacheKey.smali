.class public final Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;
.super Lcom/ebay/nautilus/domain/datamapping/ImmutableDataMapped;
.source "CurrencyConversionDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversionCacheKey"
.end annotation


# instance fields
.field public final bypassCache:Z
    .annotation runtime Lcom/ebay/nautilus/domain/datamapping/ExposeForToString;
    .end annotation
.end field

.field public final fromCurr:Ljava/lang/String;
    .annotation runtime Lcom/ebay/nautilus/domain/datamapping/ExposeForEquality;
    .end annotation

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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 650
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/ImmutableDataMapped;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 654
    iput-object p1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;->fromCurr:Ljava/lang/String;

    .line 655
    iput-object p2, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;->toCurr:Ljava/lang/String;

    .line 656
    iput-boolean p3, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$ConversionCacheKey;->bypassCache:Z

    return-void

    .line 652
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Currencies must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
