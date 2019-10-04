.class public abstract Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;
.super Ljava/lang/Object;
.source "EbayGoogleDisplayAdListener.java"

# interfaces
.implements Lcom/ebay/mobile/ads/google/util/GoogleAdNoFillDeveloperTool;


# static fields
.field protected static final DFP_AD_LOADED:Ljava/lang/String; = "success"

.field protected static final DFP_AD_LOAD_FAILED:Ljava/lang/String; = "failure"


# instance fields
.field protected adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

.field protected final adUnitId:Ljava/lang/String;

.field protected final campaignName:Ljava/lang/String;

.field protected final impressionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->adLoader:Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;

    .line 40
    iput-object p2, p0, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->campaignName:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->impressionId:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->adUnitId:Ljava/lang/String;

    return-void
.end method

.method private getBaseTrackingBuilder(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;
    .locals 1

    .line 83
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    invoke-direct {v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->trackingType(Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    const-string p2, "campID"

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->campaignName:Ljava/lang/String;

    .line 85
    invoke-virtual {p1, p2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    const-string/jumbo p2, "svcdata"

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->impressionId:Ljava/lang/String;

    .line 86
    invoke-virtual {p1, p2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    const-string p2, "adid"

    iget-object v0, p0, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->adUnitId:Ljava/lang/String;

    .line 87
    invoke-virtual {p1, p2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p1

    return-object p1
.end method

.method private trackDisplayAdClick(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;Lcom/ebay/mobile/viewitem/util/ExperienceSidHelper;)V
    .locals 3
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/ebay/mobile/viewitem/util/ExperienceSidHelper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "AdClick"

    .line 117
    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->getBaseTrackingBuilder(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    const-string v1, "adtype"

    const-string v2, "1"

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {v0, p2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentificationProvider;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 124
    invoke-virtual {p3, v0}, Lcom/ebay/mobile/viewitem/util/ExperienceSidHelper;->addSidToTrackingData(Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;)V

    .line 126
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 0

    return-void
.end method

.method public onAdFailedToLoad(I)V
    .locals 2

    .line 55
    sget-boolean v0, Lcom/ebay/mobile/util/AdUtil;->showGoogleNoAdsIndicator:Z

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->getToastContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->getErrorMapKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/ebay/mobile/util/AdUtil;->setErrorForDisplayAdPlacement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public onAdImpression()V
    .locals 0

    return-void
.end method

.method public onAdLeftApplication()V
    .locals 0

    return-void
.end method

.method public onAdLoaded()V
    .locals 3

    .line 49
    sget-boolean v0, Lcom/ebay/mobile/util/AdUtil;->showGoogleNoAdsIndicator:Z

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->getToastContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->getErrorMapKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ebay/mobile/util/AdUtil;->setErrorForDisplayAdPlacement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public onAdOpened()V
    .locals 0

    return-void
.end method

.method protected trackDisplayAdClick(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/viewitem/util/ExperienceSidHelper;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/mobile/viewitem/util/ExperienceSidHelper;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0, p2}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->trackDisplayAdClick(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;Lcom/ebay/mobile/viewitem/util/ExperienceSidHelper;)V

    return-void
.end method

.method protected trackDisplayAdClick(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2, v0}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->trackDisplayAdClick(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;Lcom/ebay/mobile/viewitem/util/ExperienceSidHelper;)V

    return-void
.end method

.method protected trackDisplayAdRender(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 2
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "DFPAdRender"

    .line 136
    sget-object v1, Lcom/ebay/nautilus/domain/analytics/TrackingType;->PAGE_IMPRESSION:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {p0, v0, v1}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->getBaseTrackingBuilder(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method

.method protected trackDisplayAdResponse(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_1

    .line 150
    invoke-virtual {p2}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->getStartTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-string v2, "DFPAdResponse"

    .line 154
    sget-object v3, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {p0, v2, v3}, Lcom/ebay/mobile/ads/google/display/listeners/EbayGoogleDisplayAdListener;->getBaseTrackingBuilder(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object v2

    const-string v3, "Response"

    .line 155
    invoke-virtual {v2, v3, p3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p3

    const-string/jumbo v2, "responsetime"

    .line 156
    invoke-virtual {p2}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->getStartTime()J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v2, v0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->addProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;

    move-result-object p3

    .line 157
    invoke-virtual {p3}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData$Builder;->build()Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    .line 159
    invoke-virtual {p2}, Lcom/ebay/mobile/ads/google/display/EbayGoogleDisplayAdLoader;->clearStartTime()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
