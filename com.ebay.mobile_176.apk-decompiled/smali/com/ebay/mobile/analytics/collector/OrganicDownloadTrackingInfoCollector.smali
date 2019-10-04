.class public final Lcom/ebay/mobile/analytics/collector/OrganicDownloadTrackingInfoCollector;
.super Ljava/lang/Object;
.source "OrganicDownloadTrackingInfoCollector.java"

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
    .locals 1

    .line 34
    invoke-interface {p2}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->getSessionData()Landroid/os/Bundle;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string v0, "mppid"

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "mppid"

    const-string v0, "0"

    .line 40
    invoke-interface {p2, p1, v0}, Lcom/ebay/nautilus/domain/analytics/TrackingInfo;->addSessionData(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
