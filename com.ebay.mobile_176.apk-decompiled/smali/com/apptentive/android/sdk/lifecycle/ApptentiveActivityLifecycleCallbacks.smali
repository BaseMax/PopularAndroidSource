.class public Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source "ApptentiveActivityLifecycleCallbacks.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$Holder;
    }
.end annotation


# instance fields
.field private callbacksRegistered:Z

.field private checkFgBgRoutine:Ljava/lang/Runnable;

.field private currentTaskStackTopActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private delayedChecker:Landroid/os/Handler;

.field private foregroundActivities:Ljava/util/concurrent/atomic/AtomicInteger;

.field private isAppForeground:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->foregroundActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->delayedChecker:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$1;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->currentTaskStackTopActivity:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$200(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->foregroundActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$300(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->isAppForeground:Z

    return p0
.end method

.method static synthetic access$302(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->isAppForeground:Z

    return p1
.end method

.method static synthetic access$400(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->appEnteredBackground()V

    return-void
.end method

.method private appEnteredBackground()V
    .locals 1

    .line 202
    new-instance v0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$7;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$7;-><init>(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void
.end method

.method private appEnteredForeground()V
    .locals 1

    .line 191
    new-instance v0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$6;

    invoke-direct {v0, p0}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$6;-><init>(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void
.end method

.method public static getCurrentTopActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64
    invoke-static {}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$Holder;->access$000()Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;

    move-result-object v0

    iget-object v0, v0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->currentTaskStackTopActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;
    .locals 1

    .line 215
    invoke-static {}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$Holder;->access$000()Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized register(Landroid/app/Application;)V
    .locals 2

    const-class v0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$Holder;->access$000()Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;

    move-result-object v1

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->registerCallbacks(Landroid/app/Application;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v0

    return-void

    .line 57
    :cond_0
    :try_start_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application is null"

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    .line 55
    monitor-exit v0

    throw p0
.end method

.method private registerCallbacks(Landroid/app/Application;)V
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->callbacksRegistered:Z

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 p1, 0x1

    .line 71
    iput-boolean p1, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->callbacksRegistered:Z

    goto :goto_0

    :cond_0
    const-string p1, "Apptentive Activity callbacks already registered."

    const/4 v0, 0x0

    .line 73
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/apptentive/android/sdk/ApptentiveLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    iget-boolean p1, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->isAppForeground:Z

    if-eqz p1, :cond_1

    .line 75
    new-instance p1, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$1;

    invoke-direct {p1, p0}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$1;-><init>(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;)V

    invoke-static {p1}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    .line 115
    new-instance v0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$3;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$3;-><init>(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 89
    iget-boolean v0, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->isAppForeground:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 90
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->isAppForeground:Z

    .line 92
    iget-object v1, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->checkFgBgRoutine:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->delayedChecker:Landroid/os/Handler;

    iget-object v2, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->checkFgBgRoutine:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v1, 0x0

    .line 94
    iput-object v1, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->checkFgBgRoutine:Ljava/lang/Runnable;

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->foregroundActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->appEnteredForeground()V

    .line 101
    :cond_1
    new-instance v0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$2;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$2;-><init>(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->foregroundActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gez v0, :cond_0

    const-string v0, "Incorrect number of foreground Activities encountered. Resetting to 0."

    const/4 v1, 0x0

    .line 149
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->foregroundActivities:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->checkFgBgRoutine:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->delayedChecker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->checkFgBgRoutine:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->delayedChecker:Landroid/os/Handler;

    new-instance v1, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$4;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$4;-><init>(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;)V

    iput-object v1, p0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;->checkFgBgRoutine:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    new-instance v0, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$5;

    invoke-direct {v0, p0, p1}, Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks$5;-><init>(Lcom/apptentive/android/sdk/lifecycle/ApptentiveActivityLifecycleCallbacks;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/apptentive/android/sdk/ApptentiveHelper;->dispatchOnConversationQueue(Lcom/apptentive/android/sdk/util/threading/DispatchTask;)V

    return-void
.end method
