.class public final Lcom/ebay/mobile/analytics/InstallTracking$InstallTrackingService;
.super Lcom/ebay/nautilus/shell/app/BaseJobIntentService;
.source "InstallTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/analytics/InstallTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InstallTrackingService"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/BaseJobIntentService;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p0, :cond_0

    return-void

    .line 305
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.ebay.server_requests.Install"

    const-class v2, Lcom/ebay/mobile/analytics/InstallTracking$InstallTrackingService;

    invoke-direct {v0, v1, p1, p0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-class p1, Lcom/ebay/mobile/analytics/InstallTracking$InstallTrackingService;

    const/16 v1, 0x7d3

    invoke-static {p0, p1, v1, v0}, Lcom/ebay/mobile/analytics/InstallTracking$InstallTrackingService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 289
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.ebay.server_requests.Install"

    .line 290
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/ebay/mobile/analytics/InstallTracking;->access$200(Landroid/content/Context;Landroid/net/Uri;Z)V

    :cond_0
    return-void
.end method
