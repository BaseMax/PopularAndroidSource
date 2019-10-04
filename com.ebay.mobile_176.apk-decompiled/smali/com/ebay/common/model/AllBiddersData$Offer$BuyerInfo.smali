.class public Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;
.super Ljava/lang/Object;
.source "AllBiddersData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/AllBiddersData$Offer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BuyerInfo"
.end annotation


# instance fields
.field public shippingAddress:Lcom/ebay/common/model/AllBiddersData$Offer$ShippingAddress;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/ebay/common/model/AllBiddersData$Offer$ShippingAddress;

    invoke-direct {v0}, Lcom/ebay/common/model/AllBiddersData$Offer$ShippingAddress;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;->shippingAddress:Lcom/ebay/common/model/AllBiddersData$Offer$ShippingAddress;

    return-void
.end method
