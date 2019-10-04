.class public Lcab/snapp/passenger/units/footer/ride_request_footer/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/footer/ride_request_footer/e;",
        "Lcab/snapp/passenger/units/footer/ride_request_footer/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field a:Lcab/snapp/passenger/f/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private g:I

.field private h:Z

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Landroidx/navigation/NavController;

.field private n:Z

.field private o:Z

.field private p:Lcab/snapp/passenger/data/models/BoxOptions;

.field private q:I

.field private r:Lio/reactivex/b/c;

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/price/PriceModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g:I

    .line 59
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->j:Z

    .line 60
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->k:Z

    .line 65
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->n:Z

    .line 66
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    .line 67
    new-instance v0, Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/BoxOptions;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->p:Lcab/snapp/passenger/data/models/BoxOptions;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/footer/ride_request_footer/a;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->i:I

    return p1
.end method

.method static synthetic a(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 223
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getVoucher()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getVoucher()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->setPromoCode(Ljava/lang/String;)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 238
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 240
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 242
    iput-boolean v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h:Z

    .line 243
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/e;

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h()Lcab/snapp/passenger/units/main/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/b;->getFooterNavController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/e;->navigateUpToMainFooter(Landroidx/navigation/NavController;)V

    return-void

    .line 248
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 250
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 252
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 254
    iput-boolean v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h:Z

    .line 255
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/e;

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h()Lcab/snapp/passenger/units/main/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/b;->getFooterNavController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/e;->navigateUpToMainFooter(Landroidx/navigation/NavController;)V

    return-void

    .line 259
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 261
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g()V

    return-void

    .line 263
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    .line 264
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    .line 265
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6

    .line 267
    :cond_5
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h:Z

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 269
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 271
    iput-boolean v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h:Z

    .line 272
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/e;

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h()Lcab/snapp/passenger/units/main/b;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/units/main/b;->getFooterNavController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/e;->navigateToDriverAssignedFooter(Landroidx/navigation/NavController;)V

    :cond_6
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 638
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->getPriceModels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 640
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->isNeedConfirmRide()Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->s:Z

    .line 641
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->getConfirmRideMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->t:Ljava/lang/String;

    .line 643
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    iget-boolean v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->s:Z

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setNeedConfirmRideRequest(Z)V

    .line 645
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->getPriceModels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->u:Ljava/util/List;

    .line 646
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->u:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->updateList(Ljava/util/List;)V

    .line 647
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    if-nez v0, :cond_0

    .line 649
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->showServiceTypes()V

    .line 651
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 653
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->getRideWaitingList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/c/g;->setRideWaitingList(Ljava/util/List;)V

    .line 655
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    iget v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->i:I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcab/snapp/passenger/c/g;->setPackageDelivery(Z)V

    .line 656
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    iget v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->i:I

    iget-boolean v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->n:Z

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v0, v2}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->updateServiceType(IZ)V

    .line 658
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onUserServiceTypeHasNoErrorForDisplayingShowCase()V

    :cond_4
    return-void
.end method

.method private synthetic a(Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->reportVoucherIsValidToMarketing()V

    .line 940
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->getPriceModels()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 943
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->isNeedConfirmRide()Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->s:Z

    .line 944
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->getConfirmRideMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->t:Ljava/lang/String;

    .line 946
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    iget-boolean v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->s:Z

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setNeedConfirmRideRequest(Z)V

    .line 948
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->hidePromoLoading()V

    .line 949
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->showPromoSaveButton()V

    .line 951
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->getPriceModels()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->u:Ljava/util/List;

    .line 952
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->u:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->updateList(Ljava/util/List;)V

    .line 953
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->n:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    if-nez v0, :cond_0

    .line 955
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->showServiceTypes()V

    .line 957
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 959
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;->getRideWaitingList()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcab/snapp/passenger/c/g;->setRideWaitingList(Ljava/util/List;)V

    .line 962
    :cond_1
    iget-object p2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/c/g;->setVoucher(Ljava/lang/String;)V

    .line 963
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    iget p2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->i:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcab/snapp/passenger/c/g;->setPackageDelivery(Z)V

    .line 964
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    iget p2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->i:I

    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->n:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, p2, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->updateServiceType(IZ)V

    .line 965
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onPromoClicked()V

    :cond_4
    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 968
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 973
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->hidePromoLoading()V

    .line 974
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->showPromoSaveButton()V

    .line 976
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_2

    .line 978
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x40d

    if-ne v0, v1, :cond_1

    .line 980
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->reportVoucherIsNotValidToMarketing()V

    .line 982
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onUnknownError(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 1018
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getVoucher()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private b()V
    .locals 4

    .line 286
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "[back]"

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 288
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-nez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->a()V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 771
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->r:Lio/reactivex/b/c;

    if-eqz v0, :cond_0

    .line 773
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 781
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 783
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onPhoneVerificationSuccessful()V

    .line 784
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g()V

    .line 787
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->finishPresentingPhoneVerificationUnit()V

    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 662
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/ride_options/a;->getConfirmationPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 663
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_d

    .line 670
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    .line 671
    check-cast p1, Lcab/snapp/passenger/data_access_layer/a/e;

    .line 672
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v1

    const/16 v2, 0x404

    if-ne v1, v2, :cond_1

    .line 674
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onNeedPhoneVerification()V

    return-void

    .line 676
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v1

    const/16 v2, 0x3ec

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v2, :cond_3

    .line 678
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onCanNotCalculatePrice(Ljava/lang/String;)V

    if-ne v0, v4, :cond_d

    .line 681
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz p1, :cond_2

    .line 683
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {p1, v3}, Lcab/snapp/passenger/activities/root/RootActivity;->setOptionsAreShown(Z)V

    .line 685
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->stateUp()Z

    return-void

    .line 688
    :cond_3
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v1

    const/16 v2, 0x40b

    if-ne v1, v2, :cond_6

    if-ne v0, v4, :cond_5

    .line 692
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_4

    .line 694
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0, v3}, Lcab/snapp/passenger/activities/root/RootActivity;->setOptionsAreShown(Z)V

    .line 696
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->stateUp()Z

    .line 698
    :cond_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onUserIsBlocked(Ljava/lang/String;)V

    .line 699
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->ALERT_USER_IS_BLOCK:Ljava/lang/String;

    const-string v2, "[show]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 701
    :cond_6
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v1

    const/16 v2, 0x415

    if-ne v1, v2, :cond_7

    .line 703
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onVoucherAlreadyActivated(Ljava/lang/String;)V

    return-void

    .line 705
    :cond_7
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v1

    const/16 v2, 0x40d

    const/4 v5, 0x0

    if-ne v1, v2, :cond_8

    .line 707
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onVoucherIsNotValid(Ljava/lang/String;)V

    .line 708
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->reportVoucherIsNotValidToMarketing()V

    .line 709
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1, v5}, Lcab/snapp/passenger/c/g;->setVoucher(Ljava/lang/String;)V

    .line 710
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g()V

    return-void

    .line 712
    :cond_8
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v1

    const/16 v2, 0x41e

    if-ne v1, v2, :cond_b

    .line 715
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onUnknownError(Ljava/lang/String;)V

    if-ne v0, v4, :cond_d

    .line 719
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 721
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1, v5}, Lcab/snapp/passenger/c/g;->setSecondDestinationFormattedAddress(Ljava/lang/String;)V

    .line 722
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1, v5}, Lcab/snapp/passenger/c/g;->setSecondDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    return-void

    .line 726
    :cond_9
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz p1, :cond_a

    .line 728
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {p1, v3}, Lcab/snapp/passenger/activities/root/RootActivity;->setOptionsAreShown(Z)V

    .line 730
    :cond_a
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->stateUp()Z

    return-void

    .line 737
    :cond_b
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onUnknownError(Ljava/lang/String;)V

    if-ne v0, v4, :cond_d

    .line 740
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz p1, :cond_c

    .line 742
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {p1, v3}, Lcab/snapp/passenger/activities/root/RootActivity;->setOptionsAreShown(Z)V

    .line 744
    :cond_c
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->stateUp()Z

    :cond_d
    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)I
    .locals 0

    .line 49
    iget p0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->i:I

    return p0
.end method

.method private c()V
    .locals 2

    .line 512
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 514
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e()V

    .line 515
    invoke-static {}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->d()V

    .line 517
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getCurrentServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setServiceTypeModel(Lcab/snapp/passenger/data/models/ServiceTypeModel;)V

    .line 518
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->n:Z

    if-eqz v0, :cond_0

    .line 520
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onHideOptions()V

    .line 521
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->b()V

    goto :goto_0

    .line 523
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    if-eqz v0, :cond_1

    .line 525
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onHideBoxOptions()V

    .line 527
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/main/b;->navigateToWaiting(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method static synthetic d(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private static d()V
    .locals 3

    .line 536
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "request"

    const-string v2, "tap"

    .line 537
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 538
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 540
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method private e()V
    .locals 4

    .line 549
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_RIDE_REQUEST:Ljava/lang/String;

    const-string v3, "before ride - ride request"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->i:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    move-object v0, v2

    goto :goto_0

    .line 564
    :cond_0
    sget-object v0, Lcab/snapp/passenger/f/b/b/c$a;->BOX_SERVICE_TYPE_RIDE_REQUEST:Ljava/lang/String;

    goto :goto_0

    .line 561
    :cond_1
    sget-object v0, Lcab/snapp/passenger/f/b/b/c$a;->ROSE_SERVICE_TYPE_RIDE_REQUEST:Ljava/lang/String;

    goto :goto_0

    .line 558
    :cond_2
    sget-object v0, Lcab/snapp/passenger/f/b/b/c$a;->PLUS_SERVICE_TYPE_RIDE_REQUEST:Ljava/lang/String;

    goto :goto_0

    .line 555
    :cond_3
    sget-object v0, Lcab/snapp/passenger/f/b/b/c$a;->ECO_SERVICE_TYPE_RIDE_REQUEST:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_4

    .line 571
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 573
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 575
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3, v2}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method static synthetic e(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    return p0
.end method

.method private f()V
    .locals 4

    .line 585
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->FIRST_RIDE_REQUEST:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->n:Z

    return p0
.end method

.method static synthetic g(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 596
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 598
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 600
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setOptionsAreShown(Z)V

    .line 604
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->stateUp()Z

    .line 606
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onNoInternetConnection()V

    return-void

    .line 610
    :cond_2
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;-><init>()V

    .line 611
    iget v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->i:I

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setServiceType(I)V

    .line 613
    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 615
    iget v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g:I

    .line 616
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getOriginLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setOriginLat(D)V

    .line 617
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getOriginLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setOriginLng(D)V

    .line 618
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setDestinationLat(D)V

    .line 619
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setDestinationLng(D)V

    .line 621
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getDestinationPlaceId()I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_3

    .line 623
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getDestinationPlaceId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setDestinationPlaceID(I)V

    .line 626
    :cond_3
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->isPackageDelivery()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setPackageDelivery(Z)V

    .line 627
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 629
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setExtraDestinationLat(Ljava/lang/Double;)V

    .line 630
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setExtraDestinationLng(Ljava/lang/Double;)V

    .line 632
    :cond_4
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->isRoundTrip()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setRoundTrip(Z)V

    .line 633
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getWaitingKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setWaiting(Ljava/lang/String;)V

    .line 634
    iget v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setTag(Ljava/lang/String;)V

    .line 635
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getVoucher()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setVoucherCode(Ljava/lang/String;)V

    .line 637
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getPrice(Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$1uFmZaOXEqDPQmqFwlGZulC24xg;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$1uFmZaOXEqDPQmqFwlGZulC24xg;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)V

    new-instance v2, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$rRMp17Azj3MqyutU2XT3Ln_vJ_o;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$rRMp17Azj3MqyutU2XT3Ln_vJ_o;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_5
    return-void
.end method

.method public static getPrivateChannelId()Ljava/lang/String;
    .locals 4

    .line 97
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->f:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private h()Lcab/snapp/passenger/units/main/b;
    .locals 2

    .line 865
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/units/main/MainController;

    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainController;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainController;->getControllerInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/MainController;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/MainController;->getControllerInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    return-object v0

    :cond_0
    return-object v1
.end method

.method static synthetic i(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic j(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g()V

    return-void
.end method

.method public static synthetic lambda$-75cTnhE9NPoUCV5Z517HIYpItE(Lcab/snapp/passenger/units/footer/ride_request_footer/a;Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->a(Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;)V

    return-void
.end method

.method public static synthetic lambda$1uFmZaOXEqDPQmqFwlGZulC24xg(Lcab/snapp/passenger/units/footer/ride_request_footer/a;Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;)V

    return-void
.end method

.method public static synthetic lambda$jlLivP4li_kF4ofN8Exsu7QumhM(Lcab/snapp/passenger/units/footer/ride_request_footer/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$rRMp17Azj3MqyutU2XT3Ln_vJ_o(Lcab/snapp/passenger/units/footer/ride_request_footer/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$twW1OPkKrncR_vcNX9537XASL0c(Lcab/snapp/passenger/units/footer/ride_request_footer/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public applyVoucher(Ljava/lang/String;)V
    .locals 4

    .line 902
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 907
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 909
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->hidePromoLoading()V

    .line 910
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->showPromoSaveButton()V

    .line 911
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onNoInternetConnection()V

    return-void

    .line 915
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getVoucher()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 990
    :cond_2
    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 992
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->hidePromoLoading()V

    .line 993
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->showPromoSaveButton()V

    goto/16 :goto_1

    .line 917
    :cond_3
    :goto_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;-><init>()V

    .line 918
    iget v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->i:I

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setServiceType(I)V

    .line 920
    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 922
    iget v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g:I

    .line 923
    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getOriginLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setOriginLat(D)V

    .line 924
    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getOriginLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setOriginLng(D)V

    .line 925
    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-virtual {v0, v2, v3}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setDestinationLat(D)V

    .line 926
    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual {v0, v2, v3}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setDestinationLng(D)V

    .line 927
    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->isPackageDelivery()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setPackageDelivery(Z)V

    .line 928
    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 930
    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setExtraDestinationLat(Ljava/lang/Double;)V

    .line 931
    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setExtraDestinationLng(Ljava/lang/Double;)V

    .line 933
    :cond_4
    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->isRoundTrip()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setRoundTrip(Z)V

    .line 934
    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getWaitingKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setWaiting(Ljava/lang/String;)V

    .line 935
    iget v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->g:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setTag(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;->setVoucherCode(Ljava/lang/String;)V

    .line 938
    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v2, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getPrice(Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;)Lio/reactivex/z;

    move-result-object v0

    new-instance v2, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$-75cTnhE9NPoUCV5Z517HIYpItE;

    invoke-direct {v2, p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$-75cTnhE9NPoUCV5Z517HIYpItE;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/a;Ljava/lang/String;)V

    new-instance p1, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$twW1OPkKrncR_vcNX9537XASL0c;

    invoke-direct {p1, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$twW1OPkKrncR_vcNX9537XASL0c;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)V

    invoke-virtual {v0, v2, p1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 2006
    :cond_5
    :goto_1
    iget-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 2008
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v0, "discountCode"

    const-string v1, "register"

    .line 2009
    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    const-string v0, "selectServiceType"

    .line 2010
    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 2012
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "Pre-ride"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_6
    return-void
.end method

.method public getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;
    .locals 1

    .line 1097
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->p:Lcab/snapp/passenger/data/models/BoxOptions;

    return-object v0
.end method

.method public getMainView()Landroid/view/View;
    .locals 1

    .line 885
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 887
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNeedConfirmationMessage()Ljava/lang/String;
    .locals 1

    .line 1130
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->t:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedConfirmation()Z
    .locals 1

    .line 1117
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->s:Z

    return v0
.end method

.method public navigateToBoxOptions()V
    .locals 3

    .line 834
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 836
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    const/4 v1, 0x0

    .line 837
    iput-boolean v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->n:Z

    .line 838
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/e;

    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->m:Landroidx/navigation/NavController;

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/units/footer/ride_request_footer/e;->navigateToBoxOptions(Landroidx/navigation/NavController;)V

    .line 839
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v1, :cond_0

    .line 841
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/activities/root/RootActivity;->setOptionsAreShown(Z)V

    :cond_0
    return-void
.end method

.method public navigateToOptions()V
    .locals 3

    .line 797
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 799
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 800
    iget v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->i:I

    const-string v2, "ride option service type key"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 801
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/e;

    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->m:Landroidx/navigation/NavController;

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/e;->navigateToRideOptions(Landroidx/navigation/NavController;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 802
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    const/4 v0, 0x1

    .line 803
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->n:Z

    .line 804
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v1, :cond_0

    .line 806
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/activities/root/RootActivity;->setOptionsAreShown(Z)V

    :cond_0
    return-void
.end method

.method public navigateUpBoxOptions()V
    .locals 4

    .line 851
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 853
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    .line 854
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/e;

    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->m:Landroidx/navigation/NavController;

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/units/footer/ride_request_footer/e;->navigateToEmpty(Landroidx/navigation/NavController;)V

    .line 855
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v1

    invoke-static {}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 856
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v1, :cond_0

    .line 858
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/activities/root/RootActivity;->setOptionsAreShown(Z)V

    :cond_0
    return-void
.end method

.method public navigateUpOptions()V
    .locals 4

    .line 816
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/e;

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->m:Landroidx/navigation/NavController;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/e;->navigateToEmpty(Landroidx/navigation/NavController;)V

    const/4 v0, 0x0

    .line 819
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    .line 820
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->n:Z

    .line 821
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v1

    invoke-static {}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 822
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v1, :cond_0

    .line 824
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/activities/root/RootActivity;->setOptionsAreShown(Z)V

    :cond_0
    return-void
.end method

.method public onActionButtonClicked()V
    .locals 4

    .line 421
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 426
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 427
    new-instance v1, Lcab/snapp/b/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    const-string v2, "Confirm_Women_Service_Type"

    .line 428
    invoke-virtual {v1, v2}, Lcab/snapp/b/a;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 430
    invoke-virtual {v1, v2}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 433
    :cond_1
    iget v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->i:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 436
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->areBoxOptionsValid()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_1

    .line 1409
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1411
    sget-object v0, Lcab/snapp/passenger/f/b/b/c$a;->FIRST_RIDE_REQUEST:Ljava/lang/String;

    .line 1412
    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onShowBoxOptions()V

    return-void

    :cond_4
    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 451
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 453
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onSnappRoseConfirmationNeeded()V

    return-void

    .line 457
    :cond_5
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c()V

    return-void

    .line 462
    :cond_6
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->isNeedConfirmation()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1480
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1482
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAbTest()Lcab/snapp/passenger/data/models/ABTestBean;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->b:Lcab/snapp/passenger/c/b;

    .line 1483
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAbTest()Lcab/snapp/passenger/data/models/ABTestBean;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ABTestBean;->isSnappGroup()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1485
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->ECO_RIDE_REQUEST_JEK:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1489
    :cond_7
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$a;->ECO_RIDE_REQUEST_NON_JEK:Ljava/lang/String;

    iget-object v2, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v2}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_8
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->ALERT_CONFIRM_BEFORE_RIDE:Ljava/lang/String;

    const-string v3, "[show]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getNeedConfirmationMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onSnappConfirmationNeeded(Ljava/lang/String;)V

    return-void

    .line 470
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c()V

    :cond_a
    :goto_2
    return-void
.end method

.method public onApplicationRootBackPressed()V
    .locals 1

    .line 202
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onApplicationRootBackPressed()V

    .line 204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->n:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onHideOptions()V

    .line 209
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->b()V

    return-void

    .line 211
    :cond_0
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    if-eqz v0, :cond_1

    .line 213
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onHideBoxOptions()V

    :cond_1
    return-void
.end method

.method public onPromoIsAccessible()V
    .locals 4

    .line 1055
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2324
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    const-string v1, "[clicked on label]"

    if-nez v0, :cond_1

    .line 2326
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_VOUCHER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2328
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    .line 2330
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_VOUCHER:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    :cond_2
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 3079
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "discountCode"

    const-string v2, "tap"

    .line 3080
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 3081
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 3083
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 1061
    :cond_3
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->n:Z

    if-eqz v0, :cond_4

    .line 1063
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onHideOptions()V

    .line 1064
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->b()V

    return-void

    .line 1066
    :cond_4
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->o:Z

    if-eqz v0, :cond_5

    .line 1068
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onHideBoxOptions()V

    :cond_5
    return-void
.end method

.method public onRideOptionsClicked()V
    .locals 5

    .line 340
    iget-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->n:Z

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 344
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onHideOptions()V

    .line 345
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->b()V

    return-void

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 354
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onShowRideOptions()V

    .line 1301
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Ride Option Button Before Ride"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    const/4 v1, 0x4

    const-string v2, "[tap]"

    if-eqz v0, :cond_2

    .line 1304
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1306
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v4, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_ASSIGNED_OPTIONS:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1310
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_IN_RIDE_OPTIONS:Ljava/lang/String;

    const-string v4, "clicked"

    invoke-virtual {v0, v2, v3, v4}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1315
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v3, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v4, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_PRE_RIDE_OPTIONS:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1368
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v2, 0x2

    const-string v3, "tap"

    const-string v4, "rideOption"

    if-ne v0, v2, :cond_3

    .line 1370
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1371
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "selectServiceType"

    .line 1372
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1374
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "Pre-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1376
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v2, "In-ride"

    if-ne v0, v1, :cond_4

    .line 1378
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1379
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverAssigned"

    .line 1380
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1382
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1384
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 1386
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1387
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 1388
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1389
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1393
    :cond_5
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_6

    .line 1395
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1396
    invoke-virtual {v0, v4, v3}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 1397
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1398
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_6
    return-void
.end method

.method public onUnitCreated()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 105
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)V

    .line 111
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->i:I

    .line 112
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    iput v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->q:I

    .line 114
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    const v1, 0x7f1200dd

    invoke-virtual {v0, v1}, Lcab/snapp/arch/protocol/BaseController;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->l:Ljava/lang/String;

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->onInitialize()V

    .line 122
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->setAdapter(I)V

    .line 123
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->startCountingPrice()V

    .line 124
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->disableUI()V

    .line 125
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->setRequestText(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getMoreControllersContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->getMoreControllersContainer()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->m:Landroidx/navigation/NavController;

    .line 133
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getUpdateSignalObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a$1;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_3
    return-void
.end method

.method public onUnitPause()V
    .locals 1

    .line 190
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitPause()V

    .line 191
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    .line 192
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->b()V

    .line 195
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->a()V

    :cond_0
    return-void
.end method

.method public onUnitResume()V
    .locals 1

    .line 181
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    const/4 v0, 0x1

    .line 182
    iput-boolean v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->h:Z

    .line 183
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->a()V

    return-void
.end method

.method public rideRequestConfirmed()V
    .locals 1

    .line 499
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->isNeedConfirmation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->f()V

    .line 504
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c()V

    return-void
.end method

.method public roseRequestConfirmed()V
    .locals 3

    .line 1035
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1040
    :cond_0
    new-instance v0, Lcab/snapp/b/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    .line 1041
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "Confirm_Women_Service_Type"

    invoke-virtual {v0, v2, v1}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 1043
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->isNeedConfirmation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->f()V

    .line 1047
    :cond_1
    invoke-direct {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c()V

    return-void
.end method

.method public scalingOptionsStarted()V
    .locals 3

    .line 1026
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public selectServiceType(I)V
    .locals 1

    .line 1140
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/c/g;->setServiceType(I)V

    return-void
.end method

.method public setBoxOptions(Lcab/snapp/passenger/data/models/BoxOptions;)V
    .locals 0

    .line 1107
    iput-object p1, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->p:Lcab/snapp/passenger/data/models/BoxOptions;

    return-void
.end method

.method public startPhoneVerificationProcedure()V
    .locals 3

    .line 758
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->r:Lio/reactivex/b/c;

    if-eqz v0, :cond_0

    .line 760
    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 765
    new-instance v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationController;

    invoke-direct {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationController;-><init>()V

    .line 766
    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/footer/ride_request_footer/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/arch/protocol/BaseController;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcab/snapp/passenger/units/footer/ride_request_footer/c;->presentPhoneVerificationUnit(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationController;Landroidx/fragment/app/FragmentManager;)V

    .line 769
    :cond_1
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/phone_verification/a;->getPrivateChanelId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$jlLivP4li_kF4ofN8Exsu7QumhM;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/footer/ride_request_footer/-$$Lambda$a$jlLivP4li_kF4ofN8Exsu7QumhM;-><init>(Lcab/snapp/passenger/units/footer/ride_request_footer/a;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->r:Lio/reactivex/b/c;

    return-void
.end method

.method public updateFreeRideStatus(Z)V
    .locals 1

    .line 1145
    iget-object v0, p0, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/c/g;->setRideFree(Z)V

    return-void
.end method
