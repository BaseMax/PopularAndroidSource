.class public Lcom/ebay/mobile/analytics/RtmTrackingService;
.super Lcom/ebay/nautilus/shell/app/BaseIntentService;
.source "RtmTrackingService.java"


# static fields
.field private static final log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 31
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "RtmTracking"

    const-string v2, "Tracking for RTM campaigns"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/analytics/RtmTrackingService;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "RTM_TRACKING_SERVICE"

    .line 37
    invoke-direct {p0, v0}, Lcom/ebay/nautilus/shell/app/BaseIntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static trackForRtmClick(Landroid/app/Activity;Lcom/ebay/mobile/home/cards/RTMViewModel;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_5

    .line 53
    instance-of v0, p0, Lcom/ebay/nautilus/shell/app/BaseActivity;

    if-nez v0, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/ebay/nautilus/shell/app/BaseActivity;

    .line 59
    iget-object v1, p1, Lcom/ebay/mobile/home/cards/RTMViewModel;->clickId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 60
    invoke-virtual {v0}, Lcom/ebay/nautilus/shell/app/BaseActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    iget-object v1, p1, Lcom/ebay/mobile/home/cards/RTMViewModel;->clickId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ebay/mobile/analytics/RtmTrackingService;->trackStandard(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;)V

    .line 63
    :cond_2
    iget-object v0, p1, Lcom/ebay/mobile/home/cards/RTMViewModel;->rtmTrackingUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/analytics/RtmTrackingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "tracking_url"

    .line 67
    iget-object v2, p1, Lcom/ebay/mobile/home/cards/RTMViewModel;->rtmTrackingUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.ebay.mobile.service.TRACK_RTM"

    .line 68
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    sget-object v1, Lcom/ebay/mobile/analytics/RtmTrackingService;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v1, v1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v1, :cond_3

    .line 71
    sget-object v1, Lcom/ebay/mobile/analytics/RtmTrackingService;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service to track RTM view model @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 73
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_4
    return-void

    :cond_5
    :goto_0
    return-void
.end method

.method private static trackStandard(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;)V
    .locals 3

    .line 85
    sget-object v0, Lcom/ebay/mobile/analytics/RtmTrackingService;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/ebay/mobile/analytics/RtmTrackingService;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing standard RTM tracking for click ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 89
    :cond_0
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;

    const-string v1, "RTMItemList"

    sget-object v2, Lcom/ebay/nautilus/domain/analytics/TrackingType;->EVENT:Lcom/ebay/nautilus/domain/analytics/TrackingType;

    invoke-direct {v0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;-><init>(Ljava/lang/String;Lcom/ebay/nautilus/domain/analytics/TrackingType;)V

    const-string/jumbo v1, "trkp"

    .line 90
    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0, p0}, Lcom/ebay/nautilus/domain/analytics/model/TrackingData;->send(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 97
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ebay.mobile.service.TRACK_RTM"

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tracking_url"

    .line 100
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-virtual {p0, p1}, Lcom/ebay/mobile/analytics/RtmTrackingService;->trackClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method trackClick(Ljava/lang/String;)V
    .locals 3

    .line 110
    sget-object v0, Lcom/ebay/mobile/analytics/RtmTrackingService;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/ebay/mobile/analytics/RtmTrackingService;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing click tracking on URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 115
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/RtmTrackingRequest;

    invoke-direct {p1, v0}, Lcom/ebay/nautilus/domain/analytics/RtmTrackingRequest;-><init>(Ljava/net/URL;)V

    .line 118
    invoke-virtual {p0}, Lcom/ebay/mobile/analytics/RtmTrackingService;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getConnector()Lcom/ebay/nautilus/kernel/net/Connector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ebay/nautilus/kernel/net/Connector;->sendRequest(Lcom/ebay/nautilus/kernel/net/Request;)Lcom/ebay/nautilus/kernel/net/Response;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 127
    sget-object v0, Lcom/ebay/mobile/analytics/RtmTrackingService;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 128
    sget-object v0, Lcom/ebay/mobile/analytics/RtmTrackingService;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "Couldn\'t send request for RTM tracking url string"

    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 122
    sget-object v0, Lcom/ebay/mobile/analytics/RtmTrackingService;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Lcom/ebay/mobile/analytics/RtmTrackingService;->log:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "Couldn\'t create URL from url string"

    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
