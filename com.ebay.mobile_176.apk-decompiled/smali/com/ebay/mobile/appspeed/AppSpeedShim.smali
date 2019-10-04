.class public Lcom/ebay/mobile/appspeed/AppSpeedShim;
.super Lcom/ebay/nautilus/shell/app/ActivityShim;
.source "AppSpeedShim.java"


# static fields
.field private static final debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

.field mgr:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

.field trackingName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-class v1, Lcom/ebay/mobile/appspeed/AppSpeedShim;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "debug logger for app speed shim"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/ActivityShim;-><init>()V

    return-void
.end method

.method public static deriveBeaconTags(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/nautilus/kernel/net/AsTagName;",
            ">;"
        }
    .end annotation

    .line 206
    invoke-static {p0}, Lcom/ebay/nautilus/domain/analytics/DeviceInfoUtil;->isPortrait(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 208
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    sget-object v0, Lcom/ebay/nautilus/kernel/net/AsTagName;->landscape:Lcom/ebay/nautilus/kernel/net/AsTagName;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 213
    :goto_0
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getPrefs()Lcom/ebay/common/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ebay/common/Preferences;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p0, :cond_1

    .line 216
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    :cond_1
    sget-object v0, Lcom/ebay/nautilus/kernel/net/AsTagName;->signedout:Lcom/ebay/nautilus/kernel/net/AsTagName;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p0
.end method

.method private getBeaconName(Lcom/ebay/nautilus/shell/app/TrackingSupport;)Ljava/lang/String;
    .locals 0

    .line 234
    invoke-interface {p1}, Lcom/ebay/nautilus/shell/app/TrackingSupport;->getTrackingEventName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public addTag(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 177
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->mgr:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    iget-object v1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->addTags(Lcom/ebay/nautilus/kernel/net/AsBeacon;Ljava/util/List;)V

    return-void
.end method

.method public atfRendered()V
    .locals 4

    .line 159
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    if-nez v0, :cond_1

    .line 161
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 162
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "no beacon, no atf mark"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->mgr:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    iget-object v1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    new-instance v2, Lcom/ebay/nautilus/kernel/net/AsMark;

    sget-object v3, Lcom/ebay/nautilus/kernel/net/AsMarkName;->activity_atf_render:Lcom/ebay/nautilus/kernel/net/AsMarkName;

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/kernel/net/AsMark;-><init>(Lcom/ebay/nautilus/kernel/net/AsMarkName;)V

    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->addMark(Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V

    return-void
.end method

.method public init()V
    .locals 8

    .line 53
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;->appSpeed:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/ebay/mobile/appspeed/AppSpeedShim;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lcom/ebay/nautilus/shell/app/TrackingSupport;

    if-nez v1, :cond_2

    .line 59
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 60
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string/jumbo v1, "tracking event name not available: not instance of TrackingSupport"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 65
    :cond_2
    move-object v1, v0

    check-cast v1, Lcom/ebay/nautilus/shell/app/TrackingSupport;

    invoke-direct {p0, v1}, Lcom/ebay/mobile/appspeed/AppSpeedShim;->getBeaconName(Lcom/ebay/nautilus/shell/app/TrackingSupport;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->trackingName:Ljava/lang/String;

    .line 67
    iget-object v1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->trackingName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_3

    .line 70
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string/jumbo v1, "tracking event name not available"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_3
    return-void

    .line 75
    :cond_4
    sget-object v1, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v1, v1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v1, :cond_5

    .line 76
    sget-object v1, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tracking event name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->trackingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/ebay/mobile/appspeed/AppSpeedShim;->getFwActivity()Lcom/ebay/nautilus/shell/app/FwActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getAsBeaconManager()Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    move-result-object v1

    iput-object v1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->mgr:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    .line 80
    invoke-virtual {p0}, Lcom/ebay/mobile/appspeed/AppSpeedShim;->getFwActivity()Lcom/ebay/nautilus/shell/app/FwActivity;

    move-result-object v1

    invoke-interface {v1}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-static {v1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->get(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/domain/content/dm/UserContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/content/dm/UserContext;->ensureCountry()Lcom/ebay/nautilus/domain/EbayCountry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ebay/nautilus/domain/EbayCountry;->getCountryCode()Ljava/lang/String;

    move-result-object v4

    .line 82
    invoke-static {v0}, Lcom/ebay/mobile/appspeed/AppSpeedShim;->deriveBeaconTags(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    .line 84
    iget-object v2, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->mgr:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    iget-object v3, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->trackingName:Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->createCurrentBeacon(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;J)Lcom/ebay/nautilus/kernel/net/AsBeacon;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    .line 86
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->mgr:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    iget-object v1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    new-instance v2, Lcom/ebay/nautilus/kernel/net/AsMark;

    sget-object v3, Lcom/ebay/nautilus/kernel/net/AsMarkName;->activity_start:Lcom/ebay/nautilus/kernel/net/AsMarkName;

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/kernel/net/AsMark;-><init>(Lcom/ebay/nautilus/kernel/net/AsMarkName;)V

    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->addMark(Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V

    .line 87
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->mgr:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    iget-object v1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    new-instance v2, Lcom/ebay/nautilus/kernel/net/AsMark;

    sget-object v3, Lcom/ebay/nautilus/kernel/net/AsMarkName;->lifecycle_create:Lcom/ebay/nautilus/kernel/net/AsMarkName;

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/kernel/net/AsMark;-><init>(Lcom/ebay/nautilus/kernel/net/AsMarkName;)V

    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->addMark(Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 96
    iget-object p1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    if-nez p1, :cond_1

    .line 98
    sget-object p1, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_0

    .line 99
    sget-object p1, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v0, "no beacon, not reporting first render"

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 104
    :cond_1
    sget-object p1, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean p1, p1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz p1, :cond_2

    .line 105
    sget-object p1, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    iget-object v1, v1, Lcom/ebay/nautilus/kernel/net/AsBeacon;->activityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " beacon, reporting first render"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 107
    :cond_2
    iget-object p1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->mgr:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    iget-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    new-instance v1, Lcom/ebay/nautilus/kernel/net/AsMark;

    sget-object v2, Lcom/ebay/nautilus/kernel/net/AsMarkName;->activity_first_render:Lcom/ebay/nautilus/kernel/net/AsMarkName;

    invoke-direct {v1, v2}, Lcom/ebay/nautilus/kernel/net/AsMark;-><init>(Lcom/ebay/nautilus/kernel/net/AsMarkName;)V

    invoke-virtual {p1, v0, v1}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->addMark(Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 135
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    if-nez v0, :cond_1

    .line 137
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "no beacon, no retire"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 143
    :cond_1
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_2

    .line 144
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    iget-object v2, v2, Lcom/ebay/nautilus/kernel/net/AsBeacon;->activityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " beacon, retiring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->mgr:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    iget-object v1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    new-instance v2, Lcom/ebay/nautilus/kernel/net/AsMark;

    sget-object v3, Lcom/ebay/nautilus/kernel/net/AsMarkName;->activity_closed:Lcom/ebay/nautilus/kernel/net/AsMarkName;

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/kernel/net/AsMark;-><init>(Lcom/ebay/nautilus/kernel/net/AsMarkName;)V

    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->addMark(Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V

    .line 147
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->mgr:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    iget-object v1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->retireBeacon(Lcom/ebay/nautilus/kernel/net/AsBeacon;)V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    return-void
.end method

.method protected onPostResume()V
    .locals 4

    .line 116
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/ActivityShim;->onPostResume()V

    .line 118
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    if-nez v0, :cond_1

    .line 120
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 121
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "no beacon, not reporting lifecycle start"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->mgr:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    iget-object v1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    new-instance v2, Lcom/ebay/nautilus/kernel/net/AsMark;

    sget-object v3, Lcom/ebay/nautilus/kernel/net/AsMarkName;->lifecycle_start:Lcom/ebay/nautilus/kernel/net/AsMarkName;

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/kernel/net/AsMark;-><init>(Lcom/ebay/nautilus/kernel/net/AsMarkName;)V

    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->addMark(Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V

    return-void
.end method

.method protected preOnCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/ebay/mobile/appspeed/AppSpeedShim;->init()V

    return-void
.end method

.method public reload()V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    if-nez v0, :cond_1

    .line 187
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 188
    sget-object v0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->debugLogger:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "no beacon, no refresh mark"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->mgr:Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    iget-object v1, p0, Lcom/ebay/mobile/appspeed/AppSpeedShim;->beacon:Lcom/ebay/nautilus/kernel/net/AsBeacon;

    new-instance v2, Lcom/ebay/nautilus/kernel/net/AsMark;

    sget-object v3, Lcom/ebay/nautilus/kernel/net/AsMarkName;->activity_reloaded:Lcom/ebay/nautilus/kernel/net/AsMarkName;

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/kernel/net/AsMark;-><init>(Lcom/ebay/nautilus/kernel/net/AsMarkName;)V

    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->addMark(Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V

    return-void
.end method
