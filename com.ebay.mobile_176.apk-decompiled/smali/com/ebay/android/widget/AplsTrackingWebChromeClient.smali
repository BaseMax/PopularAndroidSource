.class public Lcom/ebay/android/widget/AplsTrackingWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "AplsTrackingWebChromeClient.java"


# static fields
.field private static final LOGGER:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private final context:Lcom/ebay/nautilus/kernel/content/EbayContext;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final elapsedRealtimeClock:Lcom/ebay/nautilus/kernel/time/ClockElapsedRealtime;

.field public final perfRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/ebay/nautilus/kernel/net/LogTrackPerf;",
            ">;"
        }
    .end annotation
.end field

.field private final wallClock:Lcom/ebay/nautilus/kernel/time/ClockWall;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 34
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "AplsWebView"

    const-string v2, "APLS WebView Tracking"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->LOGGER:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 47
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 37
    new-instance v0, Lcom/ebay/nautilus/kernel/time/ClockElapsedRealtime;

    invoke-direct {v0}, Lcom/ebay/nautilus/kernel/time/ClockElapsedRealtime;-><init>()V

    iput-object v0, p0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->elapsedRealtimeClock:Lcom/ebay/nautilus/kernel/time/ClockElapsedRealtime;

    .line 38
    new-instance v0, Lcom/ebay/nautilus/kernel/time/ClockWall;

    invoke-direct {v0}, Lcom/ebay/nautilus/kernel/time/ClockWall;-><init>()V

    iput-object v0, p0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->wallClock:Lcom/ebay/nautilus/kernel/time/ClockWall;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->perfRef:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "context may not be null"

    .line 48
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ebay/nautilus/kernel/content/EbayContext;

    iput-object p1, p0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    return-void
.end method


# virtual methods
.method buildOperationName(Lcom/ebay/nautilus/kernel/net/AsBeacon;Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/kernel/net/AsBeacon;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p2}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->findActivity(Landroid/view/ViewParent;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    iget-object p2, p1, Lcom/ebay/nautilus/kernel/net/AsBeacon;->activityName:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 105
    iget-object p1, p1, Lcom/ebay/nautilus/kernel/net/AsBeacon;->activityName:Ljava/lang/String;

    return-object p1

    :cond_1
    const-string p1, "Unknown"

    return-object p1
.end method

.method createWebViewPerfRecord(Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/webkit/WebView;)Lcom/ebay/nautilus/kernel/net/LogTrackPerf;
    .locals 6
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 81
    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->getBeacon(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/kernel/net/AsBeacon;

    move-result-object v3

    .line 82
    invoke-virtual {p0, v3, p2}, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->buildOperationName(Lcom/ebay/nautilus/kernel/net/AsBeacon;Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v2

    .line 83
    invoke-virtual {p2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/ebay/nautilus/kernel/net/LogTrackPerf;

    const-string v1, "WebView"

    iget-object v4, p0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->wallClock:Lcom/ebay/nautilus/kernel/time/ClockWall;

    iget-object v5, p0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->elapsedRealtimeClock:Lcom/ebay/nautilus/kernel/time/ClockElapsedRealtime;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/ebay/nautilus/kernel/net/LogTrackPerf;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/time/Clock;Lcom/ebay/nautilus/kernel/time/Clock;)V

    .line 86
    invoke-virtual {p2, p1}, Lcom/ebay/nautilus/kernel/net/LogTrackPerf;->setUrl(Ljava/lang/String;)V

    return-object p2
.end method

.method emitLogTrackPerf(Lcom/ebay/nautilus/kernel/net/LogTrackPerf;)V
    .locals 2

    .line 73
    sget-object v0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->LOGGER:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->LOGGER:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/net/LogTrackPerf;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/ebay/nautilus/kernel/net/LogTrackManager;->addLogPerfData(Lcom/ebay/nautilus/kernel/net/LogTrackPerf;)V

    return-void
.end method

.method findActivity(Landroid/view/ViewParent;)Landroid/app/Activity;
    .locals 3
    .param p1    # Landroid/view/ViewParent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 114
    :cond_0
    instance-of v0, p1, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 116
    move-object v0, p1

    check-cast v0, Landroid/view/View;

    .line 117
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 118
    :goto_0
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 120
    check-cast v0, Landroid/content/ContextWrapper;

    .line 121
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 124
    check-cast v0, Landroid/app/Activity;

    return-object v0

    .line 126
    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->findActivity(Landroid/view/ViewParent;)Landroid/app/Activity;

    move-result-object p1

    return-object p1

    .line 129
    :cond_3
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->findActivity(Landroid/view/ViewParent;)Landroid/app/Activity;

    move-result-object p1

    return-object p1
.end method

.method getBeacon(Lcom/ebay/nautilus/kernel/content/EbayContext;)Lcom/ebay/nautilus/kernel/net/AsBeacon;
    .locals 0
    .param p1    # Lcom/ebay/nautilus/kernel/content/EbayContext;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 92
    invoke-interface {p1}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getAsBeaconManager()Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->currentBeacon()Lcom/ebay/nautilus/kernel/net/AsBeacon;

    move-result-object p1

    return-object p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 55
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 56
    iget-object v0, p0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->perfRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/kernel/net/LogTrackPerf;

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-nez v0, :cond_0

    if-ge p2, v2, :cond_0

    .line 59
    iget-object v0, p0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->context:Lcom/ebay/nautilus/kernel/content/EbayContext;

    invoke-virtual {p0, v0, p1}, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->createWebViewPerfRecord(Lcom/ebay/nautilus/kernel/content/EbayContext;Landroid/webkit/WebView;)Lcom/ebay/nautilus/kernel/net/LogTrackPerf;

    move-result-object v0

    .line 60
    iget-object p1, p0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->perfRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_0
    if-eqz v0, :cond_1

    if-lt p2, v2, :cond_1

    .line 65
    iget-object p1, p0, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->perfRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/net/LogTrackPerf;->stopResponseTimer()J

    .line 67
    invoke-virtual {p0, v0}, Lcom/ebay/android/widget/AplsTrackingWebChromeClient;->emitLogTrackPerf(Lcom/ebay/nautilus/kernel/net/LogTrackPerf;)V

    :cond_1
    return-void
.end method
