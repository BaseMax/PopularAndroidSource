.class public final Lcab/snapp/passenger/units/request_ride_waiting/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;",
        "Lcab/snapp/passenger/units/request_ride_waiting/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/view/View$OnTouchListener;

.field b:Landroid/view/View$OnTouchListener;

.field c:J

.field d:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private e:Landroid/media/MediaPlayer;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const-wide/16 v0, 0x0

    .line 43
    iput-wide v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->c:J

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/request_ride_waiting/c;)V
    .locals 4

    .line 1196
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->d:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_RIDE_REQUEST_BEEP:Ljava/lang/String;

    const-string v3, "before ride - waiting beep"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->d:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Beep on ride request"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1204
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1205
    iget-object v1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->e:Landroid/media/MediaPlayer;

    if-nez v1, :cond_2

    .line 1207
    iget-boolean v1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->f:Z

    if-eqz v1, :cond_1

    const v1, 0x7f110001

    .line 1209
    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->e:Landroid/media/MediaPlayer;

    goto :goto_0

    :cond_1
    const/high16 v1, 0x7f110000

    .line 1213
    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->e:Landroid/media/MediaPlayer;

    .line 1216
    :cond_2
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1218
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->e:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 1219
    iget-object p0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->e:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/request_ride_waiting/c;)V
    .locals 4

    .line 2178
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcab/snapp/passenger/units/request_ride_waiting/c$3;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/request_ride_waiting/c$3;-><init>(Lcab/snapp/passenger/units/request_ride_waiting/c;)V

    const-wide/16 v2, 0x46

    .line 2179
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcab/snapp/passenger/units/request_ride_waiting/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcab/snapp/passenger/units/request_ride_waiting/c;)Landroid/media/MediaPlayer;
    .locals 0

    .line 27
    iget-object p0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->e:Landroid/media/MediaPlayer;

    return-object p0
.end method


# virtual methods
.method public final onCancelRequestAnimationEnded()V
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->cancelRideRequest()V

    :cond_0
    return-void
.end method

.method public final onCancelRideError(I)V
    .locals 2

    .line 362
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    const v1, 0x7f06004b

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->showToast(II)V

    :cond_0
    return-void
.end method

.method public final onCancelRideSuccessful(I)V
    .locals 2

    .line 375
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    const v1, 0x7f06004d

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->showToast(II)V

    :cond_0
    return-void
.end method

.method public final onCloseUnderMaintenanceDialog()V
    .locals 1

    .line 443
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->dismissUnderMaintenanceDialog()V

    .line 448
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/a;->a()V

    :cond_1
    return-void
.end method

.method public final onDayMode()V
    .locals 4

    .line 314
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    if-eqz v0, :cond_1

    .line 315
    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setBackgroundColor(I)V

    .line 321
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setTitleTextColor(I)V

    .line 322
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setHoldToCancelTextColor(I)V

    .line 323
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06003a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setMessageContentTextColor(I)V

    const v2, 0x7f080244

    .line 324
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setCancelRequestBackground(I)V

    .line 325
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600ec

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setCancelRequestTextColor(I)V

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->setStatusBarColor(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onInitialize(ZZLjava/lang/String;)V
    .locals 1

    .line 64
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/request_ride_waiting/c;)V

    .line 69
    iput-boolean p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->f:Z

    .line 70
    new-instance p1, Lcab/snapp/passenger/units/request_ride_waiting/c$1;

    invoke-direct {p1, p0}, Lcab/snapp/passenger/units/request_ride_waiting/c$1;-><init>(Lcab/snapp/passenger/units/request_ride_waiting/c;)V

    iput-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->a:Landroid/view/View$OnTouchListener;

    .line 93
    new-instance p1, Lcab/snapp/passenger/units/request_ride_waiting/c$2;

    invoke-direct {p1, p0}, Lcab/snapp/passenger/units/request_ride_waiting/c$2;-><init>(Lcab/snapp/passenger/units/request_ride_waiting/c;)V

    iput-object p1, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->b:Landroid/view/View$OnTouchListener;

    .line 128
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 130
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->b:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setCancelRequestTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->a:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setWaitingGifTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_2

    .line 134
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Activity;

    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->hideMessageTitle()V

    .line 139
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->hideMessageContent()V

    goto :goto_0

    .line 143
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->showMessageTitle()V

    .line 144
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->showMessageContent()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 149
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/request_ride_waiting/c;->setStatusBarColor(Z)V

    .line 150
    invoke-virtual {p0, p2, p3}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onReallotment(ZLjava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onNightMode()V
    .locals 0

    .line 305
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onDayMode()V

    return-void
.end method

.method public final onReallotment(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onWaitingTitleAfterReallotmentReady()V

    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, p2}, Lcab/snapp/passenger/units/request_ride_waiting/c;->onWaitingTitleReady(Ljava/lang/String;)V

    return-void
.end method

.method public final onReleaseResources()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->e:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 399
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->e:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    const/4 v0, 0x0

    .line 403
    iput-object v0, p0, Lcab/snapp/passenger/units/request_ride_waiting/c;->e:Landroid/media/MediaPlayer;

    :cond_1
    return-void
.end method

.method public final onRideRequestError(Ljava/lang/String;)V
    .locals 2

    .line 349
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    const v1, 0x7f06004b

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->showToast(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final onTitleReady(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setTitle(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onUnderMaintenance()V
    .locals 1

    .line 386
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->showUnderMaintenanceDialog()V

    :cond_0
    return-void
.end method

.method public final onWaitingGifReady(Ljava/lang/String;)V
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->showWaitingGif(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onWaitingMessageReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 281
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setMessageTitle(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setMessageContent(Ljava/lang/String;)V

    return-void
.end method

.method public final onWaitingTitleAfterReallotmentReady()V
    .locals 3

    .line 261
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 265
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1201f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setTitle(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onWaitingTitleReady(Ljava/lang/String;)V
    .locals 5

    .line 243
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const v2, 0x7f1201f5

    const/4 v3, 0x0

    if-nez v0, :cond_1

    .line 249
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v4

    check-cast v4, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v4}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setTitle(Ljava/lang/String;Z)V

    return-void

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v2}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f12021a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->setTitle(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setStatusBarColor(Z)V
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 168
    invoke-virtual {p0}, Lcab/snapp/passenger/units/request_ride_waiting/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/request_ride_waiting/RequestRideWaitingView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz p1, :cond_0

    const p1, 0x7f06004d

    goto :goto_0

    :cond_0
    const p1, 0x7f06012a

    .line 169
    :goto_0
    invoke-static {v0, p1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_1
    return-void
.end method
