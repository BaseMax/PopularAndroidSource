.class public Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;
.super Lcom/ebay/nautilus/shell/app/ActivityShim;
.source "FirstInteractionDetectionShim.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;


# instance fields
.field private final interactedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private rootViewRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    new-instance v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string/jumbo v1, "vATF"

    const-string/jumbo v2, "vATF detection shim"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Lcom/ebay/nautilus/shell/app/ActivityShim;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->interactedTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->rootViewRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private attachInteractionListeners(Landroid/view/View;)V
    .locals 2

    .line 114
    invoke-direct {p0, p1}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->getOverlay(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    sget-object v0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "Attaching interaction listeners"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 119
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 120
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_1
    return-void
.end method

.method private attachOverlay(Landroid/view/View;)V
    .locals 3

    .line 146
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 149
    :cond_0
    sget-object v0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_1

    .line 150
    sget-object v0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "Attaching overlay"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 153
    check-cast p1, Landroid/widget/FrameLayout;

    .line 154
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d018f

    const/4 v2, 0x0

    .line 155
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private detachInteractionListeners(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 129
    invoke-direct {p0, p1}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->getOverlay(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 132
    sget-object v0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "Detaching interaction listeners"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    :cond_1
    return-void
.end method

.method private detachOverlay(Landroid/view/View;)V
    .locals 3

    .line 167
    invoke-direct {p0, p1}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->getOverlay(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 171
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 173
    sget-object v1, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v1, v1, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v1, :cond_0

    .line 174
    sget-object v1, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v2, "Detaching overlay"

    invoke-virtual {v1, v2}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 176
    :cond_0
    check-cast v0, Landroid/view/ViewGroup;

    .line 177
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private emitAplsFirstInteraction()V
    .locals 4

    .line 199
    invoke-virtual {p0}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->getFwActivity()Lcom/ebay/nautilus/shell/app/FwActivity;

    move-result-object v0

    .line 200
    invoke-interface {v0}, Lcom/ebay/nautilus/shell/app/FwActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v0

    .line 202
    invoke-interface {v0}, Lcom/ebay/nautilus/kernel/content/EbayContext;->getAsBeaconManager()Lcom/ebay/nautilus/kernel/net/AsBeaconManager;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->currentBeacon()Lcom/ebay/nautilus/kernel/net/AsBeacon;

    move-result-object v1

    if-nez v1, :cond_1

    .line 206
    sget-object v0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 207
    sget-object v0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "No beacon. Not emitting APLS first interaction mark."

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 211
    :cond_1
    new-instance v2, Lcom/ebay/nautilus/kernel/net/AsMark;

    sget-object v3, Lcom/ebay/nautilus/kernel/net/AsMarkName;->activity_first_interaction:Lcom/ebay/nautilus/kernel/net/AsMarkName;

    invoke-direct {v2, v3}, Lcom/ebay/nautilus/kernel/net/AsMark;-><init>(Lcom/ebay/nautilus/kernel/net/AsMarkName;)V

    .line 212
    invoke-virtual {v0, v1, v2}, Lcom/ebay/nautilus/kernel/net/AsBeaconManager;->addMark(Lcom/ebay/nautilus/kernel/net/AsBeacon;Lcom/ebay/nautilus/kernel/net/AsMark;)V

    return-void
.end method

.method private getOverlay(Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x7f0a067e

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private onUserInteracted()V
    .locals 5

    .line 220
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->interactedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->interactedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 223
    invoke-direct {p0}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->emitAplsFirstInteraction()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->rootViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->detachInteractionListeners(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->onUserInteracted()V

    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 3

    .line 71
    sget-object v0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    iget-boolean v0, v0, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->isLoggable:Z

    if-eqz v0, :cond_0

    .line 72
    sget-object v0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->LOG:Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;

    const-string v1, "onPause"

    invoke-virtual {v0, v1}, Lcom/ebay/nautilus/kernel/util/FwLog$LogInfo;->log(Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->interactedTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 75
    iget-object v0, p0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->rootViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 76
    invoke-direct {p0, v0}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->detachInteractionListeners(Landroid/view/View;)V

    .line 77
    invoke-direct {p0, v0}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->detachOverlay(Landroid/view/View;)V

    .line 79
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/ActivityShim;->onPause()V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    .line 53
    invoke-super {p0}, Lcom/ebay/nautilus/shell/app/ActivityShim;->onPostResume()V

    .line 55
    invoke-virtual {p0}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x1020002

    .line 56
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->rootViewRef:Ljava/lang/ref/WeakReference;

    .line 59
    invoke-direct {p0, v0}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->attachOverlay(Landroid/view/View;)V

    .line 60
    invoke-direct {p0, v0}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->attachInteractionListeners(Landroid/view/View;)V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lcom/ebay/mobile/appspeed/FirstInteractionDetectionShim;->onUserInteracted()V

    const/4 p1, 0x0

    return p1
.end method
