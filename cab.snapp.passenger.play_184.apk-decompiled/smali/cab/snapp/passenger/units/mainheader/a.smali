.class public Lcab/snapp/passenger/units/mainheader/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/mainheader/e;",
        "Lcab/snapp/passenger/units/mainheader/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String;


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

.field f:Lcab/snapp/passenger/c/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final h:I

.field private final i:I

.field private final j:I

.field private final k:I

.field private l:Lio/reactivex/b/c;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:Z

.field private p:Z

.field private q:I

.field private r:Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;

.field private s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/units/mainheader/a;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 54
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcab/snapp/passenger/units/mainheader/a;->h:I

    const/4 v1, 0x1

    .line 73
    iput v1, p0, Lcab/snapp/passenger/units/mainheader/a;->i:I

    const/4 v2, 0x2

    .line 77
    iput v2, p0, Lcab/snapp/passenger/units/mainheader/a;->j:I

    const/4 v2, 0x3

    .line 81
    iput v2, p0, Lcab/snapp/passenger/units/mainheader/a;->k:I

    .line 97
    iput v0, p0, Lcab/snapp/passenger/units/mainheader/a;->n:I

    .line 101
    iput-boolean v1, p0, Lcab/snapp/passenger/units/mainheader/a;->o:Z

    .line 105
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/a;->p:Z

    .line 113
    iput v0, p0, Lcab/snapp/passenger/units/mainheader/a;->q:I

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/mainheader/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 918
    iget v0, p0, Lcab/snapp/passenger/units/mainheader/a;->n:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 920
    iput-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->r:Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;

    .line 921
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 923
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;->getTotalPrice()I

    move-result p1

    int-to-double v2, p1

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->c()Z

    move-result v4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->isPromoEnabled()Z

    move-result v5

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcab/snapp/passenger/units/mainheader/c;->onRideDataUpdated(DZZZ)V

    .line 925
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->updatePaymentStatus()V

    :cond_1
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1195
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    .line 1196
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;->getText()Ljava/lang/String;

    move-result-object v1

    .line 1197
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;->getStatus()I

    move-result v2

    const v3, 0x106000d

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const v2, 0x7f0800da

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const v2, 0x7f0800db

    goto :goto_0

    :cond_1
    const v2, 0x106000d

    .line 1198
    :goto_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;->getStatus()I

    move-result p1

    const/4 v5, -0x1

    if-ne p1, v4, :cond_2

    const v3, 0x7f060098

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    const v3, 0x7f06004b

    goto :goto_1

    :cond_3
    if-ne p1, v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v3, -0x1

    .line 1195
    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/units/mainheader/c;->onPaymentStatusUpdated(Ljava/lang/String;II)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 4026
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4028
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;->getTotalPrice()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data/models/RideInformation;->setFinalPrice(D)V

    :cond_0
    const/4 v0, 0x0

    .line 4030
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/a;->o:Z

    .line 4031
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/c/g;->setWaitingKey(Ljava/lang/String;)V

    .line 4032
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/c/g;->setRoundTrip(Z)V

    .line 4033
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/c/g;->setSecondDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 4034
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/c/g;->setOptions(Lcab/snapp/passenger/data/models/Options;)V

    const/4 p1, 0x1

    .line 4035
    iput-boolean p1, p0, Lcab/snapp/passenger/units/mainheader/a;->o:Z

    .line 848
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 850
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/c;->onPopOptions()V

    :cond_2
    return-void
.end method

.method private synthetic a(Lcab/snapp/snappnetwork/model/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    const v0, 0x7f12020a

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/mainheader/c;->onMessageSentToDriver(I)V

    :cond_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1071
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->b()Lcab/snapp/passenger/units/main/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1073
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/e;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->b()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->getHeaderNavController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/mainheader/e;->navigateToJekHeader(Landroidx/navigation/NavController;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 6

    .line 595
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 597
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/mainheader/c;->onRideStateUpdated(I)V

    .line 598
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0}, Lcab/snapp/passenger/activities/root/RootActivity;->areInRideOptionsShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 599
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v3, 0x7f1202a9

    const v4, 0x7f1201ec

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_6

    .line 632
    :pswitch_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p1, v3}, Lcab/snapp/passenger/units/mainheader/c;->onRideFinished(I)V

    goto/16 :goto_6

    .line 628
    :pswitch_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    iget-object v3, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v3}, Lcab/snapp/passenger/c/g;->getVoucher()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p1, v4, v1, v0}, Lcab/snapp/passenger/units/mainheader/c;->onPassengerBoarded(IZZ)V

    .line 629
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->d()D

    move-result-wide v1

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->c()Z

    move-result v3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->isPromoEnabled()Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcab/snapp/passenger/units/mainheader/c;->onRideDataUpdated(DZZZ)V

    return-void

    .line 624
    :pswitch_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    iget-object v3, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v3}, Lcab/snapp/passenger/c/g;->getVoucher()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v4, v1, v0}, Lcab/snapp/passenger/units/mainheader/c;->onDriverArrived(IZZ)V

    .line 625
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->d()D

    move-result-wide v1

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->c()Z

    move-result v3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->isPromoEnabled()Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcab/snapp/passenger/units/mainheader/c;->onRideDataUpdated(DZZZ)V

    return-void

    .line 620
    :pswitch_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    iget-object v3, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v3}, Lcab/snapp/passenger/c/g;->getVoucher()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1, v4, v1, v0}, Lcab/snapp/passenger/units/mainheader/c;->onRideAccepted(IZZ)V

    .line 621
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->d()D

    move-result-wide v1

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->c()Z

    move-result v3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->isPromoEnabled()Z

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcab/snapp/passenger/units/mainheader/c;->onRideDataUpdated(DZZZ)V

    return-void

    .line 617
    :pswitch_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/mainheader/c;->onRideRequested()V

    return-void

    .line 610
    :pswitch_5
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz p1, :cond_4

    .line 612
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {p1}, Lcab/snapp/passenger/activities/root/RootActivity;->areOptionsShown()Z

    move-result p1

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    .line 614
    :goto_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    iget-object v3, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v3}, Lcab/snapp/passenger/c/g;->getDestinationFormattedAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v5}, Lcab/snapp/passenger/c/g;->getVoucher()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_5

    :cond_5
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v4, v3, v1, p1}, Lcab/snapp/passenger/units/mainheader/c;->onDestinationSelected(ILjava/lang/String;ZZ)V

    return-void

    .line 606
    :pswitch_6
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    const v0, 0x7f1202aa

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/mainheader/c;->onOriginSelected(I)V

    return-void

    .line 602
    :pswitch_7
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->f:Lcab/snapp/passenger/c/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/d;->isContentValid()Z

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcab/snapp/passenger/units/mainheader/c;->onIdle(IZ)V

    :cond_6
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic a(Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/c/g;->setVoucher(Ljava/lang/String;)V

    .line 511
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 513
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object p1

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;->getRidePrice()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/data/models/RideInformation;->setFinalPrice(D)V

    .line 516
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/mainheader/c;->onVoucherSucceed(Ljava/lang/String;)V

    .line 517
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;->getRidePrice()D

    move-result-wide v1

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->c()Z

    move-result v3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->isPromoEnabled()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcab/snapp/passenger/units/mainheader/c;->onRideDataUpdated(DZZZ)V

    .line 518
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->updatePaymentStatus()V

    .line 519
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->reportVoucherIsValidToMarketing()V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 928
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 930
    check-cast p1, Lcab/snapp/passenger/data_access_layer/a/e;

    .line 931
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x40d

    if-ne v0, v1, :cond_1

    .line 933
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 935
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/mainheader/c;->onFailedRequest(Ljava/lang/String;)V

    .line 937
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->reportVoucherIsNotValidToMarketing()V

    goto :goto_0

    .line 939
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x3ec

    if-ne v0, v1, :cond_2

    .line 941
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 943
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/mainheader/c;->onFailedRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 946
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x41e

    if-ne v0, v1, :cond_4

    .line 949
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/mainheader/c;->onFailedRequest(Ljava/lang/String;)V

    goto :goto_0

    .line 954
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 956
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12020b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/mainheader/c;->onFailedRequest(Ljava/lang/String;)V

    .line 959
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->d()D

    move-result-wide v1

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->c()Z

    move-result v3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->isPromoEnabled()Z

    move-result v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcab/snapp/passenger/units/mainheader/c;->onRideDataUpdated(DZZZ)V

    .line 960
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->updatePaymentStatus()V

    .line 3972
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result p1

    if-eqz p1, :cond_b

    const/4 p1, 0x0

    .line 3974
    iput-boolean p1, p0, Lcab/snapp/passenger/units/mainheader/a;->o:Z

    .line 3975
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getOptions()Lcab/snapp/passenger/data/models/Options;

    move-result-object v0

    .line 3976
    iget v1, p0, Lcab/snapp/passenger/units/mainheader/a;->q:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_6

    if-eqz v0, :cond_5

    .line 3978
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 3980
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLat()D

    move-result-wide v4

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/FormattedAddress;->getLng()D

    move-result-wide v6

    invoke-direct {v1, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual {p1, v1}, Lcab/snapp/passenger/c/g;->setSecondDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 3981
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getExtraDestination()Lcab/snapp/passenger/data/models/FormattedAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/FormattedAddress;->getFormattedAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/c/g;->setSecondDestinationFormattedAddress(Ljava/lang/String;)V

    goto :goto_1

    .line 3983
    :cond_5
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 3985
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1, v2}, Lcab/snapp/passenger/c/g;->setSecondDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 3986
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1, v2}, Lcab/snapp/passenger/c/g;->setSecondDestinationFormattedAddress(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    if-ne v1, v4, :cond_8

    if-eqz v0, :cond_7

    .line 3991
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getRoundTripPrice()D

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v0, v4

    if-lez v2, :cond_7

    .line 3993
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1, v3}, Lcab/snapp/passenger/c/g;->setRoundTrip(Z)V

    goto :goto_1

    .line 3995
    :cond_7
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isRoundTrip()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3997
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/c/g;->setRoundTrip(Z)V

    goto :goto_1

    :cond_8
    const/4 p1, 0x3

    if-ne v1, p1, :cond_a

    if-eqz v0, :cond_9

    .line 4002
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 4004
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/Options;->getSnappWaiting()Lcab/snapp/passenger/data/models/RideWaiting;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideWaiting;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/c/g;->setWaitingKey(Ljava/lang/String;)V

    goto :goto_1

    .line 4006
    :cond_9
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getWaitingKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 4008
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1, v2}, Lcab/snapp/passenger/c/g;->setWaitingKey(Ljava/lang/String;)V

    .line 4011
    :cond_a
    :goto_1
    iput-boolean v3, p0, Lcab/snapp/passenger/units/mainheader/a;->o:Z

    .line 962
    :cond_b
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object p1

    invoke-static {}, Lcab/snapp/passenger/units/ride_options/a;->getConfirmationPrivateChannelId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/mainheader/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private synthetic b(Lcab/snapp/snappnetwork/model/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 295
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$e;->PASSENGER_CANCELED:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    const v0, 0x7f1201d3

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/mainheader/c;->onCancelRideSucceed(I)V

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/lang/Integer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1105
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_1

    .line 1107
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->a(Ljava/lang/Integer;)V

    return-void

    .line 1109
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3eb

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    .line 1111
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 1115
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz p1, :cond_2

    .line 1117
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {p1}, Lcab/snapp/passenger/activities/root/RootActivity;->areOptionsShown()Z

    move-result p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1120
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/mainheader/c;

    const v3, 0x7f1201ec

    iget-object v4, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v4}, Lcab/snapp/passenger/c/g;->getDestinationFormattedAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v5}, Lcab/snapp/passenger/c/g;->getVoucher()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {v1, v3, v4, v0, p1}, Lcab/snapp/passenger/units/mainheader/c;->onDestinationSelected(ILjava/lang/String;ZZ)V

    return-void

    .line 1123
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3ef

    const/16 v3, 0x3ed

    if-eq v0, v3, :cond_5

    .line 1124
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 1125
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x3f0

    if-ne v0, v4, :cond_c

    .line 1127
    :cond_5
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v4, 0x6

    const/4 v5, 0x5

    if-eq v0, v4, :cond_6

    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    .line 1128
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-eq v0, v5, :cond_6

    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    .line 1129
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_c

    .line 1132
    :cond_6
    iget-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/a;->o:Z

    if-eqz v0, :cond_c

    .line 1134
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 1136
    iput v2, p0, Lcab/snapp/passenger/units/mainheader/a;->q:I

    goto :goto_1

    .line 1138
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_8

    const/4 p1, 0x2

    .line 1140
    iput p1, p0, Lcab/snapp/passenger/units/mainheader/a;->q:I

    goto :goto_1

    :cond_8
    const/4 p1, 0x3

    .line 1144
    iput p1, p0, Lcab/snapp/passenger/units/mainheader/a;->q:I

    .line 3893
    :goto_1
    new-instance p1, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;

    invoke-direct {p1}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;-><init>()V

    .line 3894
    iget v0, p0, Lcab/snapp/passenger/units/mainheader/a;->n:I

    add-int/2addr v0, v2

    iput v0, p0, Lcab/snapp/passenger/units/mainheader/a;->n:I

    .line 3895
    iget v0, p0, Lcab/snapp/passenger/units/mainheader/a;->n:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->setTag(Ljava/lang/String;)V

    .line 3896
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v0

    if-eq v0, v5, :cond_a

    .line 3898
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 3900
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->setExtraDestinationLat(Ljava/lang/Double;)V

    .line 3901
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->setExtraDestinationLng(Ljava/lang/Double;)V

    .line 3903
    :cond_9
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getWaitingKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 3905
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getWaitingKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->setWaiting(Ljava/lang/String;)V

    .line 3908
    :cond_a
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isRoundTrip()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->setRoundTrip(Ljava/lang/Boolean;)V

    .line 3909
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isPackageDelivery()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->setPackageDelivery(Z)V

    .line 3911
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 3913
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onEditOptionsRequest()V

    .line 3915
    :cond_b
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    .line 3916
    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getRideId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->editRideOptions(Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$FvumuiXJyX2gnBmLxtKJaSZlX-w;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$FvumuiXJyX2gnBmLxtKJaSZlX-w;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    new-instance v1, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$OSiuSpWkBjG-Bb6N58ogSp2bmTM;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$OSiuSpWkBjG-Bb6N58ogSp2bmTM;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    .line 3917
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 3915
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_c
    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 854
    instance-of v1, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v1, :cond_2

    .line 856
    move-object v1, p1

    check-cast v1, Lcab/snapp/passenger/data_access_layer/a/e;

    .line 857
    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v2

    const/16 v3, 0x42c

    const/16 v4, 0x40d

    if-eq v2, v3, :cond_0

    .line 858
    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v2

    const/16 v3, 0x413

    if-eq v2, v3, :cond_0

    .line 859
    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 862
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 864
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v2

    check-cast v2, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcab/snapp/passenger/units/mainheader/c;->onFailedRequest(Ljava/lang/String;)V

    .line 867
    :cond_1
    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result p1

    if-ne p1, v4, :cond_3

    .line 869
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->reportVoucherIsNotValidToMarketing()V

    goto :goto_0

    .line 875
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 877
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/mainheader/c;->onFailedRequest(Ljava/lang/String;)V

    .line 880
    :cond_3
    :goto_0
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcab/snapp/passenger/c/g;->setRoundTrip(Z)V

    .line 881
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/c/g;->setSecondDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 882
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/c/g;->setWaitingKey(Ljava/lang/String;)V

    .line 883
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object p1

    invoke-static {}, Lcab/snapp/passenger/units/ride_options/a;->getConfirmationPrivateChannelId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic c(Lcab/snapp/passenger/units/mainheader/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 528
    :cond_0
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/mainheader/c;->onFailedVoucherRequest(Ljava/lang/String;)V

    .line 531
    check-cast p1, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result p1

    const/16 v0, 0x40d

    if-ne p1, v0, :cond_2

    .line 533
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->reportVoucherIsNotValidToMarketing()V

    return-void

    .line 538
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/mainheader/c;->onFailedVoucherRequest(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private c()Z
    .locals 1

    .line 666
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getServiceTypeModel()Lcab/snapp/passenger/data/models/ServiceTypeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/ServiceTypeModel;->isRideOptionsEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private d()D
    .locals 2

    .line 684
    iget-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/a;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->r:Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;->getTotalPrice()I

    move-result v0

    int-to-double v0, v0

    goto :goto_0

    .line 688
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 690
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getFinalPrice()D

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/mainheader/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic d(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method static synthetic e(Lcab/snapp/passenger/units/mainheader/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private synthetic e(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 305
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/mainheader/c;

    const v0, 0x7f1201d2

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/mainheader/c;->onCancelRideFailed(I)V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcab/snapp/passenger/units/mainheader/a;)V
    .locals 3

    .line 4821
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4823
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    check-cast p0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/c;->onNoInternetConnection()V

    return-void

    .line 4827
    :cond_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;-><init>()V

    .line 4828
    iget v1, p0, Lcab/snapp/passenger/units/mainheader/a;->n:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->setTag(Ljava/lang/String;)V

    .line 4829
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 4831
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4833
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->setExtraDestinationLat(Ljava/lang/Double;)V

    .line 4834
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getSecondDestinationLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget-wide v1, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->setExtraDestinationLng(Ljava/lang/Double;)V

    .line 4836
    :cond_1
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getWaitingKey()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4838
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getWaitingKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->setWaiting(Ljava/lang/String;)V

    .line 4841
    :cond_2
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->isRoundTrip()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->setRoundTrip(Ljava/lang/Boolean;)V

    .line 4842
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->isPackageDelivery()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;->setPackageDelivery(Z)V

    .line 4844
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v2, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    .line 4845
    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getRideId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->applyRideOptions(Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$wMZ_sntqeVACbzowCvo62CXGhxk;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$wMZ_sntqeVACbzowCvo62CXGhxk;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    new-instance v2, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$sJJx7ud5IC7EcbDCjkaJ5MgUtkw;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$sJJx7ud5IC7EcbDCjkaJ5MgUtkw;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    .line 4846
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 4844
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/mainheader/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public static getPrivateChannelId()Ljava/lang/String;
    .locals 4

    .line 151
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/units/mainheader/a;->g:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$6Mnh0YnVkaZOGyl5S64sK-ooVLA(Lcab/snapp/passenger/units/mainheader/a;Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->a(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method

.method public static synthetic lambda$6rnNTwf8iQr9mVcmLdMXLokP2vY(Lcab/snapp/passenger/units/mainheader/a;Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/mainheader/a;->a(Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;)V

    return-void
.end method

.method public static synthetic lambda$FvumuiXJyX2gnBmLxtKJaSZlX-w(Lcab/snapp/passenger/units/mainheader/a;Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;)V

    return-void
.end method

.method public static synthetic lambda$OSiuSpWkBjG-Bb6N58ogSp2bmTM(Lcab/snapp/passenger/units/mainheader/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$PEbnLCqKxhd833fseO3GFd8LSdM(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/mainheader/a;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$SNAC2GZrC_IGv1hoXOOu23v34Pg(Lcab/snapp/passenger/units/mainheader/a;Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;)V

    return-void
.end method

.method public static synthetic lambda$VayQStiPisNErB5_kocnlwhkhLI(Lcab/snapp/passenger/units/mainheader/a;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->b(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic lambda$aHegV1_PsnTj7gMxHO1DTw4cdKc(Lcab/snapp/passenger/units/mainheader/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$jxCAc_KFgD8MQJBXq01ewFuC1Dc(Lcab/snapp/passenger/units/mainheader/a;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$rfSn48N1kMh8WtoEnO3FJAmp2co(Lcab/snapp/passenger/units/mainheader/a;Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->b(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method

.method public static synthetic lambda$sJJx7ud5IC7EcbDCjkaJ5MgUtkw(Lcab/snapp/passenger/units/mainheader/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$wMZ_sntqeVACbzowCvo62CXGhxk(Lcab/snapp/passenger/units/mainheader/a;Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;)V

    return-void
.end method

.method public static synthetic lambda$y6zXdvY-Cb6_ZVFyesbQT69zkQg(Lcab/snapp/passenger/units/mainheader/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->e(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 286
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/c/f;->isUserConnectedToNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onNoInternetConnection()V

    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    .line 293
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->cancelRide()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$rfSn48N1kMh8WtoEnO3FJAmp2co;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$rfSn48N1kMh8WtoEnO3FJAmp2co;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    new-instance v2, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$y6zXdvY-Cb6_ZVFyesbQT69zkQg;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$y6zXdvY-Cb6_ZVFyesbQT69zkQg;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    .line 294
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 292
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/mainheader/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public applyVoucher(Ljava/lang/String;)V
    .locals 4

    .line 500
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateVoucherRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateVoucherRequest;-><init>()V

    .line 501
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateVoucherRequest;->setVoucher(Ljava/lang/String;)V

    .line 503
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    iget-object v2, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getRideId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcab/snapp/passenger/data_access_layer/a/d;->updateVoucherInRide(Lcab/snapp/passenger/data_access_layer/network/requests/UpdateVoucherRequest;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$6rnNTwf8iQr9mVcmLdMXLokP2vY;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$6rnNTwf8iQr9mVcmLdMXLokP2vY;-><init>(Lcab/snapp/passenger/units/mainheader/a;Ljava/lang/String;)V

    new-instance p1, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$aHegV1_PsnTj7gMxHO1DTw4cdKc;

    invoke-direct {p1, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$aHegV1_PsnTj7gMxHO1DTw4cdKc;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    invoke-virtual {v0, v1, p1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 2548
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p1

    const-string v0, "In-ride"

    const-string v1, "register"

    const-string v2, "discountCode"

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 2550
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2551
    invoke-virtual {p1, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    const-string v1, "driverAssigned"

    .line 2552
    invoke-virtual {p1, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 2554
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 2556
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    .line 2558
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2559
    invoke-virtual {p1, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    const-string v1, "driverArrived"

    .line 2560
    invoke-virtual {p1, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 2562
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 2564
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result p1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_2

    .line 2566
    new-instance p1, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {p1}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 2567
    invoke-virtual {p1, v2, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    const-string v1, "Boarded"

    .line 2568
    invoke-virtual {p1, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 2570
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_2
    return-void
.end method

.method final b()Lcab/snapp/passenger/units/main/b;
    .locals 1

    .line 1041
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1042
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/units/main/MainController;

    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getController()Lcab/snapp/arch/protocol/BaseController;

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
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPromoEnabled()Z
    .locals 2

    .line 646
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->isCanUseRideVoucher()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 650
    :goto_0
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getVoucher()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method public navigateToAddFavoriteAddress()V
    .locals 2

    .line 582
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/e;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/mainheader/e;->navigateToAddFavorite(Landroidx/navigation/NavController;)V

    :cond_0
    return-void
.end method

.method public navigateToOptions()V
    .locals 3

    .line 316
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/mainheader/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 319
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/e;->navigateToRideOptions()V

    const/4 v0, 0x1

    .line 320
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/a;->p:Z

    .line 321
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v1, :cond_0

    .line 323
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/activities/root/RootActivity;->setInRideOptionsAreShown(Z)V

    :cond_0
    return-void
.end method

.method public navigateUpOptions()V
    .locals 9

    .line 333
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 335
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/mainheader/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 336
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/e;->navigateToEmpty()V

    .line 337
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/activities/root/RootActivity;->setInRideOptionsAreShown(Z)V

    .line 341
    :cond_0
    iput-boolean v2, p0, Lcab/snapp/passenger/units/mainheader/a;->p:Z

    .line 342
    iput-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->r:Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;

    .line 343
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 345
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcab/snapp/passenger/units/mainheader/c;

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->d()D

    move-result-wide v4

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->c()Z

    move-result v6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->isPromoEnabled()Z

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcab/snapp/passenger/units/mainheader/c;->onRideDataUpdated(DZZZ)V

    .line 347
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->isInRide()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->updatePaymentStatus()V

    .line 351
    :cond_2
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/mainheader/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v4}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 353
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    .line 354
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x5

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    .line 355
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    .line 356
    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_5

    .line 358
    :cond_4
    iput-boolean v2, p0, Lcab/snapp/passenger/units/mainheader/a;->o:Z

    .line 359
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setSecondDestinationLatLng(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 360
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setSecondDestinationFormattedAddress(Ljava/lang/String;)V

    .line 361
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setWaitingKey(Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/c/g;->setRoundTrip(Z)V

    const/4 v0, 0x1

    .line 363
    iput-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/a;->o:Z

    :cond_5
    return-void
.end method

.method public onActivityResultModelReceived(Lcab/snapp/passenger/data/models/OnActivityResultModel;)V
    .locals 4

    .line 773
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 777
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/OnActivityResultModel;->getRequestCode()I

    move-result v0

    const/16 v1, 0x3ed

    if-ne v0, v1, :cond_7

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/OnActivityResultModel;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 779
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/OnActivityResultModel;->getData()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2791
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 2796
    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mms"

    .line 2798
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "org.telegram.messenger"

    .line 2802
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2804
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_INFORM_RIDE:Ljava/lang/String;

    const-string v3, "[telegram]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v1, "com.linkedin.android"

    .line 2806
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2808
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_INFORM_RIDE:Ljava/lang/String;

    const-string v3, "[linkedin]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v1, "com.twitter.android"

    .line 2810
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2812
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_INFORM_RIDE:Ljava/lang/String;

    const-string v3, "[twitter]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2800
    :cond_5
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_INFORM_RIDE:Ljava/lang/String;

    const-string v3, "[sms]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/OnActivityResultModel;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onApplicationRootBackPressed()V
    .locals 2

    .line 1226
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onApplicationRootBackPressed()V

    .line 1227
    iget-boolean v0, p0, Lcab/snapp/passenger/units/mainheader/a;->p:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1229
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->onHideOptions()V

    .line 1230
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    .line 1232
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setInRideOptionsAreShown(Z)V

    :cond_0
    return-void
.end method

.method public onMessageToDriverClicked()V
    .locals 3

    .line 3292
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "messageToDriver"

    const-string v2, "tap"

    .line 3293
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 3294
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 3295
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "In-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public onUnitCreated()V
    .locals 7

    .line 1060
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 1061
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1066
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/mainheader/a;)V

    .line 1068
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcab/snapp/passenger/units/main/b;->JEK_BOTTOM_SHEET_STATE_CHANNEL_KEY:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->s:Ljava/lang/String;

    .line 1069
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->s:Ljava/lang/String;

    new-instance v2, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$jxCAc_KFgD8MQJBXq01ewFuC1Dc;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$jxCAc_KFgD8MQJBXq01ewFuC1Dc;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/mainheader/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 1079
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/footer/ride_request_footer/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/mainheader/a$1;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/mainheader/a$1;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1078
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/mainheader/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 1098
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->l:Lio/reactivex/b/c;

    if-nez v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getUpdateSignalObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$VayQStiPisNErB5_kocnlwhkhLI;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$VayQStiPisNErB5_kocnlwhkhLI;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->l:Lio/reactivex/b/c;

    .line 1151
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->l:Lio/reactivex/b/c;

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/mainheader/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 1153
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1155
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getListRideMessages()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->m:Ljava/util/List;

    .line 1157
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1159
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/mainheader/c;->onInitialize(Ljava/util/List;)V

    .line 1160
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/mainheader/c;->getOptionsContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1162
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/mainheader/e;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/mainheader/c;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/mainheader/c;->getOptionsContainer()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroidx/navigation/Navigation;->findNavController(Landroid/view/View;)Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/mainheader/e;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 1165
    :cond_3
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/ride_options/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/mainheader/a$2;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/mainheader/a$2;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/mainheader/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 1189
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/activities/root/RootActivity;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/mainheader/-$$Lambda$zGY5yL06pwBXeDuj3rBvOSlgSb0;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$zGY5yL06pwBXeDuj3rBvOSlgSb0;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1188
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/mainheader/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 1193
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getPaymentStatusObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$SNAC2GZrC_IGv1hoXOOu23v34Pg;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$SNAC2GZrC_IGv1hoXOOu23v34Pg;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    .line 1194
    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1193
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/mainheader/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 1202
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcab/snapp/passenger/units/mainheader/c;

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->d()D

    move-result-wide v2

    invoke-direct {p0}, Lcab/snapp/passenger/units/mainheader/a;->c()Z

    move-result v4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->isPromoEnabled()Z

    move-result v5

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcab/snapp/passenger/units/mainheader/c;->onRideDataUpdated(DZZZ)V

    :cond_4
    return-void
.end method

.method public onUnitPause()V
    .locals 1

    .line 1219
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitPause()V

    .line 1220
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void
.end method

.method public onUnitResume()V
    .locals 1

    .line 1211
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 1212
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcab/snapp/passenger/units/mainheader/a;->a(Ljava/lang/Integer;)V

    .line 1213
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->updatePaymentStatus()V

    return-void
.end method

.method public reportOnCancelButtonToAppMetrica()V
    .locals 5

    .line 1266
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "In-ride"

    const-string v2, "tap"

    const-string v3, "cancel"

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 1268
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1269
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v2, "driverAssigned"

    .line 1270
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1271
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1272
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1274
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    .line 1276
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1277
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v2, "driverArrived"

    .line 1278
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1279
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1280
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_1
    return-void
.end method

.method public reportOnOptionClickedToAppMetrica()V
    .locals 5

    .line 1328
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "In-ride"

    const-string v2, "tap"

    const-string v3, "rideOption"

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 1330
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1331
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v2, "driverAssigned"

    .line 1332
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1334
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1336
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    .line 1338
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1339
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v2, "driverArrived"

    .line 1340
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1342
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1344
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    .line 1346
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1347
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v2, "Boarded"

    .line 1348
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1350
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_2
    return-void
.end method

.method public reportOnPromoClickedToAppMetrica()V
    .locals 5

    .line 1300
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "In-ride"

    const-string v2, "tap"

    const-string v3, "discountCode"

    const/4 v4, 0x4

    if-ne v0, v4, :cond_0

    .line 1302
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1303
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v2, "driverAssigned"

    .line 1304
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1306
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1308
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    .line 1310
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1311
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v2, "driverArrived"

    .line 1312
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1314
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1316
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    .line 1318
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1319
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v2, "Boarded"

    .line 1320
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1322
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_2
    return-void
.end method

.method public reportOnRideCanceledToMarketing()V
    .locals 4

    .line 1242
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "In-ride"

    const-string v2, "cancel"

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 1244
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1245
    invoke-virtual {v0, v2, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v2, "driverAssigned"

    .line 1246
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1247
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1248
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 1250
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    .line 1252
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    .line 1253
    invoke-virtual {v0, v2, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v2, "driverArrived"

    .line 1254
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    .line 1255
    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 1256
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_1
    return-void
.end method

.method public reportSideMenuToggleToAppMetrica()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const-string v1, "Pre-ride"

    const-string v2, "sideMenu"

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v3, "setOrigin"

    .line 177
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 179
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 183
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v3, "setDestination"

    .line 184
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 186
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 190
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v3, "selectServiceType"

    .line 191
    invoke-virtual {v0, v3, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 193
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 195
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x4

    const-string v3, "In-ride"

    if-ne v0, v1, :cond_3

    .line 197
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "driverAssigned"

    .line 198
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 200
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 202
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 204
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "driverArrived"

    .line 205
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 207
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void

    .line 209
    :cond_4
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 211
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "Boarded"

    .line 212
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 214
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_5
    return-void
.end method

.method public sendMessageToDriver(ILjava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1759
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MESSAGE_TO_DRIVER_SEND_MESSAGE:Ljava/lang/String;

    const-string v3, "[callToMe]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1756
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MESSAGE_TO_DRIVER_SEND_MESSAGE:Ljava/lang/String;

    const-string v3, "[5MinComing]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1753
    :cond_2
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MESSAGE_TO_DRIVER_SEND_MESSAGE:Ljava/lang/String;

    const-string v3, "[nowComing]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->e:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->CLICK:Ljava/lang/String;

    const-string v3, "Message To Driver Send Button"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2403
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "messageToDriver"

    .line 2404
    invoke-virtual {v0, v1, p2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "driverArrived"

    .line 2405
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2406
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "In-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    .line 378
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getRideId()Ljava/lang/String;

    move-result-object v0

    .line 379
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 381
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->d:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 382
    invoke-virtual {v1, v0, p1, p2}, Lcab/snapp/passenger/data_access_layer/a/d;->sendMessageToDriver(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance p2, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$6Mnh0YnVkaZOGyl5S64sK-ooVLA;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$6Mnh0YnVkaZOGyl5S64sK-ooVLA;-><init>(Lcab/snapp/passenger/units/mainheader/a;)V

    sget-object v0, Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$PEbnLCqKxhd833fseO3GFd8LSdM;->INSTANCE:Lcab/snapp/passenger/units/mainheader/-$$Lambda$a$PEbnLCqKxhd833fseO3GFd8LSdM;

    .line 383
    invoke-virtual {p1, p2, v0}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 381
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/mainheader/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_3
    return-void
.end method

.method public shareRide()V
    .locals 9

    .line 414
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 418
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getRideInformation()Lcab/snapp/passenger/data/models/RideInformation;

    move-result-object v0

    .line 419
    iget-object v1, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getRideId()Ljava/lang/String;

    move-result-object v1

    .line 420
    iget-object v2, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getDriverInfo()Lcab/snapp/passenger/data/models/DriverInfo;

    move-result-object v2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 428
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getRideId()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getStartTime()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getShareUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/DriverInfo;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 430
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getStartTime()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getRideId()Ljava/lang/String;

    move-result-object v4

    .line 432
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideInformation;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/DriverInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 435
    iget-object v5, p0, Lcab/snapp/passenger/units/mainheader/a;->c:Lcab/snapp/passenger/c/g;

    invoke-virtual {v5}, Lcab/snapp/passenger/c/g;->getServiceType()I

    move-result v5

    const/4 v6, 0x5

    const-string v7, "\n"

    if-ne v5, v6, :cond_1

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f1201e8

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 441
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v8, 0x7f1201e7

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 443
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v8, 0x7f1201e1

    invoke-virtual {v5, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v8, 0x7f1201e6

    invoke-virtual {v1, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1201e9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1201e2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v3

    .line 450
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 452
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "text/plain"

    .line 453
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    .line 454
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f120209

    .line 457
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.PICK_ACTIVITY"

    .line 458
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TITLE"

    .line 459
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.INTENT"

    .line 460
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 461
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x3ed

    invoke-virtual {v3, v2, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 465
    invoke-virtual {v2}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 466
    invoke-static {v2}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 469
    :try_start_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/mainheader/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 473
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    .line 2487
    :cond_3
    :goto_2
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "rideInform"

    const-string v2, "share"

    .line 2488
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    const-string v1, "Boarded"

    .line 2489
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object v0

    .line 2490
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v1

    const-string v2, "In-ride"

    invoke-virtual {v1, v2, v0}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    :cond_4
    :goto_3
    return-void
.end method
