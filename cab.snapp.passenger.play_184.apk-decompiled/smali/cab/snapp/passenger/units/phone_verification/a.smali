.class public Lcab/snapp/passenger/units/phone_verification/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/phone_verification/e;",
        "Lcab/snapp/passenger/units/phone_verification/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:Lcab/snapp/passenger/f/q;

.field b:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/units/phone_verification/a;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 164
    iget-object p1, p0, Lcab/snapp/passenger/units/phone_verification/a;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$e;->CONFIRM_MOBILE_NUMBER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/phone_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/phone_verification/c;->onPhoneVerifySuccess()V

    .line 171
    :cond_0
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object p1

    invoke-static {}, Lcab/snapp/passenger/units/phone_verification/a;->getPrivateChanelId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/phone_verification/a;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 174
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_1

    .line 176
    check-cast p1, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result p1

    const/16 v0, 0x3f4

    if-ne p1, v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/phone_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/phone_verification/c;->onCodeIsWrong()V

    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/phone_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/phone_verification/c;->onPhoneVerifyError()V

    :cond_1
    return-void
.end method

.method private synthetic b(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    iget-object p1, p0, Lcab/snapp/passenger/units/phone_verification/a;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$e;->SEND_MOBILE_NUMBER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/phone_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/phone_verification/c;->onSendCodeBySmsSuccess()V

    :cond_0
    return-void
.end method

.method private synthetic b(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 133
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_2

    .line 135
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v1

    const/16 v2, 0x406

    if-ne v1, v2, :cond_0

    .line 137
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/phone_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/phone_verification/c;->onDailyLimitForSmsExceeded()V

    return-void

    .line 139
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x40b

    if-ne v0, v1, :cond_1

    .line 141
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/phone_verification/c;->onUserIsBlocked(Ljava/lang/String;)V

    return-void

    .line 145
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/phone_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/phone_verification/c;->onSendCodeBySmsError()V

    :cond_2
    return-void
.end method

.method private synthetic c(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 80
    iget-object p1, p0, Lcab/snapp/passenger/units/phone_verification/a;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$e;->SEND_MOBILE_NUMBER:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 81
    iget-object p1, p0, Lcab/snapp/passenger/units/phone_verification/a;->c:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_REGISTER_PHONE_NUMBER:Ljava/lang/String;

    const-string v2, "[successful]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/phone_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/phone_verification/c;->onSendCodeBySmsSuccess()V

    :cond_0
    return-void
.end method

.method private synthetic c(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v0, p1, Lcab/snapp/passenger/data_access_layer/a/e;

    if-eqz v0, :cond_2

    .line 91
    move-object v0, p1

    check-cast v0, Lcab/snapp/passenger/data_access_layer/a/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v1

    const/16 v2, 0x436

    if-ne v1, v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/phone_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/phone_verification/c;->onDailyLimitForCallExceeded()V

    return-void

    .line 95
    :cond_0
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/e;->getErrorCode()I

    move-result v0

    const/16 v1, 0x40b

    if-ne v0, v1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/c;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/phone_verification/c;->onUserIsBlocked(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/phone_verification/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/phone_verification/c;->onSendCodeBySmsError()V

    :cond_2
    return-void
.end method

.method public static getPrivateChanelId()Ljava/lang/String;
    .locals 4

    .line 59
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/units/phone_verification/a;->d:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$9PWBxWMryFtdKNWbW3enMN5yx04(Lcab/snapp/passenger/units/phone_verification/a;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/phone_verification/a;->c(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$a5kgaRgA5NufE9N7_bSU0skZ9SA(Lcab/snapp/passenger/units/phone_verification/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/phone_verification/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$gzLZvUyuiho9B1i2qtNftMxz_Nw(Lcab/snapp/passenger/units/phone_verification/a;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/phone_verification/a;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$n78HaHWIu5Y0JOQqee0wXL3Ydtw(Lcab/snapp/passenger/units/phone_verification/a;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/phone_verification/a;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic lambda$ntGv4oqgtSXIKMBJubvE10ypEM8(Lcab/snapp/passenger/units/phone_verification/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/phone_verification/a;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$u-yJfRn4UGchUehYwW3pB2x_WWU(Lcab/snapp/passenger/units/phone_verification/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/phone_verification/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .line 195
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/phone_verification/a;->getPrivateChanelId()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public onUnitCreated()V
    .locals 2

    .line 203
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/phone_verification/a;)V

    .line 209
    new-instance v0, Lcab/snapp/passenger/f/q;

    iget-object v1, p0, Lcab/snapp/passenger/units/phone_verification/a;->b:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-direct {v0, v1}, Lcab/snapp/passenger/f/q;-><init>(Lcab/snapp/passenger/data_access_layer/a/d;)V

    iput-object v0, p0, Lcab/snapp/passenger/units/phone_verification/a;->a:Lcab/snapp/passenger/f/q;

    .line 210
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcab/snapp/passenger/units/phone_verification/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/phone_verification/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/phone_verification/c;->onInitialize()V

    :cond_1
    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 219
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 220
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/a;->c:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Phone verification Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public requestSendCodeByCall(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 75
    :cond_0
    iput-object p1, p0, Lcab/snapp/passenger/units/phone_verification/a;->e:Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/a;->a:Lcab/snapp/passenger/f/q;

    .line 77
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/q;->requestConfirmationCodeByPhoneCall(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/phone_verification/-$$Lambda$a$9PWBxWMryFtdKNWbW3enMN5yx04;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/phone_verification/-$$Lambda$a$9PWBxWMryFtdKNWbW3enMN5yx04;-><init>(Lcab/snapp/passenger/units/phone_verification/a;)V

    new-instance v1, Lcab/snapp/passenger/units/phone_verification/-$$Lambda$a$ntGv4oqgtSXIKMBJubvE10ypEM8;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/phone_verification/-$$Lambda$a$ntGv4oqgtSXIKMBJubvE10ypEM8;-><init>(Lcab/snapp/passenger/units/phone_verification/a;)V

    .line 78
    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/phone_verification/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public requestSendCodeBySms(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 122
    :cond_0
    iput-object p1, p0, Lcab/snapp/passenger/units/phone_verification/a;->e:Ljava/lang/String;

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/a;->a:Lcab/snapp/passenger/f/q;

    .line 124
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/q;->requestConfirmationCodeBySms(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/phone_verification/-$$Lambda$a$n78HaHWIu5Y0JOQqee0wXL3Ydtw;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/phone_verification/-$$Lambda$a$n78HaHWIu5Y0JOQqee0wXL3Ydtw;-><init>(Lcab/snapp/passenger/units/phone_verification/a;)V

    new-instance v1, Lcab/snapp/passenger/units/phone_verification/-$$Lambda$a$a5kgaRgA5NufE9N7_bSU0skZ9SA;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/phone_verification/-$$Lambda$a$a5kgaRgA5NufE9N7_bSU0skZ9SA;-><init>(Lcab/snapp/passenger/units/phone_verification/a;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 123
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/phone_verification/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public requestVerifyPhoneNumberForEdit(Ljava/lang/String;)V
    .locals 2

    .line 161
    iget-object v0, p0, Lcab/snapp/passenger/units/phone_verification/a;->a:Lcab/snapp/passenger/f/q;

    .line 162
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/q;->requestConfirm(Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance v0, Lcab/snapp/passenger/units/phone_verification/-$$Lambda$a$gzLZvUyuiho9B1i2qtNftMxz_Nw;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/phone_verification/-$$Lambda$a$gzLZvUyuiho9B1i2qtNftMxz_Nw;-><init>(Lcab/snapp/passenger/units/phone_verification/a;)V

    new-instance v1, Lcab/snapp/passenger/units/phone_verification/-$$Lambda$a$u-yJfRn4UGchUehYwW3pB2x_WWU;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/phone_verification/-$$Lambda$a$u-yJfRn4UGchUehYwW3pB2x_WWU;-><init>(Lcab/snapp/passenger/units/phone_verification/a;)V

    invoke-virtual {p1, v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    .line 161
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/phone_verification/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method
