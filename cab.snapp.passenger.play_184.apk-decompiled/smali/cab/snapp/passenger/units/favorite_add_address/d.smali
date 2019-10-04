.class public final Lcab/snapp/passenger/units/favorite_add_address/d;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;",
        "Lcab/snapp/passenger/units/favorite_add_address/b;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field c:Landroid/view/View$OnClickListener;

.field d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    .line 31
    new-instance v0, Lcab/snapp/passenger/units/favorite_add_address/d$1;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/favorite_add_address/d$1;-><init>(Lcab/snapp/passenger/units/favorite_add_address/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/d;->a:Landroid/view/View$OnClickListener;

    .line 40
    new-instance v0, Lcab/snapp/passenger/units/favorite_add_address/d$2;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/favorite_add_address/d$2;-><init>(Lcab/snapp/passenger/units/favorite_add_address/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/d;->b:Landroid/view/View$OnClickListener;

    .line 47
    new-instance v0, Lcab/snapp/passenger/units/favorite_add_address/d$3;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/favorite_add_address/d$3;-><init>(Lcab/snapp/passenger/units/favorite_add_address/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/d;->c:Landroid/view/View$OnClickListener;

    .line 57
    new-instance v0, Lcab/snapp/passenger/units/favorite_add_address/d$4;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/favorite_add_address/d$4;-><init>(Lcab/snapp/passenger/units/favorite_add_address/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/d;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/favorite_add_address/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Lcom/google/android/gms/common/api/k;Landroid/view/View;)V
    .locals 0

    .line 186
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 188
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {p2}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->cancelNoLocationDialog()V

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 192
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p2

    check-cast p2, Lcab/snapp/passenger/units/favorite_add_address/b;

    invoke-virtual {p2, p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->requestEditLocationSetting(Lcom/google/android/gms/common/api/k;)V

    .line 193
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_add_address/b;->reportPopUpLocationPositiveButtonToAppMetrica()V

    :cond_1
    return-void
.end method

.method private synthetic a([Ljava/lang/String;[Ljava/lang/String;[ZLandroid/view/View;)V
    .locals 1

    const/4 p4, 0x0

    .line 331
    aget-object p1, p1, p4

    aget-object p2, p2, p4

    aget-boolean p3, p3, p4

    .line 1250
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 1253
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string p2, ""

    .line 1263
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p4

    check-cast p4, Lcab/snapp/passenger/units/favorite_add_address/b;

    invoke-virtual {p4, p1, p2, p3}, Lcab/snapp/passenger/units/favorite_add_address/b;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p4, 0x1

    goto :goto_1

    .line 1255
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    const p2, 0x7f1200d0

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->showToast(I)V

    :cond_3
    :goto_1
    if-eqz p4, :cond_4

    .line 333
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 335
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->cancelAddFavoriteDialog()V

    :cond_4
    return-void
.end method

.method private static synthetic a([ZLandroid/widget/CompoundButton;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 329
    aput-boolean p2, p0, p1

    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/favorite_add_address/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcab/snapp/passenger/units/favorite_add_address/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcab/snapp/passenger/units/favorite_add_address/d;)Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$cjzqG9xMbuti7A-iFqz0n7kTHrI(Lcab/snapp/passenger/units/favorite_add_address/d;Lcom/google/android/gms/common/api/k;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/favorite_add_address/d;->a(Lcom/google/android/gms/common/api/k;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$kom2UoJvu5aUdYJUwGFQWUoxm_w(Lcab/snapp/passenger/units/favorite_add_address/d;[Ljava/lang/String;[Ljava/lang/String;[ZLandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcab/snapp/passenger/units/favorite_add_address/d;->a([Ljava/lang/String;[Ljava/lang/String;[ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$yj-ioGRlmlEjbTJo1-MW38Oe3Lk([ZLandroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcab/snapp/passenger/units/favorite_add_address/d;->a([ZLandroid/widget/CompoundButton;Z)V

    return-void
.end method


# virtual methods
.method public final dismissAddFavoriteDialog()V
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->dismissAddFavoriteDialog()V

    :cond_0
    return-void
.end method

.method public final onAddLocationFinished()V
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->cancelLoadingDialog()V

    .line 156
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public final onAddLocationStarted()V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->showLoadingDialog()V

    :cond_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 370
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/b;->handleBack()V

    :cond_0
    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 124
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 126
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    const v1, 0x7f06004b

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v2, 0x435

    if-ne v0, v2, :cond_0

    .line 128
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->showToast(Ljava/lang/String;I)V

    return-void

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->showToast(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public final onFavoriteLocationAdded()V
    .locals 1

    .line 219
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->showLocationAddedToast()V

    :cond_0
    return-void
.end method

.method public final onInitialize(Z)V
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->showMapBoxCopyright()V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->hideMapBoxCopyright()V

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    const v0, 0x7f1202a9

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->setToolbarTitle(I)V

    .line 89
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->setToolbarBackButton()V

    .line 90
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->setToolbarMenu()V

    :cond_1
    return-void
.end method

.method public final onLocationIsUnavailable(Lcom/google/android/gms/common/api/k;)V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    new-instance v1, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$d$cjzqG9xMbuti7A-iFqz0n7kTHrI;

    invoke-direct {v1, p0, p1}, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$d$cjzqG9xMbuti7A-iFqz0n7kTHrI;-><init>(Lcab/snapp/passenger/units/favorite_add_address/d;Lcom/google/android/gms/common/api/k;)V

    iget-object p1, p0, Lcab/snapp/passenger/units/favorite_add_address/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->showLocationNotAvailableDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void

    .line 199
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_add_address/d;->a:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_add_address/d;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->showLocationNotAvailableDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onLocationMoveFinished()V
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->makePinNormal()V

    :cond_0
    return-void
.end method

.method public final onLocationMoveStarted()V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->makePinSmall()V

    :cond_0
    return-void
.end method

.method public final onMyLocationClicked()V
    .locals 1

    .line 359
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/b;->requestMyLocation()V

    :cond_0
    return-void
.end method

.method public final onPermissionRequestIsDenied()V
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    iget-object v1, p0, Lcab/snapp/passenger/units/favorite_add_address/d;->c:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcab/snapp/passenger/units/favorite_add_address/d;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->showNoPermissionDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onPinAddressUpdated(Ljava/lang/String;)V
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->setFormattedAddress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onPinClicked()V
    .locals 19

    move-object/from16 v0, p0

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v5, v1, [Ljava/lang/String;

    aput-object v3, v5, v4

    new-array v3, v1, [Z

    aput-boolean v1, v3, v4

    .line 291
    new-instance v11, Lcab/snapp/passenger/units/favorite_add_address/d$5;

    invoke-direct {v11, v0, v2}, Lcab/snapp/passenger/units/favorite_add_address/d$5;-><init>(Lcab/snapp/passenger/units/favorite_add_address/d;[Ljava/lang/String;)V

    .line 310
    new-instance v14, Lcab/snapp/passenger/units/favorite_add_address/d$6;

    invoke-direct {v14, v0, v5}, Lcab/snapp/passenger/units/favorite_add_address/d$6;-><init>(Lcab/snapp/passenger/units/favorite_add_address/d;[Ljava/lang/String;)V

    .line 329
    new-instance v1, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$d$yj-ioGRlmlEjbTJo1-MW38Oe3Lk;

    invoke-direct {v1, v3}, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$d$yj-ioGRlmlEjbTJo1-MW38Oe3Lk;-><init>([Z)V

    .line 330
    new-instance v4, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$d$kom2UoJvu5aUdYJUwGFQWUoxm_w;

    invoke-direct {v4, v0, v2, v5, v3}, Lcab/snapp/passenger/units/favorite_add_address/-$$Lambda$d$kom2UoJvu5aUdYJUwGFQWUoxm_w;-><init>(Lcab/snapp/passenger/units/favorite_add_address/d;[Ljava/lang/String;[Ljava/lang/String;[Z)V

    .line 339
    invoke-virtual/range {p0 .. p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    const v7, 0x7f0800f5

    const v8, 0x7f1200cf

    const v9, 0x7f1200ce

    const v10, 0x7f12012e

    const v12, 0x7f120028

    const v13, 0x7f12012f

    const v15, 0x7f120026

    const v17, 0x7f120027

    move-object/from16 v16, v1

    move-object/from16 v18, v4

    invoke-virtual/range {v6 .. v18}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->showAddFavoriteDialog(IIIILandroid/text/TextWatcher;IILandroid/text/TextWatcher;ILandroid/widget/CompoundButton$OnCheckedChangeListener;ILandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final onSearchClicked()V
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/b;->navigateToSearch()V

    :cond_0
    return-void
.end method

.method public final onShortcutCreated(Lcab/snapp/passenger/data/models/FavoriteModel;)V
    .locals 2

    .line 232
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 234
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/FavoriteModel;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "[fav_name]"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    const v1, 0x7f06004d

    invoke-virtual {v0, p1, v1}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->showToast(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public final showAddFavoriteDialogIfNeeded()V
    .locals 1

    .line 397
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcab/snapp/passenger/units/favorite_add_address/d;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/favorite_add_address/FavoriteAddAddressView;->showAddFavoriteDialogIfNeeded()V

    :cond_0
    return-void
.end method
