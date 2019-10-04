.class public Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;
.super Ljava/lang/Object;
.source "AnalyticsServiceDispatcher.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/analytics/TrackingDispatcher;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final trackingQueue:Lcom/ebay/mobile/analytics/TrackingQueue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/mobile/analytics/TrackingQueue;)V
    .locals 0
    .param p1    # Lcom/ebay/mobile/analytics/TrackingQueue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;->trackingQueue:Lcom/ebay/mobile/analytics/TrackingQueue;

    return-void
.end method


# virtual methods
.method public isDispatchPending()Z
    .locals 1

    .line 106
    invoke-static {}, Lcom/ebay/nautilus/domain/analytics/tracking/TrackingTimestamps;->getInstance()Lcom/ebay/nautilus/domain/analytics/tracking/TrackingTimestamps;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/analytics/tracking/TrackingTimestamps;->isDispatchPending()Z

    move-result v0

    return v0
.end method

.method public send(Lcom/ebay/nautilus/kernel/content/EbayContext;Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)V
    .locals 4
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/domain/analytics/TrackingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-interface {p2}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->getName()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    sget-object p1, Lcom/ebay/nautilus/domain/analytics/AnalyticsUtil;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_0

    .line 53
    sget-object p1, Lcom/ebay/nautilus/domain/analytics/AnalyticsUtil;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string p2, "Attempted to send a tracking event that had no name. Event suppressed."

    invoke-virtual {p1, p2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "ids"

    .line 62
    invoke-static {}, Lcom/ebay/nautilus/domain/analytics/mts/MimsUtil;->getIdentityStringEncoded()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v0, v2}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->addSessionData(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/ebay/nautilus/domain/experimentation/ExperimentationHolder;->getInstance()Lcom/ebay/nautilus/domain/experimentation/ExperimentationHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ebay/nautilus/domain/experimentation/ExperimentationHolder;->getManager(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/content/dm/ExperimentationDataManager;

    move-result-object p1

    .line 71
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/domain/content/dm/ExperimentationDataManager;->loadData(Lcom/ebay/nautilus/domain/content/dm/ExperimentationDataManager$Observer;)V

    .line 74
    :cond_2
    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/content/dm/ExperimentationDataManager;->getTrackingSessionState()Landroid/os/Bundle;

    move-result-object p1

    .line 75
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 76
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v2, v3}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->addSessionData(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_3
    invoke-static {v1}, Lcom/ebay/nautilus/domain/analytics/DeviceInfoUtil;->isPortrait(Landroid/content/Context;)Z

    move-result p1

    const-string v0, "ort"

    if-eqz p1, :cond_4

    const-string p1, "p"

    goto :goto_1

    :cond_4
    const-string p1, "l"

    .line 81
    :goto_1
    invoke-interface {p2, v0, p1}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_6

    instance-of p1, v1, Landroid/app/Activity;

    if-eqz p1, :cond_6

    const-string/jumbo p1, "ssplit"

    .line 86
    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    .line 87
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "1"

    goto :goto_2

    :cond_5
    const-string v0, "0"

    .line 86
    :goto_2
    invoke-interface {p2, p1, v0}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_6
    sget-object p1, Lcom/ebay/nautilus/domain/analytics/cguid/CguidLogger;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_7

    .line 90
    sget-object p1, Lcom/ebay/nautilus/domain/analytics/cguid/CguidLogger;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initiate dispatch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 93
    :cond_7
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object p1

    sget-object v0, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;->useAnalyticsJobQueue:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;

    invoke-interface {p1, v0}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 94
    iget-object p1, p0, Lcom/ebay/mobile/analytics/AnalyticsServiceDispatcher;->trackingQueue:Lcom/ebay/mobile/analytics/TrackingQueue;

    invoke-interface {p1, p2}, Lcom/ebay/mobile/analytics/TrackingQueue;->addToQueue(Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)V

    goto :goto_3

    .line 97
    :cond_8
    invoke-static {v1, p2}, Lcom/ebay/mobile/analytics/AnalyticsJobIntentService;->enqueue(Landroid/content/Context;Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)V

    :goto_3
    return-void
.end method
