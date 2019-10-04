.class public final Lcab/snapp/passenger/data_access_layer/a/d;
.super Lcab/snapp/passenger/data_access_layer/a/a;
.source "SourceFile"


# instance fields
.field private c:Lcab/snapp/authenticator/c;

.field private d:Lcab/snapp/passenger/f/b/b/c;

.field private e:Lcab/snapp/passenger/data_access_layer/network/b;


# direct methods
.method public constructor <init>(Lcab/snapp/authenticator/c;Lcab/snapp/passenger/f/b/b/c;Lcab/snapp/passenger/data_access_layer/network/b;)V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 131
    invoke-direct {p0}, Lcab/snapp/passenger/data_access_layer/a/a;-><init>()V

    .line 132
    iput-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->c:Lcab/snapp/authenticator/c;

    .line 133
    iput-object p2, p0, Lcab/snapp/passenger/data_access_layer/a/d;->d:Lcab/snapp/passenger/f/b/b/c;

    .line 134
    iput-object p3, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    return-void
.end method

.method private synthetic a(Lcab/snapp/snappnetwork/model/c;)Lcab/snapp/snappnetwork/model/c;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 331
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->c:Lcab/snapp/authenticator/c;

    .line 332
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 333
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getEmail()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getRefreshToken()Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/model/c;->getExpiresIn()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 331
    invoke-virtual/range {v0 .. v5}, Lcab/snapp/authenticator/c;->createAccount(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->d:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->USERS:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->SIGNIN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 341
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "Create Account Error"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static synthetic a(Ljava/lang/Throwable;)Lio/reactivex/ae;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 161
    invoke-static {p0}, Lcab/snapp/passenger/data_access_layer/a/e;->fromNetworkThrowable(Ljava/lang/Throwable;)Lcab/snapp/passenger/data_access_layer/a/e;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/z;->error(Ljava/lang/Throwable;)Lio/reactivex/z;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Lcab/snapp/snappnetwork/model/f;",
            ">(",
            "Lcab/snapp/snappnetwork/f<",
            "TR;>;)",
            "Lio/reactivex/z<",
            "TR;>;"
        }
    .end annotation

    monitor-enter p0

    .line 157
    :try_start_0
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/f;->buildObservable()Lio/reactivex/z;

    move-result-object p1

    .line 158
    invoke-static {}, Lio/reactivex/i/a;->newThread()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->subscribeOn(Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    .line 159
    invoke-static {}, Lio/reactivex/a/b/a;->mainThread()Lio/reactivex/ah;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/z;->observeOn(Lio/reactivex/ah;)Lio/reactivex/z;

    move-result-object p1

    sget-object v0, Lcab/snapp/passenger/data_access_layer/a/-$$Lambda$d$r86vQw7iPFMvsRzJfaiI2Sa22Ak;->INSTANCE:Lcab/snapp/passenger/data_access_layer/a/-$$Lambda$d$r86vQw7iPFMvsRzJfaiI2Sa22Ak;

    .line 160
    invoke-virtual {p1, v0}, Lio/reactivex/z;->onErrorResumeNext(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic lambda$mjySjuMquFW9Juztl_-bf2UGhv4(Lcab/snapp/passenger/data_access_layer/a/d;Lcab/snapp/snappnetwork/model/c;)Lcab/snapp/snappnetwork/model/c;
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/model/c;)Lcab/snapp/snappnetwork/model/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$r86vQw7iPFMvsRzJfaiI2Sa22Ak(Ljava/lang/Throwable;)Lio/reactivex/ae;
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Ljava/lang/Throwable;)Lio/reactivex/ae;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized applyRideOptions(Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1050
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 1051
    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getUpdateOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/passenger/data_access_layer/network/responses/UpdateOptionsResponse;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1053
    invoke-virtual {p1, p2}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 1055
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized askTokenForPhoneNumber(Ljava/lang/String;)Lio/reactivex/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/LoginByPhoneNumberResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 359
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/LoginByPhoneNumberRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/LoginByPhoneNumberRequest;-><init>()V

    .line 360
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/LoginByPhoneNumberRequest;->setPhoneNumber(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/c/a;->getSecureDeviceIdString(Landroid/app/Application;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/LoginByPhoneNumberRequest;->setDeviceId(Ljava/lang/String;)V

    .line 363
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v1, "locale"

    .line 364
    invoke-static {}, Lcab/snapp/passenger/f/g;->getCurrentActiveLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/b;->getAuthInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v1

    .line 367
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getOtp()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcab/snapp/passenger/data_access_layer/network/responses/LoginByPhoneNumberResponse;

    invoke-virtual {v1, v2, v3}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v1

    .line 368
    invoke-virtual {v1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 369
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->setAdditionalHeader(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 370
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/f;->setDontNeedAuthentication()Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 372
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized cancelRide(Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 656
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getCancelRide(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->PATCH(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 657
    new-instance v0, Lcab/snapp/snappnetwork/model/d;

    invoke-direct {v0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 659
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized cancelRideRequest(Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 670
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getCancelRideRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/passenger/data_access_layer/network/responses/CancelRideRequestResponse;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->PATCH(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 671
    new-instance v0, Lcab/snapp/snappnetwork/model/d;

    invoke-direct {v0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 673
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized changeSetting(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 584
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {p1, p2}, Lcab/snapp/passenger/data_access_layer/network/b$a;->patchChangeSettings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/snappnetwork/d;->PATCH(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    new-instance p2, Lcab/snapp/snappnetwork/model/d;

    invoke-direct {p2}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    .line 585
    invoke-virtual {p1, p2}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 586
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized deleteFavorite(I)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 975
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 976
    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getDeleteFavorite(I)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->DELETE(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 978
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized editFavorite(ILjava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 991
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/EditFavoriteRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/EditFavoriteRequest;-><init>()V

    .line 992
    invoke-virtual {v0, p2}, Lcab/snapp/passenger/data_access_layer/network/requests/EditFavoriteRequest;->setName(Ljava/lang/String;)V

    .line 993
    invoke-virtual {v0, p3}, Lcab/snapp/passenger/data_access_layer/network/requests/EditFavoriteRequest;->setDetailedAddress(Ljava/lang/String;)V

    .line 995
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p2

    .line 996
    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getFavoritePlace(I)Ljava/lang/String;

    move-result-object p1

    const-class p3, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {p2, p1, p3}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 997
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 999
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized editRideOptions(Ljava/lang/String;Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcab/snapp/passenger/data_access_layer/network/requests/EditOptionsRequest;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1033
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 1034
    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getEditOptions(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/passenger/data_access_layer/network/responses/EditOptionsResponse;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1036
    invoke-virtual {p1, p2}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 1038
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getAboutUsContent()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/AboutUsResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getAbout()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/AboutUsResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 265
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getAutoCompletePredictions(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 413
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->c:Lcab/snapp/authenticator/c;

    invoke-virtual {v0}, Lcab/snapp/authenticator/c;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getSmappAutoComplete(Ljava/lang/String;Ljava/lang/String;Landroid/location/Location;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 415
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    .line 416
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/b;->getSmappInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p2

    const-class p3, Lcab/snapp/passenger/data_access_layer/network/responses/AutocompletePredictionResponse;

    invoke-virtual {p2, p1, p3}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 420
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getCedarSearch(Lcab/snapp/passenger/data_access_layer/network/requests/GeocodeRequest;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data_access_layer/network/requests/GeocodeRequest;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 431
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getLocationInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getGeocode()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/CedarSearchResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 433
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 435
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getChargeHistory(II)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1274
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getChargeInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {p1, p2}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getChargeHistoryPage(II)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeHistoryResponse;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1275
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getChargeOperators()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1238
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getChargeInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getChargeOperators()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeOperatorsResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 1239
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getConfig(Landroid/content/Context;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 196
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;-><init>()V

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/BaseApplication;

    invoke-static {v1}, Lcab/snapp/c/a;->getDeviceMACAddress(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->setMacAddress(Ljava/lang/String;)V

    .line 198
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->setAndroidVersionName(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/BaseApplication;

    invoke-static {v1}, Lcab/snapp/c/a;->getCarrierName(Landroid/app/Application;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->setCarrierName(Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcab/snapp/c/a;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->setDeviceName(Ljava/lang/String;)V

    const/16 v1, 0xb8

    .line 201
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->setVersionCode(I)V

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/BaseApplication;

    invoke-static {p1}, Lcab/snapp/c/a;->getSecureDeviceIdString(Landroid/app/Application;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->setAndroidSecureId(Ljava/lang/String;)V

    .line 205
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getConfig()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    invoke-virtual {p1, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 206
    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->c:Lcab/snapp/authenticator/c;

    invoke-virtual {v1}, Lcab/snapp/authenticator/c;->isUserAuthorized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getConfig()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    invoke-virtual {p1, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 209
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/f;->setDontNeedAuthentication()Lcab/snapp/snappnetwork/f;

    move-result-object p1

    goto :goto_0

    .line 212
    :cond_0
    invoke-static {}, Lcab/snapp/passenger/f/g;->getCurrentActiveLocaleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/PassengerConfigRequest;->setLocale(Ljava/lang/String;)V

    .line 215
    :goto_0
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 217
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getCredit(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 554
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest;-><init>()V

    .line 555
    iget-object p1, p1, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->string:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest;->setPlace(Ljava/lang/String;)V

    .line 557
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getCredit()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;

    invoke-virtual {p1, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 558
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 560
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getCreditData()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/CreditHistoryResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 528
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 529
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getCreditHistory()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/CreditHistoryResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 531
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getFavorites()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getFavorite()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/FavoriteResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 399
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getJiringPayment(I)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/JiringPaymentResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 869
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/OnlinePaymentRequest;

    int-to-double v1, p1

    invoke-direct {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/network/requests/OnlinePaymentRequest;-><init>(D)V

    .line 870
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 871
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getJiringPayment()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/JiringPaymentResponse;

    invoke-virtual {p1, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 872
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 874
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getMessages()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/MessagesResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 516
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 517
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getMessages()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/MessagesResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 518
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getOperatorChargeConfig(J)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1285
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getChargeInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {p1, p2}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getOperatorChargeConfig(J)Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcab/snapp/passenger/data_access_layer/network/responses/OperatorConfigResponse;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1286
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getOptionalConfig()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 947
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 948
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getOptionalConfig()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/OptionalConfigResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 949
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPin(Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data_access_layer/network/requests/PinRequest;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 597
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getLocationInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getStPin()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/PinResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 598
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 600
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getPlaceDetails(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 448
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->c:Lcab/snapp/authenticator/c;

    invoke-virtual {v0}, Lcab/snapp/authenticator/c;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getSmappPlaceDetail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 450
    iget-object p2, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    .line 451
    invoke-virtual {p2}, Lcab/snapp/passenger/data_access_layer/network/b;->getSmappInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p2

    const-class v0, Lcab/snapp/passenger/data_access_layer/network/responses/PlaceDetailResponse;

    invoke-virtual {p2, p1, v0}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 453
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getPrice(Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data_access_layer/network/requests/PriceRequest;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 612
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    const-string v1, "184"

    invoke-static {v1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getStPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/PriceResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 613
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 615
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getProfile()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 541
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getProfile()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 543
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRecentlyMobileNumbers()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1248
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getChargeInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getRecentlyMobileNumber()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/ChargeRecentlyMobileNumbersResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 1249
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRideHistory(I)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 489
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getRideHistoryPage(I)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/passenger/data_access_layer/network/responses/RideHistoryResponse;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 491
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getRidePaymentStatus(Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1207
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 1208
    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getRidePaymentStatus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/passenger/data_access_layer/network/responses/RidePaymentStatusResponse;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1209
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getRideRatingReasons()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 899
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 900
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getRideRatingReasons()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/RideRatingReasonsResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 902
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRideReceipt(Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 934
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 935
    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getRideReceipt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/passenger/data_access_layer/network/responses/RideReceiptResponse;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 937
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getSettings()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 570
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getSettings()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 572
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getSnappGroupContents()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getJekContent()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/SnappGroupContentResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 229
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTicketTree()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 463
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getTicketTree()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 465
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTransactionTicketTree()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 475
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getTransactionTicketTree()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 477
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getTransferCreditToAp()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/TransferCreditResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1224
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 1225
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getTransferSnappCreditToAp()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/TransferCreditResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 1226
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized logSmappDestination(Ljava/lang/String;DD)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1093
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data/models/PlaceLatLng;

    invoke-direct {v0, p2, p3, p4, p5}, Lcab/snapp/passenger/data/models/PlaceLatLng;-><init>(DD)V

    .line 1095
    new-instance p2, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappDestinationLogRequest;

    invoke-direct {p2}, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappDestinationLogRequest;-><init>()V

    .line 1096
    invoke-virtual {p2, v0}, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappDestinationLogRequest;->setLocation(Lcab/snapp/passenger/data/models/PlaceLatLng;)V

    .line 1097
    invoke-virtual {p2, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappDestinationLogRequest;->setUuid(Ljava/lang/String;)V

    .line 1099
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getSmappInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 1100
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getSmappLog()Ljava/lang/String;

    move-result-object p3

    const-class p4, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {p1, p3, p4}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1101
    invoke-virtual {p1, p2}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1103
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized logSmappOrigin(Ljava/lang/String;DD)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DD)",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1070
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data/models/PlaceLatLng;

    invoke-direct {v0, p2, p3, p4, p5}, Lcab/snapp/passenger/data/models/PlaceLatLng;-><init>(DD)V

    .line 1072
    new-instance p2, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;

    invoke-direct {p2}, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;-><init>()V

    .line 1073
    invoke-virtual {p2, v0}, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;->setLocation(Lcab/snapp/passenger/data/models/PlaceLatLng;)V

    .line 1074
    invoke-virtual {p2, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappOriginLogRequest;->setUuid(Ljava/lang/String;)V

    .line 1076
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getSmappInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 1077
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getSmappLog()Ljava/lang/String;

    move-result-object p3

    const-class p4, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {p1, p3, p4}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1078
    invoke-virtual {p1, p2}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1080
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized logSmappSelectedDestinationItem(Ljava/lang/String;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1132
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;-><init>()V

    .line 1133
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;->setDestination_uuid(Ljava/lang/String;)V

    .line 1135
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getSmappInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 1136
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getSmappLog()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {p1, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1137
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1139
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized logSmappSelectedOriginItem(Ljava/lang/String;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1114
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;-><init>()V

    .line 1115
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/smapp/SmappSelectItemLogRequest;->setOrigin_uuid(Ljava/lang/String;)V

    .line 1117
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getSmappInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 1118
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getSmappLog()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {p1, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1119
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1121
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loginWithEmail(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/c;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getAuthInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    const-class v1, Lcab/snapp/snappnetwork/model/c;

    invoke-virtual {v0, v1}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;

    invoke-direct {v1, p1, p2}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithEmailBody;->getBody()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->setRequestBodyHashMap(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/f;->setDontNeedAuthentication()Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 317
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1

    .line 3328
    new-instance p2, Lcab/snapp/passenger/data_access_layer/a/-$$Lambda$d$mjySjuMquFW9Juztl_-bf2UGhv4;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/data_access_layer/a/-$$Lambda$d$mjySjuMquFW9Juztl_-bf2UGhv4;-><init>(Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 317
    invoke-virtual {p1, p2}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loginWithGoogle(Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/c;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getAuthInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    const-class v1, Lcab/snapp/snappnetwork/model/c;

    invoke-virtual {v0, v1}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;

    invoke-direct {v1, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithGoogleBody;->getBody()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->setRequestBodyHashMap(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 299
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/f;->setDontNeedAuthentication()Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 301
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1

    .line 2328
    new-instance v0, Lcab/snapp/passenger/data_access_layer/a/-$$Lambda$d$mjySjuMquFW9Juztl_-bf2UGhv4;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/data_access_layer/a/-$$Lambda$d$mjySjuMquFW9Juztl_-bf2UGhv4;-><init>(Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 301
    invoke-virtual {p1, v0}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loginWithPhoneToken(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/c;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 278
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "locale"

    .line 279
    invoke-static {}, Lcab/snapp/passenger/f/g;->getCurrentActiveLocaleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/b;->getAuthInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v1

    const-class v2, Lcab/snapp/snappnetwork/model/c;

    invoke-virtual {v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithPhoneToken;

    invoke-direct {v2, p1, p2}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithPhoneToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v2}, Lcab/snapp/passenger/data_access_layer/network/requests/oauth/OAuthLoginWithPhoneToken;->getBody()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcab/snapp/snappnetwork/f;->setRequestBodyHashMap(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 283
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setAdditionalHeader(Ljava/util/HashMap;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/f;->setDontNeedAuthentication()Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 286
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1

    .line 1328
    new-instance p2, Lcab/snapp/passenger/data_access_layer/a/-$$Lambda$d$mjySjuMquFW9Juztl_-bf2UGhv4;

    invoke-direct {p2, p0}, Lcab/snapp/passenger/data_access_layer/a/-$$Lambda$d$mjySjuMquFW9Juztl_-bf2UGhv4;-><init>(Lcab/snapp/passenger/data_access_layer/a/d;)V

    .line 286
    invoke-virtual {p1, p2}, Lio/reactivex/z;->map(Lio/reactivex/e/h;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized postAsanPardakhtPayment(J)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/AsanPardakhtPaymentResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 852
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/AsanPardakhtPaymentRequest;

    long-to-double p1, p1

    invoke-direct {v0, p1, p2}, Lcab/snapp/passenger/data_access_layer/network/requests/AsanPardakhtPaymentRequest;-><init>(D)V

    .line 854
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 855
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getAsanPardakhtPayment()Ljava/lang/String;

    move-result-object p2

    const-class v1, Lcab/snapp/passenger/data_access_layer/network/responses/AsanPardakhtPaymentResponse;

    invoke-virtual {p1, p2, v1}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 856
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 858
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized postInRidePayment(DILjava/lang/Integer;)Lio/reactivex/z;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/InRidePaymentResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 808
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;-><init>()V

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-lez v3, :cond_0

    .line 811
    invoke-virtual {v0, p1, p2}, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;->setAmount(D)V

    .line 813
    :cond_0
    invoke-virtual {v0, p3}, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;->setType(I)V

    if-eqz p4, :cond_1

    .line 817
    invoke-virtual {v0, p4}, Lcab/snapp/passenger/data_access_layer/network/requests/InRidePaymentRequest;->setOrganizationId(Ljava/lang/Integer;)V

    .line 820
    :cond_1
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 821
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getInRidePayment()Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcab/snapp/passenger/data_access_layer/network/responses/InRidePaymentResponse;

    invoke-virtual {p1, p2, p3}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 822
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 824
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized postOnlinePayment(J)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/OnlinePaymentResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 835
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/OnlinePaymentRequest;

    long-to-double p1, p1

    invoke-direct {v0, p1, p2}, Lcab/snapp/passenger/data_access_layer/network/requests/OnlinePaymentRequest;-><init>(D)V

    .line 837
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 838
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getOnlinePayment()Ljava/lang/String;

    move-result-object p2

    const-class v1, Lcab/snapp/passenger/data_access_layer/network/responses/OnlinePaymentResponse;

    invoke-virtual {p1, p2, v1}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 839
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 841
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized putSnappCard(Ljava/lang/String;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/VoucherResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 885
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/VoucherRequest;

    invoke-direct {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/VoucherRequest;-><init>(Ljava/lang/String;)V

    .line 886
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 887
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getRedeemVoucher()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/VoucherResponse;

    invoke-virtual {p1, v1, v2}, Lcab/snapp/snappnetwork/d;->PUT(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 888
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 889
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized rateRide(Lcab/snapp/passenger/data/models/RideRatingModel;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data/models/RideRatingModel;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 913
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;-><init>()V

    .line 914
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getSelectedReasons()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->setRateReasons(Ljava/util/List;)V

    .line 915
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getComment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->setComment(Ljava/lang/String;)V

    .line 916
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getStarRate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->setRate(I)V

    .line 917
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getRideId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/network/requests/RideRateRequest;->setRideId(Ljava/lang/String;)V

    .line 919
    iget-object v1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v1

    .line 920
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/RideRatingModel;->getRideId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getRate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {v1, p1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 921
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 923
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized rechargeSimCard(Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data_access_layer/network/requests/SnappChargeRechargeRequest;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1259
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getChargeInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 1260
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getSnappCharge()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data/models/charge/SubmitChargeResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 1262
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 1264
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized requestConfirmationCodeByPhoneCall(Ljava/lang/String;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 739
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/VerificationCodeForEditPhoneNumberRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/VerificationCodeForEditPhoneNumberRequest;-><init>()V

    .line 740
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/VerificationCodeForEditPhoneNumberRequest;->setCellphone(Ljava/lang/String;)V

    .line 742
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 743
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getRegisterPhoneByCall()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;

    invoke-virtual {p1, v1, v2}, Lcab/snapp/snappnetwork/d;->PUT(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 744
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 746
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized requestConfirmationCodeBySms(Ljava/lang/String;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 721
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/VerificationCodeForEditPhoneNumberRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/VerificationCodeForEditPhoneNumberRequest;-><init>()V

    .line 722
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/VerificationCodeForEditPhoneNumberRequest;->setCellphone(Ljava/lang/String;)V

    .line 724
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 725
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getRegisterPhone()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/RequestConfirmationCodeResponse;

    invoke-virtual {p1, v1, v2}, Lcab/snapp/snappnetwork/d;->PUT(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 726
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 728
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized requestForgotPassword(Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getForgotPassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->PATCH(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    new-instance v0, Lcab/snapp/snappnetwork/model/d;

    invoke-direct {v0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    .line 384
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 385
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/f;->setDontNeedAuthentication()Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 387
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized requestRide(Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data_access_layer/network/requests/RideRequest;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RideResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 642
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getRide()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/RideResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 643
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 645
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized requestSeenChangeLog(I)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ChangeLogSeenResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1166
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 1167
    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getChangeLogSeen(I)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/passenger/data_access_layer/network/responses/ChangeLogSeenResponse;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->PATCH(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    new-instance v0, Lcab/snapp/snappnetwork/model/d;

    invoke-direct {v0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    .line 1168
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1170
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized resendRegistrationEmail()Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 774
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 775
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->postRegisterEmail()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->GET(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 777
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized saveFavorite(Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data_access_layer/network/requests/SaveFavoriteRequest;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 960
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 961
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getFavorite()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/SaveFavoriteResponse;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->PUT(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 962
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 964
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sendApWalletRegistration(Ljava/lang/String;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/ApWalletRegistrationResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1214
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/ApWalletRegistrationRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/ApWalletRegistrationRequest;-><init>()V

    .line 1215
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/ApWalletRegistrationRequest;->setCellPhone(Ljava/lang/String;)V

    .line 1216
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 1217
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getApWalletRegistration()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/ApWalletRegistrationResponse;

    invoke-virtual {p1, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1218
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1219
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sendAppStatus(Lcab/snapp/passenger/data_access_layer/network/requests/FollowedAppsRequest;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data_access_layer/network/requests/FollowedAppsRequest;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1191
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 1192
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getFollowedApp()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 1193
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1194
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sendEmailForVerificationBeforeLogin(Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1150
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    .line 1151
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 1152
    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getEmailVerfication(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    new-instance v0, Lcab/snapp/snappnetwork/model/d;

    invoke-direct {v0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    .line 1153
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1154
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/f;->setDontNeedAuthentication()Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1150
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sendFingerPrint(Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1182
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 1183
    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getFingerPrint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->PATCH(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    new-instance v0, Lcab/snapp/snappnetwork/model/d;

    invoke-direct {v0}, Lcab/snapp/snappnetwork/model/d;-><init>()V

    .line 1184
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1186
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sendMessageToDriver(Ljava/lang/String;ILjava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1012
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    .line 1013
    invoke-static {p1}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getMessageToDriver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {v0, p1, v1}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 1015
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/RideMessageRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/RideMessageRequest;-><init>()V

    .line 1016
    invoke-virtual {v0, p2}, Lcab/snapp/passenger/data_access_layer/network/requests/RideMessageRequest;->setMessageId(I)V

    .line 1017
    invoke-virtual {v0, p3}, Lcab/snapp/passenger/data_access_layer/network/requests/RideMessageRequest;->setMessage(Ljava/lang/String;)V

    .line 1019
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 1021
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sendRegisterationEmail(Ljava/lang/String;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 788
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/RegisterEmailRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/RegisterEmailRequest;-><init>()V

    .line 789
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/RegisterEmailRequest;->setEmail(Ljava/lang/String;)V

    .line 791
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 792
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->postRegisterEmail()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/passenger/data_access_layer/network/responses/RegisterEmailResponse;

    invoke-virtual {p1, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 793
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 795
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized sendTicket(Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data_access_layer/network/requests/SendTicketRequest;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 502
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getTicket()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object v0

    .line 504
    invoke-virtual {v0, p1}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 506
    invoke-direct {p0, v0}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized signUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lio/reactivex/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 243
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/SignUpRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/SignUpRequest;-><init>()V

    .line 244
    iput-object p1, v0, Lcab/snapp/passenger/data_access_layer/network/requests/SignUpRequest;->fullName:Ljava/lang/String;

    .line 245
    iput-object p2, v0, Lcab/snapp/passenger/data_access_layer/network/requests/SignUpRequest;->email:Ljava/lang/String;

    .line 246
    iput-object p3, v0, Lcab/snapp/passenger/data_access_layer/network/requests/SignUpRequest;->password:Ljava/lang/String;

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 247
    :goto_0
    iput p1, v0, Lcab/snapp/passenger/data_access_layer/network/requests/SignUpRequest;->newsletter:I

    .line 248
    invoke-static {}, Lcab/snapp/passenger/BaseApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/c/a;->getSecureDeviceIdString(Landroid/app/Application;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcab/snapp/passenger/data_access_layer/network/requests/SignUpRequest;->secureId:Ljava/lang/String;

    .line 250
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getSignup()Ljava/lang/String;

    move-result-object p2

    const-class p3, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {p1, p2, p3}, Lcab/snapp/snappnetwork/d;->PUT(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 251
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Lcab/snapp/snappnetwork/f;->setDontNeedAuthentication()Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 254
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateProfile(Lcab/snapp/passenger/data/models/Profile;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data/models/Profile;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 684
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data/models/ProfileMeta;

    invoke-direct {v0}, Lcab/snapp/passenger/data/models/ProfileMeta;-><init>()V

    .line 685
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 687
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ProfileMeta;->setAddress(Ljava/lang/String;)V

    .line 690
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getBirthday()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 692
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getBirthday()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcab/snapp/c/a/b;->getDatePickerGregorianDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 693
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ProfileMeta;->setBirthDate(Ljava/lang/String;)V

    .line 696
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getGender()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data/models/ProfileMeta;->setGender(Ljava/lang/Integer;)V

    .line 698
    new-instance v1, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;

    invoke-direct {v1}, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;-><init>()V

    .line 699
    invoke-virtual {v1, v0}, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;->setProfileMeta(Lcab/snapp/passenger/data/models/ProfileMeta;)V

    .line 700
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;->setFullName(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getPhone()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 703
    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/Profile;->getPhone()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/UpdateProfileRequest;->setPhone(Ljava/lang/String;)V

    .line 706
    :cond_2
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 707
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getProfile()Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {p1, v0, v2}, Lcab/snapp/snappnetwork/d;->PUT(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 708
    invoke-virtual {p1, v1}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 710
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateVoucherInRide(Lcab/snapp/passenger/data_access_layer/network/requests/UpdateVoucherRequest;Ljava/lang/String;)Lio/reactivex/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcab/snapp/passenger/data_access_layer/network/requests/UpdateVoucherRequest;",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 627
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object v0

    invoke-static {p2}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getUpdateVoucher(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-class v1, Lcab/snapp/passenger/data_access_layer/network/responses/RideVoucherResponse;

    invoke-virtual {v0, p2, v1}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p2

    .line 628
    invoke-virtual {p2, p1}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    .line 630
    invoke-direct {p0, p2}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized verifyPhoneNumber(Ljava/lang/String;)Lio/reactivex/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/z<",
            "Lcab/snapp/snappnetwork/model/f;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 757
    :try_start_0
    new-instance v0, Lcab/snapp/passenger/data_access_layer/network/requests/VerifyPhoneForEditRequest;

    invoke-direct {v0}, Lcab/snapp/passenger/data_access_layer/network/requests/VerifyPhoneForEditRequest;-><init>()V

    .line 758
    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data_access_layer/network/requests/VerifyPhoneForEditRequest;->setCode(Ljava/lang/String;)V

    .line 760
    iget-object p1, p0, Lcab/snapp/passenger/data_access_layer/a/d;->e:Lcab/snapp/passenger/data_access_layer/network/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/b;->getBaseInstance()Lcab/snapp/snappnetwork/d;

    move-result-object p1

    .line 761
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getVerifyPhone()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcab/snapp/snappnetwork/model/f;

    invoke-virtual {p1, v1, v2}, Lcab/snapp/snappnetwork/d;->POST(Ljava/lang/String;Ljava/lang/Class;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 762
    invoke-virtual {p1, v0}, Lcab/snapp/snappnetwork/f;->setPostBody(Lcab/snapp/snappnetwork/model/d;)Lcab/snapp/snappnetwork/f;

    move-result-object p1

    .line 764
    invoke-direct {p0, p1}, Lcab/snapp/passenger/data_access_layer/a/d;->a(Lcab/snapp/snappnetwork/f;)Lio/reactivex/z;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
