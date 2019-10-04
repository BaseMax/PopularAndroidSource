.class public Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;
.super Ljava/lang/Object;
.source "ApptentiveToastNotificationManager.java"


# static fields
.field private static sApptentiveToastNotificationManager:Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;


# instance fields
.field private codeToNotificationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private isProcessingQueue:Z

.field private notificationManager:Landroid/app/NotificationManager;

.field private pendingNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;",
            ">;"
        }
    .end annotation
.end field

.field private tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

.field private wManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->isProcessingQueue:Z

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    .line 58
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->context:Landroid/content/Context;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->codeToNotificationMap:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->pendingNotificationQueue:Ljava/util/Queue;

    const-string/jumbo v0, "window"

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->wManager:Landroid/view/WindowManager;

    const-string v0, "notification"

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->processNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->doDismiss()V

    return-void
.end method

.method private doDismiss()V
    .locals 4

    .line 161
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 163
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    new-instance v1, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager$1;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager$1;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Z)Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;
    .locals 2

    const-class v0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 48
    :try_start_0
    sget-object v1, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->sApptentiveToastNotificationManager:Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;

    if-nez v1, :cond_0

    .line 49
    new-instance p1, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;

    invoke-direct {p1, p0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->sApptentiveToastNotificationManager:Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 51
    sget-object p1, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->sApptentiveToastNotificationManager:Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;

    invoke-virtual {p1, p0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->updateContext(Landroid/content/Context;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    sget-object p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->sApptentiveToastNotificationManager:Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 46
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized notifyInternal(Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;)V
    .locals 3

    monitor-enter p0

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->codeToNotificationMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->pendingNotificationQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->codeToNotificationMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->codeToNotificationMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->pendingNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 80
    iget-boolean p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->isProcessingQueue:Z

    if-nez p1, :cond_1

    .line 81
    invoke-direct {p0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->processNext()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 73
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized processNext()V
    .locals 4

    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->pendingNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 108
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->pendingNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    .line 109
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->codeToNotificationMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getCustomView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->isActivateStatusBar()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->isProcessingQueue:Z

    .line 117
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getCode()I

    move-result v2

    .line 118
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getNotificationBuilder()Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification$Builder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getIcon()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification$Builder;->setIcon(I)Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 117
    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 113
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->isProcessingQueue:Z

    .line 114
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->showFloatingNotification(Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;)V

    goto :goto_1

    .line 121
    :cond_2
    iput-boolean v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->isProcessingQueue:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 106
    monitor-exit p0

    throw v0
.end method

.method private showFloatingNotification(Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;)V
    .locals 3

    .line 128
    new-instance v0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    .line 129
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x528

    .line 130
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x7da

    .line 133
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x1

    .line 134
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    .line 135
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, -0x3

    .line 136
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x31

    .line 137
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 138
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    iget v1, v1, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->originalLeft:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v1, 0x0

    .line 139
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 140
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->wManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 144
    invoke-static {v0}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    iget-object v0, v0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rootView:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    .line 147
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 148
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 149
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-virtual {v0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->setNotification(Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x3bd10000    # -700.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->removeAllNotifications()V

    .line 222
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->wManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->wManager:Landroid/view/WindowManager;

    .line 226
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    .line 227
    sput-object v0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->sApptentiveToastNotificationManager:Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;

    return-void
.end method

.method public dismiss()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->dismiss()V

    :cond_0
    return-void
.end method

.method public declared-synchronized notify(ILcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;)V
    .locals 0

    monitor-enter p0

    .line 86
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->setCode(I)V

    .line 87
    invoke-direct {p0, p2}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->notifyInternal(Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 85
    monitor-exit p0

    throw p1
.end method

.method public notifyDefaultSilently(Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;)V
    .locals 2

    .line 213
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getDefaultSilentNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getCode()I

    move-result p1

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->codeToNotificationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->pendingNotificationQueue:Ljava/util/Queue;

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->codeToNotificationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getApptentiveFloatingNotification()Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getCode()I

    move-result v0

    if-ne v0, p1, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->startDismissalAnimation()V

    :cond_1
    return-void
.end method

.method public declared-synchronized remove(Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;)V
    .locals 0

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 91
    monitor-exit p0

    throw p1
.end method

.method public removeAllNotifications()V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->pendingNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 234
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->startDismissalAnimation()V

    :cond_0
    return-void
.end method

.method public startDismissalAnimation()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    iget-object v0, v0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rootView:Landroid/widget/LinearLayout;

    const-string/jumbo v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x258

    .line 178
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 179
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 181
    new-instance v1, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager$2;

    invoke-direct {v1, p0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager$2;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x0
        -0x3bd10000    # -700.0f
    .end array-data
.end method

.method public startDismissalAnimationAt(Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->tContainer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;

    .line 206
    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getApptentiveFloatingNotification()Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getCode()I

    move-result p1

    if-ne v0, p1, :cond_0

    .line 207
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->startDismissalAnimation()V

    :cond_0
    return-void
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 1

    .line 67
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->context:Landroid/content/Context;

    const-string/jumbo v0, "window"

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->wManager:Landroid/view/WindowManager;

    return-void
.end method
