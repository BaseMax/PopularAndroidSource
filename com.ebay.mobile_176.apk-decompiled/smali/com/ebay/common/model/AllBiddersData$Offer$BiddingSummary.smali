.class public Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;
.super Ljava/lang/Object;
.source "AllBiddersData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/AllBiddersData$Offer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BiddingSummary"
.end annotation


# instance fields
.field public bidActivityWithSeller:I

.field public bidRetractions:I

.field public bidsToUniqueCategories:I

.field public bidsToUniqueSellers:I

.field public itemBidDetails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/common/model/AllBiddersData$Offer$ItemBidDetail;",
            ">;"
        }
    .end annotation
.end field

.field public summaryDays:Ljava/lang/String;

.field public totalBids:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;->itemBidDetails:Ljava/util/List;

    return-void
.end method
