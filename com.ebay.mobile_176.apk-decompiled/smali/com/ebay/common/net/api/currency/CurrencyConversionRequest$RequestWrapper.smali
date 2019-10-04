.class final Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$RequestWrapper;
.super Ljava/lang/Object;
.source "CurrencyConversionRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RequestWrapper"
.end annotation


# instance fields
.field protected final request:Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "getCurrencyConversionRateRequest"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$RequestWrapper;->request:Lcom/ebay/common/net/api/currency/CurrencyConversionRequest;

    return-void
.end method
