.class public Lcom/ebay/common/net/api/aps/UserActivitySummary;
.super Ljava/lang/Object;
.source "UserActivitySummary.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public buyingBestOfferCount:I

.field public buyingBidEndingSoonCount:I

.field public buyingBiddingCount:I

.field public buyingFeedbackToSend:I

.field public buyingOutbidCount:I

.field public buyingPaymentToSend:I

.field public buyingPickupReadyCount:I

.field public buyingSecondChanceOfferCount:I

.field public buyingWatchCount:I

.field public buyingWatchEndingSoonCount:I

.field public buyingWinningCount:I

.field public buyingWonCount:I

.field public buyingWonDurationInDays:I

.field public hasMoreBestOffer:Z

.field public messagesNewAlertCount:I

.field public messagesNewMessageCount:I

.field public sellingActiveCount:I

.field public sellingBestOfferCount:I

.field public sellingDurationInDays:I

.field public sellingFeedbackToSend:I

.field public sellingPaymentToReceive:I

.field public sellingScheduledCount:I

.field public sellingSellEndingSoonCount:I

.field public sellingShippingNeeded:I

.field public sellingSoldCount:I

.field public sellingUnsoldCount:I

.field public totalAuctionSellingValue:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public totalSoldValue:Lcom/ebay/nautilus/domain/data/CurrencyAmount;

.field public totalWinningCost:Lcom/ebay/nautilus/domain/data/CurrencyAmount;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
