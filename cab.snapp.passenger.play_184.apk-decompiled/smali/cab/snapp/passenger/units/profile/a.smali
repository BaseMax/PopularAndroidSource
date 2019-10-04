.class public Lcab/snapp/passenger/units/profile/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/profile/d;",
        "Lcab/snapp/passenger/units/profile/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/c/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private c:Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcab/snapp/passenger/units/profile/a;->c:Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/profile/c;->onProfileReady(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/c;->onResendEmailSuccess()V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcab/snapp/snappnetwork/model/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 105
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/a;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$e;->SAVE_PROFILE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/c;->onUpdateProfileSuccessful()V

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->finish()V

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 200
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/profile/c;->onResendEmailError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic b(Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/c;->onSendEmailSuccess()V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/profile/c;->onNewPhoneVerified(Ljava/lang/String;)V

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/c;->finishPresentingPhoneVerificationUnit()V

    :cond_1
    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/profile/c;->onSendEmailError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 121
    :cond_0
    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_1

    check-cast p1, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result p1

    const/16 v0, 0x3fd

    if-ne p1, v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/profile/c;

    const v0, 0x7f120184

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/profile/c;->onUpdateProfileError(I)V

    return-void

    .line 127
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/c;->onUpdateProfileError()V

    return-void
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

.method private synthetic e(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/c;->onProfileError()V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$50S6whBJ8aWf-IXdQSEqixG9KvI(Lcab/snapp/passenger/units/profile/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/a;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$G3ynRgrWebRLlAv_hvEPURGOqY4(Lcab/snapp/passenger/units/profile/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$MWw6XfiodLng5PYSA5ViUxt-7ZE(Lcab/snapp/passenger/units/profile/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$WYQe4CGe_BCnNBr8wPN0luTrzoA(Lcab/snapp/passenger/units/profile/a;Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V

    return-void
.end method

.method public static synthetic lambda$WkH0YkfRaHn86ATIrlrxlBgKlf0(Lcab/snapp/passenger/units/profile/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$YV1FsxKlwUtJt4O6a4ZBY0OBLAc(Lcab/snapp/passenger/units/profile/a;Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V

    return-void
.end method

.method public static synthetic lambda$_l_zg9MN9Gzv8NyvMzVx5ycDgi4(Lcab/snapp/passenger/units/profile/a;Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/a;->b(Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;)V

    return-void
.end method

.method public static synthetic lambda$ciH_e9Lo3ai9f_rNPmX_RoxoBSs(Lcab/snapp/passenger/units/profile/a;Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;)V

    return-void
.end method

.method public static synthetic lambda$hsr-g6-LbxnUb9qfkyVj--bJQb8(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/profile/a;->d(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$nIPlec_S6_J51T--ekZrFSheqK8(Lcab/snapp/passenger/units/profile/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$oDoYGXGgxVd-bYNE8qI7O9uFZhc(Lcab/snapp/passenger/units/profile/a;Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/profile/a;->a(Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    .line 188
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/c;->onBeforeResendEmail()V

    .line 193
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/a;->a:Lcab/snapp/passenger/c/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/f;->resendRegistrationEmail()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/profile/-$$Lambda$a$ciH_e9Lo3ai9f_rNPmX_RoxoBSs;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$a$ciH_e9Lo3ai9f_rNPmX_RoxoBSs;-><init>(Lcab/snapp/passenger/units/profile/a;)V

    new-instance v2, Lcab/snapp/passenger/units/profile/-$$Lambda$a$MWw6XfiodLng5PYSA5ViUxt-7ZE;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$a$MWw6XfiodLng5PYSA5ViUxt-7ZE;-><init>(Lcab/snapp/passenger/units/profile/a;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/profile/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/c;->onBeforeSendEmail()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/a;->a:Lcab/snapp/passenger/c/f;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/c/f;->sendRegistrationEmail(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/profile/-$$Lambda$a$_l_zg9MN9Gzv8NyvMzVx5ycDgi4;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$a$_l_zg9MN9Gzv8NyvMzVx5ycDgi4;-><init>(Lcab/snapp/passenger/units/profile/a;)V

    new-instance v1, Lcab/snapp/passenger/units/profile/-$$Lambda$a$WkH0YkfRaHn86ATIrlrxlBgKlf0;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$a$WkH0YkfRaHn86ATIrlrxlBgKlf0;-><init>(Lcab/snapp/passenger/units/profile/a;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/profile/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 90
    new-instance v0, Lcab/snapp/passenger/data/models/Profile;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/Profile;-><init>()V

    .line 91
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data/models/Profile;->setName(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p2}, Lcab/snapp/passenger/data/models/Profile;->setEmail(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0, p3}, Lcab/snapp/passenger/data/models/Profile;->setPhone(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p4}, Lcab/snapp/passenger/data/models/Profile;->setAddress(Ljava/lang/String;)V

    .line 95
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data/models/Profile;->setGender(Ljava/lang/Integer;)V

    .line 96
    invoke-virtual {v0, p6}, Lcab/snapp/passenger/data/models/Profile;->setBirthday(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/profile/c;->onBeforeUpdateProfile()V

    .line 103
    :cond_0
    iget-object p1, p0, Lcab/snapp/passenger/units/profile/a;->a:Lcab/snapp/passenger/c/f;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/c/f;->saveChanges(Lcab/snapp/passenger/data/models/Profile;)Lio/reactivex/z;

    move-result-object p1

    .line 104
    new-instance p2, Lcab/snapp/passenger/units/profile/-$$Lambda$a$oDoYGXGgxVd-bYNE8qI7O9uFZhc;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$a$oDoYGXGgxVd-bYNE8qI7O9uFZhc;-><init>(Lcab/snapp/passenger/units/profile/a;)V

    new-instance p3, Lcab/snapp/passenger/units/profile/-$$Lambda$a$G3ynRgrWebRLlAv_hvEPURGOqY4;

    invoke-direct {p3, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$a$G3ynRgrWebRLlAv_hvEPURGOqY4;-><init>(Lcab/snapp/passenger/units/profile/a;)V

    invoke-virtual {p1, p2, p3}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/profile/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public confirmApWalletUnlink()V
    .locals 0

    .line 291
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->startPhoneVerificationProcedure()V

    return-void
.end method

.method public finish()V
    .locals 1

    .line 231
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public onPhoneNumberClicked()V
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/a;->c:Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getApWalletRegistrationStatus()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->startPhoneVerificationProcedure()V

    goto :goto_1

    .line 138
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/c;->showApWalletUnlinkWarning()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 243
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 244
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/profile/a;)V

    .line 249
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 251
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/c;->onInitialize()V

    .line 252
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/c;->onGettingProfile()V

    .line 256
    :cond_1
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    .line 257
    invoke-static {}, Lcab/snapp/passenger/units/phone_verification/a;->getPrivateChanelId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/profile/-$$Lambda$a$nIPlec_S6_J51T--ekZrFSheqK8;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$a$nIPlec_S6_J51T--ekZrFSheqK8;-><init>(Lcab/snapp/passenger/units/profile/a;)V

    .line 256
    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 255
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/profile/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public onUnitPause()V
    .locals 1

    .line 277
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitPause()V

    .line 278
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/profile/c;->onPause()V

    return-void
.end method

.method public onUnitResume()V
    .locals 3

    .line 266
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 268
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/a;->b:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Edit Profile Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    .line 1047
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/a;->a:Lcab/snapp/passenger/c/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/f;->fetchAndRefreshProfile()Lio/reactivex/z;

    move-result-object v0

    .line 1048
    new-instance v1, Lcab/snapp/passenger/units/profile/-$$Lambda$a$YV1FsxKlwUtJt4O6a4ZBY0OBLAc;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$a$YV1FsxKlwUtJt4O6a4ZBY0OBLAc;-><init>(Lcab/snapp/passenger/units/profile/a;)V

    new-instance v2, Lcab/snapp/passenger/units/profile/-$$Lambda$a$50S6whBJ8aWf-IXdQSEqixG9KvI;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$a$50S6whBJ8aWf-IXdQSEqixG9KvI;-><init>(Lcab/snapp/passenger/units/profile/a;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/profile/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 1069
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/a;->a:Lcab/snapp/passenger/c/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/f;->getCredit()Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/profile/a;->c:Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    .line 1070
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/a;->c:Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    if-nez v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcab/snapp/passenger/units/profile/a;->a:Lcab/snapp/passenger/c/f;

    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->SIDE_MENU_TOPUP:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/f;->fetchAndRefreshCredit(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/profile/-$$Lambda$a$WYQe4CGe_BCnNBr8wPN0luTrzoA;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/profile/-$$Lambda$a$WYQe4CGe_BCnNBr8wPN0luTrzoA;-><init>(Lcab/snapp/passenger/units/profile/a;)V

    sget-object v2, Lcab/snapp/passenger/units/profile/-$$Lambda$a$hsr-g6-LbxnUb9qfkyVj--bJQb8;->INSTANCE:Lcab/snapp/passenger/units/profile/-$$Lambda$a$hsr-g6-LbxnUb9qfkyVj--bJQb8;

    .line 1073
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1072
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/profile/a;->addDisposable(Lio/reactivex/b/c;)V

    :cond_0
    return-void
.end method

.method public startPhoneVerificationProcedure()V
    .locals 3

    .line 150
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationController;

    invoke-direct {v0}, Lcab/snapp/passenger/units/phone_verification/PhoneVerificationController;-><init>()V

    .line 153
    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/profile/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/profile/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/arch/protocol/BaseController;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcab/snapp/passenger/units/profile/c;->presentPhoneVerificationUnit(Lcab/snapp/passenger/units/phone_verification/PhoneVerificationController;Landroidx/fragment/app/FragmentManager;)V

    :cond_0
    return-void
.end method
