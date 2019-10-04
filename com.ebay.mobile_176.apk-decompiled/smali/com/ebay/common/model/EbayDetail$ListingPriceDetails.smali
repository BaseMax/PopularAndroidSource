.class public final Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;
.super Ljava/lang/Object;
.source "EbayDetail.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/EbayDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListingPriceDetails"
.end annotation


# instance fields
.field public startPrice:Lcom/ebay/nautilus/domain/data/CurrencyAmount;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/ebay/common/model/EbayDetail$ListingPriceDetails;->startPrice:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/CurrencyAmount;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
