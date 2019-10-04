.class public final Lcom/ebay/mobile/analytics/collector/DesignSystemTrackingInfoCollector;
.super Ljava/lang/Object;
.source "DesignSystemTrackingInfoCollector.java"

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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/ebay/mobile/analytics/collector/DesignSystemTrackingInfoCollector;->deviceConfiguration:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    return-void
.end method


# virtual methods
.method public collect(Landroid/content/Context;Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)V
    .locals 2

    .line 39
    invoke-static {}, Lcom/ebay/mobile/themes/Ds6Configuration;->getInstance()Lcom/ebay/mobile/themes/Ds6ConfigurationContract;

    move-result-object p1

    .line 42
    invoke-interface {p1}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->isDs6Applied()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "6"

    goto :goto_0

    :cond_0
    const-string v0, "5"

    :goto_0
    const-string v1, "designsystem"

    .line 43
    invoke-interface {p2, v1, v0}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->addSessionData(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-interface {p1}, Lcom/ebay/mobile/themes/Ds6ConfigurationContract;->getDesignSystemXTag()Ljava/lang/String;

    move-result-object p1

    .line 47
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 49
    iget-object v0, p0, Lcom/ebay/mobile/analytics/collector/DesignSystemTrackingInfoCollector;->deviceConfiguration:Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;->trackingVectorTags:Lcom/ebay/nautilus/domain/dcs/DcsDomain$Nautilus$B;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "!xt"

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "xt"

    .line 52
    :goto_1
    invoke-interface {p2, v0, p1}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->addSessionData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
