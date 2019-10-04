.class public Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;
.super Landroid/widget/LinearLayout;
.source "ApptentiveNotificationToastView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;,
        Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$CountDownTimer;
    }
.end annotation


# instance fields
.field private apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

.field private countDown:J

.field private countDownTimer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$CountDownTimer;

.field private mHandle:Landroid/os/Handler;

.field private maxVelocity:I

.field public originalLeft:I

.field private pointerId:I

.field private preLeft:I

.field private rawX:F

.field private rawY:F

.field public rootView:Landroid/widget/LinearLayout;

.field private scrollOrientationEnum:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;

.field private startY:F

.field private toastView:Landroid/view/View;

.field private touchX:F

.field private validWidth:F

.field private velocityTracker:Landroid/view/VelocityTracker;

.field public viewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 86
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rawX:F

    .line 40
    iput v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rawY:F

    .line 41
    iput v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->touchX:F

    .line 42
    iput v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->startY:F

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->mHandle:Landroid/os/Handler;

    .line 82
    sget-object v1, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;->NONE:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;

    iput-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->scrollOrientationEnum:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;

    .line 87
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/apptentive/android/sdk/R$layout;->apptentive_notification_toast_container:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 88
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->maxVelocity:I

    .line 89
    sget v1, Lcom/apptentive/android/sdk/R$id;->rootView:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rootView:Landroid/widget/LinearLayout;

    .line 90
    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->addView(Landroid/view/View;)V

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->viewWidth:I

    .line 92
    iget p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->viewWidth:I

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->validWidth:F

    const/4 p1, 0x0

    .line 93
    iput p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->originalLeft:I

    return-void
.end method

.method static synthetic access$000(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->countDown:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->countDown:J

    return-wide p1
.end method

.method static synthetic access$010(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;)J
    .locals 4

    .line 36
    iget-wide v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->countDown:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->countDown:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;Ljava/lang/Exception;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->logException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$200(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->mHandle:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;)Landroid/view/VelocityTracker;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->velocityTracker:Landroid/view/VelocityTracker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;)Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    return-object p0
.end method

.method private acquireVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->velocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 198
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->velocityTracker:Landroid/view/VelocityTracker;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private logException(Ljava/lang/Exception;)V
    .locals 0

    .line 328
    invoke-static {p1}, Lcom/apptentive/android/sdk/debug/ErrorMetrics;->logException(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 308
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->getInstance(Landroid/content/Context;Z)Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/ApptentiveToastNotificationManager;->startDismissalAnimation()V

    const-wide/16 v0, -0x1

    .line 309
    iput-wide v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->countDown:J

    .line 310
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->countDownTimer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$CountDownTimer;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$CountDownTimer;->interrupt()V

    .line 312
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->velocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 315
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->velocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 317
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->logException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getApptentiveFloatingNotification()Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rawX:F

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rawY:F

    .line 110
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->acquireVelocityTracker(Landroid/view/MotionEvent;)V

    .line 111
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->countDown:J

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 120
    :pswitch_0
    sget-object v0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$3;->$SwitchMap$com$apptentive$android$sdk$module$messagecenter$view$ApptentiveNotificationToastView$ScrollOrientationEnum:[I

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->scrollOrientationEnum:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;

    invoke-virtual {v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x41a00000    # 20.0f

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_5

    .line 135
    :pswitch_1
    iget v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->startY:F

    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rawY:F

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 136
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->dismiss()V

    goto/16 :goto_5

    .line 132
    :pswitch_2
    iget v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rawX:F

    iget v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->touchX:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->updatePosition(I)V

    goto/16 :goto_5

    .line 122
    :pswitch_3
    iget v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rawX:F

    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->touchX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 123
    sget-object v0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;->HORIZONTAL:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->scrollOrientationEnum:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;

    goto/16 :goto_5

    .line 125
    :cond_0
    iget v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->startY:F

    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rawY:F

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 126
    sget-object v0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;->VERTICAL:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->scrollOrientationEnum:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;

    goto/16 :goto_5

    .line 143
    :pswitch_4
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->toastView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000d

    .line 144
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 143
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->velocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v3, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->maxVelocity:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 146
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->velocityTracker:Landroid/view/VelocityTracker;

    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->pointerId:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v0

    float-to-int v0, v0

    .line 147
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->scrollOrientationEnum:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;

    sget-object v3, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;->NONE:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;

    if-ne v2, v3, :cond_1

    .line 148
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_8

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    invoke-virtual {v0}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 152
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->dismiss()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    .line 154
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    .line 155
    invoke-direct {p0, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->logException(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 163
    :cond_1
    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->preLeft:I

    if-lez v2, :cond_2

    .line 164
    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->preLeft:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_0

    .line 166
    :cond_2
    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->preLeft:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int/2addr v2, v0

    :goto_0
    int-to-float v0, v2

    .line 168
    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->validWidth:F

    neg-float v2, v2

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_4

    .line 169
    iget v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->preLeft:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->validWidth:F

    div-float/2addr v0, v2

    sub-float v0, v4, v0

    cmpl-float v2, v0, v5

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 171
    :goto_1
    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->preLeft:I

    int-to-float v2, v2

    iget v4, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->validWidth:F

    add-float/2addr v4, v3

    neg-float v3, v4

    invoke-virtual {p0, v2, v3, v0, v5}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->translationX(FFFF)V

    goto :goto_4

    .line 172
    :cond_4
    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->validWidth:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_6

    .line 173
    iget v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->preLeft:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->validWidth:F

    div-float/2addr v0, v2

    sub-float v0, v4, v0

    cmpl-float v2, v0, v5

    if-ltz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    .line 175
    :goto_2
    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->preLeft:I

    int-to-float v2, v2

    invoke-virtual {p0, v2, v5, v0, v4}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->translationX(FFFF)V

    goto :goto_4

    .line 178
    :cond_6
    iget v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->preLeft:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->validWidth:F

    div-float/2addr v0, v2

    sub-float v0, v4, v0

    cmpl-float v2, v0, v5

    if-ltz v2, :cond_7

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    .line 180
    :goto_3
    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->preLeft:I

    int-to-float v2, v2

    iget v4, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->validWidth:F

    add-float/2addr v4, v3

    invoke-virtual {p0, v2, v4, v0, v5}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->translationX(FFFF)V

    .line 182
    :goto_4
    iput v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->preLeft:I

    .line 183
    sget-object v0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;->NONE:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;

    iput-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->scrollOrientationEnum:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$ScrollOrientationEnum;

    goto :goto_5

    .line 114
    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->touchX:F

    .line 115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->startY:F

    .line 116
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->pointerId:I

    .line 117
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/apptentive/android/sdk/R$drawable;->apptentive_toast_bg_dark_pressed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    :cond_8
    :goto_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public setNotification(Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;)V
    .locals 4

    .line 259
    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    .line 261
    new-instance p1, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$2;

    invoke-direct {p1, p0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$2;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->mHandle:Landroid/os/Handler;

    .line 274
    new-instance p1, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$CountDownTimer;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$CountDownTimer;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$1;)V

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->countDownTimer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$CountDownTimer;

    .line 276
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->isSticky()Z

    move-result p1

    if-nez p1, :cond_0

    .line 277
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->countDownTimer:Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$CountDownTimer;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$CountDownTimer;->start()V

    .line 281
    :cond_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->countDown:J

    .line 283
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getCustomView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    .line 285
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/apptentive/android/sdk/R$layout;->apptentive_notification_toast:I

    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rootView:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->toastView:Landroid/view/View;

    .line 286
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rootView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->toastView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 287
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->toastView:Landroid/view/View;

    sget v0, Lcom/apptentive/android/sdk/R$id;->toast_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;

    .line 288
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->toastView:Landroid/view/View;

    sget v1, Lcom/apptentive/android/sdk/R$id;->toast_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 289
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->toastView:Landroid/view/View;

    sget v2, Lcom/apptentive/android/sdk/R$id;->toast_timestamp:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 290
    iget-object v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->toastView:Landroid/view/View;

    sget v3, Lcom/apptentive/android/sdk/R$id;->toast_message:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 291
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getAvatarUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/apptentive/android/sdk/util/image/ImageUtil;->startDownloadAvatarTask(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v3, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    invoke-virtual {v3}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getIcon()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveAvatarView;->setImageResource(I)V

    .line 296
    :goto_0
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getTitleStr()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getMsgStr()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "HH:mm"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 301
    :cond_2
    iget-object p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->apptentiveNotification:Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;

    invoke-virtual {p1}, Lcom/apptentive/android/sdk/module/messagecenter/model/ApptentiveToastNotification;->getCustomView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->setCustomView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method public translationX(FFFF)V
    .locals 6

    .line 219
    iget-object v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rootView:Landroid/widget/LinearLayout;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v3, v2, [F

    const/4 v4, 0x0

    aput p3, v3, v4

    const/4 p3, 0x1

    aput p4, v3, p3

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 220
    iget-object v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->rootView:Landroid/widget/LinearLayout;

    const-string/jumbo v3, "translationX"

    new-array v5, v2, [F

    aput p1, v5, v4

    aput p2, v5, p3

    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 221
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 222
    new-array v1, v2, [Landroid/animation/Animator;

    aput-object v0, v1, v4

    aput-object p1, v1, p3

    invoke-virtual {p2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 223
    new-instance p1, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$1;

    invoke-direct {p1, p0, p4}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView$1;-><init>(Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;F)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 254
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public updatePosition(I)V
    .locals 4

    .line 208
    iget v0, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->preLeft:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->validWidth:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v0, v1, v0

    .line 209
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->validWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v3, v0, v2

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    cmpl-float v3, v1, v2

    if-ltz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 212
    :goto_1
    iget v2, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->preLeft:I

    int-to-float v2, v2

    int-to-float v3, p1

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->translationX(FFFF)V

    .line 214
    iput p1, p0, Lcom/apptentive/android/sdk/module/messagecenter/view/ApptentiveNotificationToastView;->preLeft:I

    return-void
.end method
