.class public final Lcom/ebay/mobile/analytics/collector/PreInstallTrackingInfoCollector;
.super Ljava/lang/Object;
.source "PreInstallTrackingInfoCollector.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/analytics/TrackingInfoCollector;


# annotations
.annotation runtime Ldagger/Reusable;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public collect(Landroid/content/Context;Lcom/ebay/nautilus/domain/analytics/TrackingInfo;)V
    .locals 3

    .line 34
    invoke-static {p1}, Lcom/ebay/mobile/analytics/InstallTracking;->getPreInstallData(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 35
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 37
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "mppid"

    .line 40
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v0, "mppid"

    .line 43
    invoke-interface {p2, v0, v1}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->addSessionData(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo v1, "rlutype"

    .line 47
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "rlutype"

    .line 50
    invoke-interface {p2, v0, p1}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->addSessionData(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo p1, "usecase"

    const-string v0, "prm"

    .line 55
    invoke-interface {p2, p1, v0}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->addSessionData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
