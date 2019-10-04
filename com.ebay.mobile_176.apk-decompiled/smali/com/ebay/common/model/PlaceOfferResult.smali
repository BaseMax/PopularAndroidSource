.class public final Lcom/ebay/common/model/PlaceOfferResult;
.super Ljava/lang/Object;
.source "PlaceOfferResult.java"


# static fields
.field public static final ACTION_BID:Ljava/lang/String; = "Bid"

.field public static final ACTION_OFFER_ACCEPT:Ljava/lang/String; = "Accept"

.field public static final ACTION_OFFER_COUNTER:Ljava/lang/String; = "Counter"

.field public static final ACTION_OFFER_DECLINE:Ljava/lang/String; = "Decline"

.field public static final ACTION_OFFER_MAKE:Ljava/lang/String; = "Offer"

.field public static final ACTION_PURCHASE:Ljava/lang/String; = "Purchase"


# instance fields
.field public bestOfferId:Ljava/lang/String;

.field public bestOfferStatus:Ljava/lang/String;

.field public bidTransactionId:Ljava/lang/String;

.field public convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public highBidder:Ljava/lang/String;

.field public minimumToBid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

.field public reserveMet:Z

.field public roiUrl:Ljava/lang/String;

.field public suggestedBidValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/ItemCurrency;",
            ">;"
        }
    .end annotation
.end field

.field public transactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/ebay/common/model/PlaceOfferResult;->currentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 58
    iput-object v0, p0, Lcom/ebay/common/model/PlaceOfferResult;->convertedCurrentPrice:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 68
    iput-object v0, p0, Lcom/ebay/common/model/PlaceOfferResult;->minimumToBid:Lcom/ebay/nautilus/domain/data/ItemCurrency;

    .line 108
    iput-object v0, p0, Lcom/ebay/common/model/PlaceOfferResult;->highBidder:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/ebay/common/model/PlaceOfferResult;->bidTransactionId:Ljava/lang/String;

    .line 123
    iput-object v0, p0, Lcom/ebay/common/model/PlaceOfferResult;->transactionId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 128
    iput-boolean v1, p0, Lcom/ebay/common/model/PlaceOfferResult;->reserveMet:Z

    .line 132
    iput-object v0, p0, Lcom/ebay/common/model/PlaceOfferResult;->roiUrl:Ljava/lang/String;

    .line 135
    iput-object v0, p0, Lcom/ebay/common/model/PlaceOfferResult;->bestOfferId:Ljava/lang/String;

    .line 141
    iput-object v0, p0, Lcom/ebay/common/model/PlaceOfferResult;->bestOfferStatus:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/ebay/common/model/PlaceOfferResult;->suggestedBidValues:Ljava/util/List;

    return-void
.end method
