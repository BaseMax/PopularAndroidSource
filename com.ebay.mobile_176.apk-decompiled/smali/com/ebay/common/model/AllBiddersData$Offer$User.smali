.class public Lcom/ebay/common/model/AllBiddersData$Offer$User;
.super Ljava/lang/Object;
.source "AllBiddersData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/model/AllBiddersData$Offer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "User"
.end annotation


# instance fields
.field public IdVerified:Z

.field public aboutMePage:Z

.field public biddingSummary:Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;

.field public buyerInfo:Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;

.field public eBayGoodStanding:Z

.field public email:Ljava/lang/String;

.field public feedbackPrivate:Z

.field public feedbackRatingStar:Ljava/lang/String;

.field public feedbackScore:I

.field public newUser:Z

.field public positiveFeedbackPercent:F

.field public registrationDate:Ljava/util/Date;

.field public site:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public userAnonymized:Z

.field public userId:Ljava/lang/String;

.field public userIdChanged:Z

.field public userIdLastChanged:Ljava/util/Date;

.field public vatStatus:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;

    invoke-direct {v0}, Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/AllBiddersData$Offer$User;->biddingSummary:Lcom/ebay/common/model/AllBiddersData$Offer$BiddingSummary;

    .line 102
    new-instance v0, Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;

    invoke-direct {v0}, Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/AllBiddersData$Offer$User;->buyerInfo:Lcom/ebay/common/model/AllBiddersData$Offer$BuyerInfo;

    return-void
.end method
