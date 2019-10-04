.class public final Lcab/snapp/passenger/units/search/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/a/g$d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/search/SearchView;",
        "Lcab/snapp/passenger/units/search/a;",
        ">;",
        "Lcab/snapp/passenger/a/g$d;"
    }
.end annotation


# instance fields
.field a:Landroid/text/TextWatcher;

.field b:Lcab/snapp/passenger/f/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private final f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Timer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    const/4 v0, 0x3

    .line 41
    iput v0, p0, Lcab/snapp/passenger/units/search/c;->d:I

    const/16 v0, 0x64

    .line 46
    iput v0, p0, Lcab/snapp/passenger/units/search/c;->e:I

    const-wide/16 v0, 0x320

    .line 51
    iput-wide v0, p0, Lcab/snapp/passenger/units/search/c;->f:J

    .line 68
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/units/search/c;->h:Ljava/util/Timer;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcab/snapp/passenger/units/search/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 35
    iput-object p1, p0, Lcab/snapp/passenger/units/search/c;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcab/snapp/passenger/units/search/c;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 35
    iput-object p1, p0, Lcab/snapp/passenger/units/search/c;->h:Ljava/util/Timer;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 194
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getVoiceSearchImageView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 202
    new-instance v0, Lcab/snapp/passenger/data/models/ShowCaseItemDao;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;-><init>()V

    .line 203
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setActivity(Landroid/app/Activity;)V

    .line 204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getVoiceSearchImageView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setView(Landroid/view/View;)V

    .line 205
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12029d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setTitle(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f12029f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ShowCaseItemDao;->setDescription(Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcab/snapp/passenger/units/search/c;->b:Lcab/snapp/passenger/f/o;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/f/o;->showTapTargetForSearch(Lcab/snapp/passenger/data/models/ShowCaseItemDao;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic e(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseView;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcab/snapp/passenger/units/search/c;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcab/snapp/passenger/units/search/c;->a()V

    return-void
.end method

.method static synthetic g(Lcab/snapp/passenger/units/search/c;)Ljava/util/Timer;
    .locals 0

    .line 35
    iget-object p0, p0, Lcab/snapp/passenger/units/search/c;->h:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic h(Lcab/snapp/passenger/units/search/c;)Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcab/snapp/passenger/units/search/c;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcab/snapp/passenger/units/search/c;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final finish()V
    .locals 2

    .line 506
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcab/snapp/c/c;->tryHideKeyboard(Landroid/content/Context;Landroid/view/View;)Z

    :cond_0
    return-void
.end method

.method public final getVoiceSearchImageView()Landroid/view/View;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->getVoiceSearchImageView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onBackClicked()V
    .locals 5

    .line 317
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/a;->handleBack()V

    .line 1357
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1361
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    .line 1362
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v1

    const-string v2, "[back]"

    if-nez v1, :cond_2

    .line 1364
    iget-object v1, p0, Lcab/snapp/passenger/units/search/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v4, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS_SEARCH:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    :cond_2
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 1368
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS_SEARCH:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final onDeleteInputTextClicked()V
    .locals 2

    .line 344
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 348
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/search/SearchView;->setSearchEtText(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->hideDeleteInputTextBtn()V

    .line 350
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->showVoiceSearchBtn()V

    .line 351
    invoke-direct {p0}, Lcab/snapp/passenger/units/search/c;->a()V

    :cond_0
    return-void
.end method

.method public final onHandleTopTitle(Ljava/lang/String;)V
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/search/SearchView;->setToolbarTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onItemClick(ILcab/snapp/passenger/data/models/GeocodeMasterModel;Z)V
    .locals 3

    .line 1403
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/search/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1407
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/search/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object p1

    .line 1409
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/a;->getSearchRequestCode()I

    move-result v0

    const/16 v1, 0x53e

    if-ne v0, v1, :cond_3

    .line 1411
    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    .line 1412
    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result p1

    const-string v1, "[search][text]"

    if-eqz p1, :cond_2

    const/4 p1, 0x4

    if-ne v0, p1, :cond_1

    .line 1416
    iget-object p1, p0, Lcab/snapp/passenger/units/search/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS_SET_SECOND_DESTINATION_ON:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1420
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/search/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_IN_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1425
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/units/search/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/search/a;

    .line 455
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 457
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->hideKeyboard()V

    :cond_4
    if-eqz p1, :cond_6

    if-eqz p3, :cond_5

    .line 464
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/search/a;->handleGeocodeDetails(Lcab/snapp/passenger/data/models/GeocodeMasterModel;)V

    goto :goto_1

    .line 468
    :cond_5
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/search/a;->handleFavoriteDetails(Lcab/snapp/passenger/data/models/GeocodeMasterModel;)V

    .line 471
    :goto_1
    invoke-virtual {p1}, Lcab/snapp/passenger/units/search/a;->onFavoriteItemClicked()V

    :cond_6
    return-void
.end method

.method public final onNavigatingUp()V
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->hideKeyboard()V

    return-void
.end method

.method public final onNoResult()V
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->hideLoadingView()V

    .line 223
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->hideRecyclerView()V

    .line 224
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->showEmptyView()V

    :cond_0
    return-void
.end method

.method public final onReadyForShowcase()V
    .locals 0

    .line 487
    invoke-direct {p0}, Lcab/snapp/passenger/units/search/c;->a()V

    return-void
.end method

.method public final onReadyToSearch()V
    .locals 2

    .line 84
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getAppComponent()Lcab/snapp/passenger/e/a/a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/a;->inject(Lcab/snapp/passenger/units/search/c;)V

    .line 92
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->showKeyboard()V

    .line 94
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    .line 96
    new-instance v1, Lcab/snapp/passenger/units/search/c$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/search/c$1;-><init>(Lcab/snapp/passenger/units/search/c;)V

    iput-object v1, p0, Lcab/snapp/passenger/units/search/c;->a:Landroid/text/TextWatcher;

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->setFocusOnSearchView()V

    .line 187
    iget-object v1, p0, Lcab/snapp/passenger/units/search/c;->a:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/search/SearchView;->setSearchEtTextWatcher(Landroid/text/TextWatcher;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onShowLoading()V
    .locals 1

    .line 299
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->showLoadingView()V

    .line 304
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->hideEmptyView()V

    .line 305
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->hideRecyclerView()V

    :cond_0
    return-void
.end method

.method public final onShowResults(Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;Z)V
    .locals 4

    .line 249
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->hideLoadingView()V

    .line 253
    new-instance v1, Lcab/snapp/passenger/a/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, p0}, Lcab/snapp/passenger/a/g;-><init>(Landroid/content/Context;Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;ZLcab/snapp/passenger/a/g$d;)V

    .line 254
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, p2, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 255
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->showRecyclerView()V

    .line 256
    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/search/SearchView;->loadSearchResults(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcab/snapp/passenger/a/g;)V

    :cond_0
    return-void
.end method

.method public final onShowResults(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/GeocodeMasterModel;",
            ">;Z)V"
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->hideLoadingView()V

    .line 272
    new-instance v1, Lcab/snapp/passenger/a/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2, p0}, Lcab/snapp/passenger/a/g;-><init>(Landroid/content/Context;Ljava/util/List;ZLcab/snapp/passenger/a/g$d;)V

    .line 273
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, p2, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 274
    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->showRecyclerView()V

    .line 275
    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/search/SearchView;->loadSearchResults(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Lcab/snapp/passenger/a/g;)V

    :cond_0
    return-void
.end method

.method public final onUnavailableForShowcase()V
    .locals 1

    .line 492
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c;->b:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void
.end method

.method public final onVoiceSearchClicked()V
    .locals 4

    .line 330
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Voice Search"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1378
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/a;->getSnappRideDataManager()Lcab/snapp/passenger/c/g;

    move-result-object v0

    .line 1380
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/search/a;->getSearchRequestCode()I

    move-result v1

    const/16 v2, 0x53e

    if-ne v1, v2, :cond_3

    .line 1382
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v1

    .line 1383
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    const-string v2, "[search][voice]"

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    .line 1387
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS_SET_SECOND_DESTINATION_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1391
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_IN_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1396
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/search/c;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS_SET_SECOND_DESTINATION_ON:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 335
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/a;->handleVoiceSearch()V

    :cond_4
    return-void
.end method

.method public final onVoiceSearchDetected(Ljava/lang/String;)V
    .locals 1

    .line 286
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/search/SearchView;->setSearchEtText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 514
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcab/snapp/passenger/units/search/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/search/SearchView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/search/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06012a

    .line 517
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
