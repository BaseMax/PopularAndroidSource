.class public interface abstract Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager$Observer;
.super Ljava/lang/Object;
.source "CurrencyConversionDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onRateChanged(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;Lcom/ebay/common/model/currency/CurrencyConversionRate;)V
.end method

.method public abstract onRateLoadComplete(Lcom/ebay/common/net/api/currency/CurrencyConversionDataManager;Lcom/ebay/nautilus/kernel/content/ResultStatus;Lcom/ebay/common/model/currency/CurrencyConversionRate;Lcom/ebay/common/net/api/currency/CurrencyConversionRequest$ConversionRequestParams;)V
.end method
