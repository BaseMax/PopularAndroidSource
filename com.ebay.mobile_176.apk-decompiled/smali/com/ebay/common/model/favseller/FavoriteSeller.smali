.class public Lcom/ebay/common/model/favseller/FavoriteSeller;
.super Ljava/lang/Object;
.source "FavoriteSeller.java"


# instance fields
.field public feedbackRatingStar:Ljava/lang/String;

.field public feedbackScore:I

.field public myWorldSmallImg:Ljava/net/URL;

.field public myWorldUrl:Ljava/net/URL;

.field public notes:Ljava/lang/String;

.field public positiveFeedbackPercent:Ljava/lang/String;

.field public sellerId:Ljava/lang/String;

.field public topRatedSeller:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ebay/common/model/favseller/FavoriteSeller;->sellerId:Ljava/lang/String;

    return-object v0
.end method
