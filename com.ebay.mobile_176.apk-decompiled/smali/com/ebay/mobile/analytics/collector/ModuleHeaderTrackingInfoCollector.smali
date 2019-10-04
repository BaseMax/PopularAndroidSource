.class public Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;
.super Ljava/lang/Object;
.source "ModuleHeaderTrackingInfoCollector.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/analytics/TrackingInfoCollector;


# annotations
.annotation runtime Ldagger/Reusable;
.end annotation


# instance fields
.field private final deviceConfiguration:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;


# direct methods
.method constructor <init>(Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;->deviceConfiguration:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    return-void
.end method


# virtual methods
.method public collect(Landroid/content/Context;Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)V
    .locals 2

    .line 35
    invoke-static {}, Lcom/ebay/mobile/uxcomponents/viewmodel/header/ModuleHeaderConfiguration;->getInstance()Lcom/ebay/mobile/uxcomponents/viewmodel/header/ModuleHeaderConfiguration;

    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/ebay/mobile/uxcomponents/viewmodel/header/ModuleHeaderConfiguration;->getXtTags()Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/ebay/mobile/analytics/collector/ModuleHeaderTrackingInfoCollector;->deviceConfiguration:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;->trackingVectorTags:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "!xt"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "xt"

    .line 43
    :goto_0
    invoke-interface {p2, v0, p1}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->addSessionData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
