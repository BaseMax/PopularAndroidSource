.class final Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;
.super Landroid/os/AsyncTask;
.source "AdRtmDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/common/content/dm/AdRtmDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GetAdsLoadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;",
        "Ljava/lang/Void;",
        "Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;",
        ">;"
    }
.end annotation


# instance fields
.field private adType:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

.field private param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

.field final synthetic this$0:Lcom/ebay/common/content/dm/AdRtmDataManager;


# direct methods
.method public constructor <init>(Lcom/ebay/common/content/dm/AdRtmDataManager;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V
    .locals 0

    .line 698
    iput-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->this$0:Lcom/ebay/common/content/dm/AdRtmDataManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 694
    iput-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    .line 699
    iput-object p2, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->adType:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;)Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;
    .locals 6

    .line 705
    invoke-virtual {p0}, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->isCancelled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 707
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    .line 711
    :try_start_0
    iget-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->this$0:Lcom/ebay/common/content/dm/AdRtmDataManager;

    invoke-virtual {p1}, Lcom/ebay/common/content/dm/AdRtmDataManager;->getContext()Landroid/content/Context;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 723
    :try_start_1
    invoke-static {p1}, Lcom/ebay/nautilus/domain/AdvertisingIdClientOverride;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/ebay/nautilus/domain/AdvertisingIdClientOverride$Info;

    move-result-object v2
    :try_end_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 740
    :try_start_2
    invoke-virtual {v2}, Lcom/ebay/nautilus/domain/AdvertisingIdClientOverride$Info;->isLimitAdTrackingEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    instance-of v3, v3, Lcom/ebay/common/content/dm/AdRtmDataManager$HomePromoRequestContextQuery;

    if-eqz v3, :cond_3

    .line 744
    :cond_2
    iget-object v3, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    iget-object v3, v3, Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;->iafToken:Ljava/lang/String;

    .line 748
    iget-object v4, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->this$0:Lcom/ebay/common/content/dm/AdRtmDataManager;

    invoke-virtual {v4}, Lcom/ebay/common/content/dm/AdRtmDataManager;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v4

    invoke-static {v4}, Lcom/ebay/nautilus/domain/analytics/cguid/EbayCguidGetter;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;

    move-result-object v4

    .line 751
    iget-object v5, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    instance-of v5, v5, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    check-cast v5, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;

    iget-object v5, v5, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->promoPlacementId:Ljava/lang/String;

    if-eqz v5, :cond_6

    .line 752
    iget-object v5, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    check-cast v5, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;

    iput-object v4, v5, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->promoCguid:Ljava/lang/String;

    goto :goto_1

    .line 771
    :cond_3
    invoke-static {}, Lcom/ebay/common/content/dm/AdRtmDataManager;->access$700()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 772
    invoke-static {}, Lcom/ebay/nautilus/domain/analytics/cguid/EbayCguidGetter;->getAnonymous()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ebay/common/content/dm/AdRtmDataManager;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 773
    :cond_4
    invoke-static {}, Lcom/ebay/common/content/dm/AdRtmDataManager;->access$700()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    .line 776
    iget-object v3, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    instance-of v3, v3, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    check-cast v3, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;

    iget-object v3, v3, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->promoPlacementId:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 777
    iget-object v3, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    check-cast v3, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;

    iget-object v5, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->this$0:Lcom/ebay/common/content/dm/AdRtmDataManager;

    invoke-virtual {v5}, Lcom/ebay/common/content/dm/AdRtmDataManager;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v5

    invoke-static {v5}, Lcom/ebay/nautilus/domain/analytics/cguid/EbayCguidGetter;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->promoCguid:Ljava/lang/String;

    :cond_5
    move-object v3, v1

    .line 784
    :cond_6
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 786
    sget-object p1, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_7

    .line 787
    sget-object p1, Lcom/ebay/common/content/dm/AdRtmDataManager;->logger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "IAF token supplied w/o matching cguid.  Ad retrieval skipped"

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_7
    return-object v1

    .line 791
    :cond_8
    iget-object v5, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    invoke-virtual {v5, p1, v3, v4}, Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;->getRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;

    move-result-object v3

    .line 793
    iget-object v4, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    iget-boolean v4, v4, Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;->generateRequestContextOnly:Z

    if-eqz v4, :cond_b

    .line 795
    iget-object v4, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    instance-of v4, v4, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;

    if-eqz v4, :cond_a

    .line 797
    iget-object v4, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    check-cast v4, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;

    iget-object v4, v4, Lcom/ebay/common/content/dm/AdRtmDataManager$HomeAdRequestContextQuery;->placementID:Ljava/lang/String;

    sget-object v5, Lcom/ebay/nautilus/domain/net/api/recommendation/PlacementIds;->HP_100612:Ljava/lang/Long;

    .line 798
    invoke-virtual {v5}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v5

    .line 797
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 799
    new-instance v5, Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;

    if-eqz v4, :cond_9

    invoke-virtual {v3, v2, p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getMfeContext(Lcom/ebay/nautilus/domain/AdvertisingIdClientOverride$Info;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    goto :goto_2

    :cond_9
    invoke-virtual {v3, v0, p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;->getRtmContext(ZLandroid/content/Context;)Ljava/util/List;

    move-result-object p1

    :goto_2
    invoke-direct {v5, p1}, Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;-><init>(Ljava/util/List;)V

    return-object v5

    .line 801
    :cond_a
    instance-of v0, v3, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;

    if-eqz v0, :cond_b

    .line 802
    new-instance v0, Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;

    check-cast v3, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;

    invoke-virtual {v3, p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetHomePromoRtmRequestContext;->getPromoRtmContext(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;-><init>(Ljava/util/List;)V

    return-object v0

    .line 805
    :cond_b
    iget-object p1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->this$0:Lcom/ebay/common/content/dm/AdRtmDataManager;

    invoke-virtual {p1, v3}, Lcom/ebay/common/content/dm/AdRtmDataManager;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;

    .line 808
    invoke-virtual {p1}, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;->getResultStatus()Lcom/ebay/nautilus/kernel/content/ResultStatus;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/content/ResultStatus;->hasError()Z

    move-result v0

    if-eqz v0, :cond_c

    return-object v1

    .line 812
    :cond_c
    new-instance v0, Lcom/ebay/common/rtm/RtmHelper;

    iget-object p1, p1, Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmResponse;->rcr:Lcom/ebay/common/rtm/RtmContentResult;

    invoke-direct {v0, p1, v1}, Lcom/ebay/common/rtm/RtmHelper;-><init>(Lcom/ebay/common/rtm/RtmContentResult;Ljava/lang/String;)V

    .line 815
    invoke-virtual {v0}, Lcom/ebay/common/rtm/RtmHelper;->getAds()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 816
    iget-object v2, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->param:Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    invoke-virtual {v2, v3, p1}, Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;->validateResult(Lcom/ebay/common/net/api/rtm/GetRtm$GetRtmRequest;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_d

    goto :goto_3

    .line 819
    :cond_d
    new-instance p1, Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;

    invoke-direct {p1, v0}, Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;-><init>(Lcom/ebay/common/rtm/RtmHelper;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    :cond_e
    :goto_3
    return-object v1

    :catch_1
    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 692
    check-cast p1, [Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;

    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->doInBackground([Lcom/ebay/common/content/dm/AdRtmDataManager$AdQuery;)Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 3

    .line 837
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 838
    iget-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->this$0:Lcom/ebay/common/content/dm/AdRtmDataManager;

    iget-object v1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->adType:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1}, Lcom/ebay/common/content/dm/AdRtmDataManager;->access$800(Lcom/ebay/common/content/dm/AdRtmDataManager;Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V

    return-void
.end method

.method protected onPostExecute(Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;)V
    .locals 2

    .line 844
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 845
    iget-object v0, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->this$0:Lcom/ebay/common/content/dm/AdRtmDataManager;

    iget-object v1, p0, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->adType:Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;

    invoke-static {v0, p0, p1, v1}, Lcom/ebay/common/content/dm/AdRtmDataManager;->access$800(Lcom/ebay/common/content/dm/AdRtmDataManager;Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;Lcom/ebay/common/content/dm/AdRtmDataManager$AdRequestType;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 692
    check-cast p1, Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;

    invoke-virtual {p0, p1}, Lcom/ebay/common/content/dm/AdRtmDataManager$GetAdsLoadTask;->onPostExecute(Lcom/ebay/common/content/dm/AdRtmDataManager$ResultContent;)V

    return-void
.end method
