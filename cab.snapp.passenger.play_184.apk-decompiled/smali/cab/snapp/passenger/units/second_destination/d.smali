.class public final Lcab/snapp/passenger/units/second_destination/d;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/second_destination/SecondDestinationView;",
        "Lcab/snapp/passenger/units/second_destination/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field d:Landroid/view/View$OnClickListener;

.field e:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    .line 29
    new-instance v0, Lcab/snapp/passenger/units/second_destination/d$1;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/second_destination/d$1;-><init>(Lcab/snapp/passenger/units/second_destination/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/second_destination/d;->a:Landroid/view/View$OnClickListener;

    .line 38
    new-instance v0, Lcab/snapp/passenger/units/second_destination/d$2;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/second_destination/d$2;-><init>(Lcab/snapp/passenger/units/second_destination/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/second_destination/d;->b:Landroid/view/View$OnClickListener;

    .line 45
    new-instance v0, Lcab/snapp/passenger/units/second_destination/d$3;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/second_destination/d$3;-><init>(Lcab/snapp/passenger/units/second_destination/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/second_destination/d;->c:Landroid/view/View$OnClickListener;

    .line 55
    new-instance v0, Lcab/snapp/passenger/units/second_destination/d$4;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/second_destination/d$4;-><init>(Lcab/snapp/passenger/units/second_destination/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/second_destination/d;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcab/snapp/passenger/units/second_destination/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final onAddressUpdated(Ljava/lang/String;)V
    .locals 1

    .line 210
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->setFormattedAddress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/b;->handleBack()V

    :cond_0
    return-void
.end method

.method public final onInitialize(Z)V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 157
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/second_destination/d;)V

    if-eqz p1, :cond_1

    .line 164
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->showMapBoxCopyright()V

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->hideMapBoxCopyright()V

    .line 171
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    const v0, 0x7f1202ac

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->setToolbarTitle(I)V

    .line 175
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->setToolbarBackButton()V

    .line 176
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->setToolbarMenu()V

    :cond_2
    return-void
.end method

.method public final onLocationIsUnavailable(Lcom/google/android/gms/common/api/k;)V
    .locals 2

    .line 223
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 230
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    new-instance v1, Lcab/snapp/passenger/units/second_destination/d$5;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/second_destination/d$5;-><init>(Lcab/snapp/passenger/units/second_destination/d;Lcom/google/android/gms/common/api/k;)V

    iget-object p1, p0, Lcab/snapp/passenger/units/second_destination/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->showNoLocationDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void

    .line 248
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/d;->a:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcab/snapp/passenger/units/second_destination/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->showNoLocationDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onMapMoveFinished()V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->makePinNormal()V

    :cond_0
    return-void
.end method

.method public final onMapMoveStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcab/snapp/passenger/units/second_destination/d;->f:Z

    .line 131
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->makePinSmall()V

    :cond_0
    return-void
.end method

.method public final onMyLocationClicked()V
    .locals 4

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcab/snapp/passenger/units/second_destination/d;->f:Z

    .line 1298
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/b;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1302
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/b;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    .line 1303
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v1

    .line 1304
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    const-string v2, "[gps]"

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/d;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS_SET_SECOND_DESTINATION_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1312
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/d;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_IN_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1317
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/d;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/b;->showMyLocation()V

    .line 95
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/b;->reportOnMyLocationClickedToAppMetrica()V

    :cond_4
    return-void
.end method

.method public final onPermissionRequestIsDenied()V
    .locals 3

    .line 257
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;

    iget-object v1, p0, Lcab/snapp/passenger/units/second_destination/d;->c:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcab/snapp/passenger/units/second_destination/d;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/second_destination/SecondDestinationView;->showNoPermissionDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onPinClicked()V
    .locals 4

    .line 73
    iget-boolean v0, p0, Lcab/snapp/passenger/units/second_destination/d;->f:Z

    if-nez v0, :cond_3

    .line 1270
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/b;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1274
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/b;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    .line 1275
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v1

    .line 1276
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    const-string v2, "[map]"

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    .line 1280
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/d;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS_SET_SECOND_DESTINATION_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1284
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/d;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_IN_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1289
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/d;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 80
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/b;->secondDestinationSelected()V

    :cond_4
    return-void
.end method

.method public final onSearchClick()V
    .locals 5

    .line 2185
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/b;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2189
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/b;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    .line 2190
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v1

    const-string v2, "[tap]"

    if-eqz v1, :cond_1

    .line 2192
    iget-object v1, p0, Lcab/snapp/passenger/units/second_destination/d;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v4, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS_SEARCH:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2195
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 2199
    iget-object v0, p0, Lcab/snapp/passenger/units/second_destination/d;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS_SEARCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 118
    invoke-virtual {p0}, Lcab/snapp/passenger/units/second_destination/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/second_destination/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/second_destination/b;->navigateToSearch()V

    :cond_3
    return-void
.end method
