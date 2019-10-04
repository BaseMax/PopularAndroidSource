.class public Lcom/ebay/common/model/AllBiddersData$Offer;
.super Ljava/lang/Object;
.source "AllBiddersData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/AllBiddersData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Offer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/AllBiddersData$Offer$ItemBidDetail;,
        Lcom/ebay/common/model/AllBiddersData$Offer$ShippingAddress;,
        Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;,
        Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;,
        Lcom/ebay/common/model/AllBiddersData$Offer$User;
    }
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public bidCount:I

.field public convertedPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public currency:Ljava/lang/String;

.field public highestBid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public maxBid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public myMaxBid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public quantity:I

.field public secondChanceEnabled:Z

.field public siteCurrency:Ljava/lang/String;

.field public timeBid:Ljava/util/Date;

.field public user:Lcom/ebay/common/model/AllBiddersData$Offer$User;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/ebay/common/model/AllBiddersData$Offer$User;

    invoke-direct {v0}, Lcom/ebay/common/model/AllBiddersData$Offer$User;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/AllBiddersData$Offer;->user:Lcom/ebay/common/model/AllBiddersData$Offer$User;

    return-void
.end method
