.class public abstract Lcom/ebay/common/net/api/fis/FundingInstrumentServiceNetLoader;
.super Lcom/ebay/common/content/EbaySimpleNetLoader;
.source "FundingInstrumentServiceNetLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ebay/common/content/EbaySimpleNetLoader<",
        "Lcom/ebay/nautilus/domain/net/fis/FundingInstrumentServiceResponse;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/ebay/common/content/EbaySimpleNetLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method


# virtual methods
.method public isServiceError()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
