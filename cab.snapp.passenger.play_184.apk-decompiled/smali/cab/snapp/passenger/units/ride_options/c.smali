.class public final Lcab/snapp/passenger/units/ride_options/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/ride_options/RideOptionsView;",
        "Lcab/snapp/passenger/units/ride_options/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Z

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field f:Z

.field g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideWaiting;",
            ">;"
        }
    .end annotation
.end field

.field h:Lcab/snapp/passenger/data/models/RideWaiting;

.field i:Ljava/lang/String;

.field j:Landroid/view/View$OnClickListener;

.field k:Lcab/snapp/snappdialog/dialogViews/a/e$b;

.field l:Ljava/lang/String;

.field m:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/c;->f:Z

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    .line 166
    iget-boolean v1, p0, Lcab/snapp/passenger/units/ride_options/c;->d:Z

    if-eqz v1, :cond_1

    .line 168
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setSecondDestinationDisabled()V

    .line 169
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setSecondDestinationTextDisabled()V

    .line 170
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setSecondDestinationIconDisabled()V

    goto :goto_0

    .line 172
    :cond_1
    iget-boolean v1, p0, Lcab/snapp/passenger/units/ride_options/c;->a:Z

    if-eqz v1, :cond_2

    .line 174
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_options/c;->i:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcab/snapp/passenger/units/ride_options/c;->onSecondDestinationEnabled(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->onSecondDestinationDisabled()V

    .line 180
    :goto_0
    iget-boolean v1, p0, Lcab/snapp/passenger/units/ride_options/c;->b:Z

    if-eqz v1, :cond_3

    .line 182
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->onRoundTripEnabled()V

    goto :goto_1

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->onRoundTripDisabled()V

    .line 188
    :goto_1
    iget-boolean v1, p0, Lcab/snapp/passenger/units/ride_options/c;->e:Z

    if-eqz v1, :cond_4

    .line 190
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setWaitingDisabled()V

    .line 191
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setWaitingTextDisabled()V

    .line 192
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setWaitingIconDisabled()V

    .line 193
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setStopIconDisabled()V

    .line 194
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setStopTextDisabled()V

    return-void

    .line 196
    :cond_4
    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/c;->c:Z

    if-eqz v0, :cond_5

    .line 198
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/ride_options/c;->onWaitingEnabled(Ljava/lang/String;)V

    return-void

    .line 202
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->onWaitingDisabled()V

    return-void
.end method

.method private synthetic a(ILjava/lang/String;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/RideWaiting;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideWaiting;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->g:Ljava/util/List;

    .line 138
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/RideWaiting;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideWaiting;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 140
    iget-object p2, p0, Lcab/snapp/passenger/units/ride_options/c;->g:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/data/models/RideWaiting;

    iput-object p1, p0, Lcab/snapp/passenger/units/ride_options/c;->h:Lcab/snapp/passenger/data/models/RideWaiting;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 642
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    .line 647
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Ride Option Waiting In Ride Enable"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Ride Option Waiting Before Ride Enable"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcab/snapp/passenger/units/ride_options/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$BNqjoqfE6lJTO0BlThwzJZc6Guw(Lcab/snapp/passenger/units/ride_options/c;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/ride_options/c;->a(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onApplyChangesRequest()V
    .locals 2

    .line 495
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->showLoading()V

    .line 498
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setConfirmOptionsButtonText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBeforeRideState()V
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->hideConfirmOptionsView()V

    :cond_0
    return-void
.end method

.method public final onChangeOptionsResponse()V
    .locals 3

    .line 507
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_options/c;->a()V

    .line 508
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->hideLoading()V

    .line 511
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120078

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setConfirmOptionsButtonText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onConfirmOptionsClicked()V
    .locals 1

    .line 816
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->applyEditOptions()V

    :cond_0
    return-void
.end method

.method public final onConfirmationNeeded(Ljava/lang/String;)V
    .locals 6

    .line 454
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 456
    invoke-static {}, Lcab/snapp/passenger/f/g;->isCurrentLocalRtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u202b"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 462
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u202a"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v2, p1

    .line 466
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    const v1, 0x7f120175

    const v3, 0x7f1200fe

    new-instance v4, Lcab/snapp/passenger/units/ride_options/c$2;

    invoke-direct {v4, p0}, Lcab/snapp/passenger/units/ride_options/c$2;-><init>(Lcab/snapp/passenger/units/ride_options/c;)V

    const/4 v5, 0x5

    invoke-virtual/range {v0 .. v5}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->showConfirmationDialog(ILjava/lang/String;ILandroid/view/View$OnClickListener;I)V

    :cond_1
    return-void
.end method

.method public final onDataReady(ZZLjava/util/List;ZZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/RideWaiting;",
            ">;ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 229
    iput-boolean p4, p0, Lcab/snapp/passenger/units/ride_options/c;->a:Z

    .line 230
    iput-boolean p5, p0, Lcab/snapp/passenger/units/ride_options/c;->b:Z

    .line 231
    iput-boolean p6, p0, Lcab/snapp/passenger/units/ride_options/c;->c:Z

    .line 232
    iput-object p7, p0, Lcab/snapp/passenger/units/ride_options/c;->l:Ljava/lang/String;

    .line 233
    iput-object p8, p0, Lcab/snapp/passenger/units/ride_options/c;->i:Ljava/lang/String;

    .line 234
    iput-object p3, p0, Lcab/snapp/passenger/units/ride_options/c;->g:Ljava/util/List;

    .line 235
    iput-boolean p1, p0, Lcab/snapp/passenger/units/ride_options/c;->d:Z

    .line 236
    iput-boolean p2, p0, Lcab/snapp/passenger/units/ride_options/c;->e:Z

    .line 237
    iput-boolean p9, p0, Lcab/snapp/passenger/units/ride_options/c;->f:Z

    .line 238
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_options/c;->a()V

    return-void
.end method

.method public final onInRideState(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 5

    .line 403
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 407
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto/16 :goto_2

    .line 417
    :cond_1
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3

    .line 418
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    const/16 v1, 0x32

    if-eq v0, v1, :cond_3

    .line 419
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "\u202a"

    goto :goto_1

    :cond_3
    :goto_0
    const-string v0, "\u202b"

    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f12008b

    if-nez p2, :cond_4

    .line 429
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 433
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v4, 0x2

    if-ne p2, v4, :cond_5

    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result p2

    const/16 v4, 0x1e

    if-ne p2, v4, :cond_5

    .line 435
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 439
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 443
    :goto_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setUserName(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public final onInitialize()V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/ride_options/c;)V

    .line 117
    new-instance v0, Lcab/snapp/passenger/units/ride_options/c$1;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/ride_options/c$1;-><init>(Lcab/snapp/passenger/units/ride_options/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->j:Landroid/view/View$OnClickListener;

    .line 132
    new-instance v0, Lcab/snapp/passenger/units/ride_options/-$$Lambda$c$BNqjoqfE6lJTO0BlThwzJZc6Guw;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/ride_options/-$$Lambda$c$BNqjoqfE6lJTO0BlThwzJZc6Guw;-><init>(Lcab/snapp/passenger/units/ride_options/c;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->k:Lcab/snapp/snappdialog/dialogViews/a/e$b;

    :cond_1
    :goto_0
    return-void
.end method

.method public final onNoInternetConnection()V
    .locals 2

    .line 150
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lcab/snapp/passenger/f/r;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcab/snapp/passenger/f/r;->showNoInternetDialog()V

    :cond_0
    return-void
.end method

.method public final onOptionsCanNotDisabledInRide(I)V
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->showToast(I)V

    :cond_0
    return-void
.end method

.method public final onRoundTripClicked()V
    .locals 6

    .line 701
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 703
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->onNoInternetConnection()V

    return-void

    .line 707
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/c;->b:Z

    if-eqz v0, :cond_4

    .line 1599
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1603
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    .line 1604
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1606
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Ride Option Round Trip In Ride Disable"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1607
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_IN_RIDE_OPTIONS_ROUND_OFF:Ljava/lang/String;

    const-string v3, "[disable]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1611
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Ride Option Round Trip Before Ride Disable"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 713
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->disableRoundTripOption()V

    goto :goto_2

    .line 2569
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_1

    .line 2573
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    .line 2574
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v1

    const-string v2, "[enable]"

    if-eqz v1, :cond_7

    .line 2576
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v4, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v5, "Ride Option Round Trip In Ride Enable"

    invoke-virtual {v1, v3, v4, v5}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 2580
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS_ROUND_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2584
    :cond_6
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_IN_RIDE_OPTIONS_ROUND_ON:Ljava/lang/String;

    const-string v3, "in ride options - round - enabled"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2589
    :cond_7
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v4, "Ride Option Round Trip Before Ride Enable"

    invoke-virtual {v0, v1, v3, v4}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS_ROUND_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :cond_8
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 722
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->enableRoundTripOption()V

    .line 726
    :cond_9
    :goto_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->interactor:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_a

    .line 728
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->onRoundTripClicked()V

    :cond_a
    return-void
.end method

.method public final onRoundTripDisabled()V
    .locals 3

    .line 309
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    if-nez v0, :cond_0

    return-void

    .line 314
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setRoundTripUnselected()V

    .line 315
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const v1, 0x7f080188

    .line 317
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setRoundTripIcon(I)V

    .line 318
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setRoundTripTextColor(I)V

    :cond_1
    const/4 v0, 0x0

    .line 320
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/c;->b:Z

    return-void
.end method

.method public final onRoundTripEnabled()V
    .locals 3

    .line 328
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    if-nez v0, :cond_0

    return-void

    .line 333
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setRoundTripSelected()V

    .line 334
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const v1, 0x7f080189

    .line 336
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setRoundTripIcon(I)V

    .line 337
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setRoundTripTextColor(I)V

    :cond_1
    const/4 v0, 0x1

    .line 339
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/c;->b:Z

    return-void
.end method

.method public final onSecondDestinationClicked()V
    .locals 6

    .line 665
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 667
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->onNoInternetConnection()V

    return-void

    .line 671
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/c;->a:Z

    if-eqz v0, :cond_4

    .line 1523
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 1527
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    .line 1528
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v1

    const-string v2, "[disable]"

    if-eqz v1, :cond_2

    .line 1530
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v4, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v5, "Ride Option Second Destination Before Ride Disable"

    invoke-virtual {v1, v3, v4, v5}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1534
    :cond_2
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v4, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v5, "Ride Option Second Destination In Ride Disable"

    invoke-virtual {v1, v3, v4, v5}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v4, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS_SET_SECOND_DESTINATION_OFF:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1538
    :goto_0
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1540
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS_SET_SECOND_DESTINATION_OFF:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 677
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->disableSecondDestinationOption()V

    goto :goto_3

    .line 1549
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_2

    .line 1553
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    .line 1554
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1556
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Ride Option Second Destination In Ride Enable"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1560
    :cond_6
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Ride Option Second Destination Before Ride Enable"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 686
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->chooseSecondDestination()V

    .line 690
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 692
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->onSecondDestinationClicked()V

    :cond_9
    return-void
.end method

.method public final onSecondDestinationDisabled()V
    .locals 3

    .line 246
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    if-nez v0, :cond_0

    return-void

    .line 251
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setSecondDestinationUnselected()V

    .line 252
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    const v1, 0x7f08013b

    .line 254
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setSecondDestinationIcon(I)V

    .line 255
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setSecondDestinationTextColor(I)V

    .line 256
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12005f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setSecondDestinationText(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 258
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/c;->a:Z

    return-void
.end method

.method public final onSecondDestinationEnabled(Ljava/lang/String;)V
    .locals 4

    .line 268
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setSecondDestinationSelected()V

    const v1, 0x7f08013e

    .line 274
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setSecondDestinationIcon(I)V

    .line 275
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 277
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setSecondDestinationTextColor(I)V

    const v1, 0x7f1201f8

    if-nez p1, :cond_1

    .line 280
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setSecondDestinationText(Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setSecondDestinationText(Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 288
    iput-boolean p1, p0, Lcab/snapp/passenger/units/ride_options/c;->a:Z

    return-void
.end method

.method public final onStopTimeClicked()V
    .locals 5

    .line 785
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_options/c;->b()V

    .line 787
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 789
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->onNoInternetConnection()V

    return-void

    .line 793
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->g:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_1

    .line 798
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 799
    iget-object v1, p0, Lcab/snapp/passenger/units/ride_options/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/data/models/RideWaiting;

    if-eqz v2, :cond_2

    .line 803
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/RideWaiting;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 806
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    iget-object v2, p0, Lcab/snapp/passenger/units/ride_options/c;->k:Lcab/snapp/snappdialog/dialogViews/a/e$b;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v3}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1200da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcab/snapp/passenger/units/ride_options/c;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->showChooseWaitingDialog(Ljava/util/List;Lcab/snapp/snappdialog/dialogViews/a/e$b;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final onWaitingClicked()V
    .locals 5

    .line 740
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 742
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->onNoInternetConnection()V

    return-void

    .line 746
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/c;->c:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/c;->f:Z

    if-nez v0, :cond_4

    .line 2621
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2625
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    .line 2626
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2628
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Ride Option Waiting In Ride Disable"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2632
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Ride Option Waiting Before Ride Disable"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->m:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS_STOP_OFF:Ljava/lang/String;

    const-string v3, "[disable]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 752
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/a;->disableWaitingOption()V

    return-void

    .line 757
    :cond_4
    invoke-direct {p0}, Lcab/snapp/passenger/units/ride_options/c;->b()V

    .line 759
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    .line 763
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    .line 764
    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_options/c;->g:Ljava/util/List;

    if-nez v1, :cond_6

    goto :goto_2

    .line 768
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 769
    iget-object v2, p0, Lcab/snapp/passenger/units/ride_options/c;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/data/models/RideWaiting;

    if-eqz v3, :cond_7

    .line 773
    invoke-virtual {v3}, Lcab/snapp/passenger/data/models/RideWaiting;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 776
    :cond_8
    iget-object v2, p0, Lcab/snapp/passenger/units/ride_options/c;->k:Lcab/snapp/snappdialog/dialogViews/a/e$b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f1200da

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcab/snapp/passenger/units/ride_options/c;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->showChooseWaitingDialog(Ljava/util/List;Lcab/snapp/snappdialog/dialogViews/a/e$b;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final onWaitingDisabled()V
    .locals 3

    .line 347
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setWaitingUnselected()V

    .line 348
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060094

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setWaitingTextColor(I)V

    .line 351
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setStopTimeTextColor(I)V

    .line 352
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    iget-object v1, p0, Lcab/snapp/passenger/units/ride_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120269

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setStopTime(Ljava/lang/String;)V

    .line 354
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    const v1, 0x7f0800d1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setWaitingIcon(I)V

    .line 355
    iget-object v0, p0, Lcab/snapp/passenger/units/ride_options/c;->view:Lcab/snapp/arch/protocol/BaseView;

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setStopTimeIcon(I)V

    .line 356
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    const v1, 0x7f06009b

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setStopTimeIconTintColor(I)V

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcab/snapp/passenger/units/ride_options/c;->c:Z

    return-void
.end method

.method public final onWaitingEnabled(Ljava/lang/String;)V
    .locals 2

    .line 367
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setStopTime(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setWaitingSelected()V

    .line 373
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 375
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setWaitingTextColor(I)V

    .line 376
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setStopTimeTextColor(I)V

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    const v0, 0x7f0800d2

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setWaitingIcon(I)V

    .line 379
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    const v0, 0x7f0800bf

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setStopTimeIcon(I)V

    .line 380
    invoke-virtual {p0}, Lcab/snapp/passenger/units/ride_options/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/ride_options/RideOptionsView;

    const v0, 0x7f06004c

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/ride_options/RideOptionsView;->setStopTimeIconTintColor(I)V

    const/4 p1, 0x1

    .line 381
    iput-boolean p1, p0, Lcab/snapp/passenger/units/ride_options/c;->c:Z

    :cond_2
    :goto_0
    return-void
.end method
