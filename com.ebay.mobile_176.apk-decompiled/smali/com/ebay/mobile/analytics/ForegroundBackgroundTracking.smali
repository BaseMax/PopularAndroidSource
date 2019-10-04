.class public final Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;
.super Ljava/lang/Object;
.source "ForegroundBackgroundTracking.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/ebay/nautilus/kernel/android/ApplicationStrongReference;


# static fields
.field private static final LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private final ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "AppForegroundBackground"

    const-string v2, "Application foreground/background detection"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method constructor <init>(Landroidx/lifecycle/Lifecycle;Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ebayContext may not be null"

    .line 32
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/kernel/content/EbayContext;

    iput-object p2, p0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    .line 33
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method public onBackground()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 52
    sget-object v0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 53
    sget-object v0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "App is in the background"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    const-string v1, "Background"

    invoke-static {v0, v1}, Lcom/ebay/mobile/util/LocationUtil;->sendForegroundOrBackgroundEvent(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;)V

    return-void
.end method

.method public onForeground()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 41
    sget-object v0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "App is in the foreground"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/analytics/ForegroundBackgroundTracking;->ebayContext:Lcom/ebay/nautilus/kernel/content/EbayContext;

    const-string v1, "Foreground"

    invoke-static {v0, v1}, Lcom/ebay/mobile/util/LocationUtil;->sendForegroundOrBackgroundEvent(Lcom/ebay/nautilus/kernel/content/EbayContext;Ljava/lang/String;)V

    return-void
.end method
