.class final Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTask;
.super Landroid/os/AsyncTask;
.source "AdRtmDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/AdRtmDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrackAdsLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/common/content/dm/AdRtmDataManager;


# direct methods
.method private constructor <init>(Lcom/ebay/common/content/dm/AdRtmDataManager;)V
    .locals 0

    .line 659
    iput-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTask;->this$0:Lcom/ebay/common/content/dm/AdRtmDataManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ebay/common/content/dm/AdRtmDataManager;Lcom/ebay/common/content/dm/AdRtmDataManager$1;)V
    .locals 0

    .line 659
    invoke-direct {p0, p1}, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTask;-><init>(Lcom/ebay/common/content/dm/AdRtmDataManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 659
    check-cast p1, [Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;

    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTask;->doInBackground([Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;)Ljava/lang/Void;
    .locals 4

    const/4 v0, 0x0

    .line 664
    aget-object p1, p1, v0

    .line 665
    iget-object v0, p1, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;->ad:Lcom/ebay/common/rtm/RtmContent$Ad;

    .line 666
    iget-object v1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTask;->this$0:Lcom/ebay/common/content/dm/AdRtmDataManager;

    invoke-virtual {v1}, Lcom/ebay/common/content/dm/AdRtmDataManager;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    .line 671
    :try_start_0
    new-instance v2, Lcom/ebay/nautilus/domain/net/DataRequest;

    iget-object v3, v0, Lcom/ebay/common/rtm/RtmContent$Ad;->trackingURL:Ljava/net/URL;

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/domain/net/DataRequest;-><init>(Ljava/net/URL;)V

    .line 672
    iget-object v3, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTask;->this$0:Lcom/ebay/common/content/dm/AdRtmDataManager;

    invoke-virtual {v3, v2}, Lcom/ebay/common/content/dm/AdRtmDataManager;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    .line 675
    iget-object v2, p1, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;->trackingData:Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string/jumbo v3, "trkp"

    iget-object v0, v0, Lcom/ebay/common/rtm/RtmContent$Ad;->trackingClickID:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object p1, p1, Lcom/ebay/common/content/dm/AdRtmDataManager$TrackAdsLoadTaskParams;->trackingData:Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    invoke-virtual {p1, v1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 681
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
