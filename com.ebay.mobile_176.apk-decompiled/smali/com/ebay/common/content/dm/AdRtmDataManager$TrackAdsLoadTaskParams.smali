.class Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;
.super Ljava/lang/Object;
.source "AdRtmDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/AdRtmDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TrackAdsLoadTaskParams"
.end annotation


# instance fields
.field public ad:Lcom/ebay/common/rtm/RtmContent$Ad;

.field public trackingData:Lcom/ebay/nautilus/domain/analytics/model/TrackingData;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V
    .locals 0

    .line 645
    invoke-direct {p0}, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;-><init>()V

    return-void
.end method
