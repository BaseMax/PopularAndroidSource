.class public Lcab/snapp/passenger/units/sideMenu/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/sideMenu/e;",
        "Lcab/snapp/passenger/units/sideMenu/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field a:Lcab/snapp/passenger/c/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/c/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/c/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcab/snapp/passenger/c/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcab/snapp/authenticator/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/units/sideMenu/a;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/sideMenu/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private a()Lcab/snapp/passenger/units/main/b;
    .locals 1

    .line 128
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/units/main/b;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getParentInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/main/b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 456
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getDefaultWallet()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 457
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getApCredit()Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;->getCredit()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/sideMenu/c;->updateCredit(J)V

    :cond_1
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 441
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 443
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/c;

    .line 444
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getFullname()Ljava/lang/String;

    move-result-object v1

    .line 445
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->isHasMessage()Z

    move-result v2

    .line 446
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getEmailVerified()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 443
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/units/sideMenu/c;->onUpdateData(Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method private synthetic a(Ljava/lang/Throwable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 186
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/sideMenu/c;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcab/snapp/passenger/units/sideMenu/a;->b()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcab/snapp/passenger/units/sideMenu/c;->onLoadingSideMenu(Ljava/lang/String;ZZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/sideMenu/a;)Lcab/snapp/arch/protocol/BasePresenter;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p0

    return-object p0
.end method

.method private static b()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data/models/SideMenuData;",
            ">;"
        }
    .end annotation

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    new-instance v1, Lcab/snapp/passenger/data/models/SideMenuData;

    const v2, 0x7f120215

    const v3, 0x7f0800d9

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcab/snapp/passenger/data/models/SideMenuData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v1, Lcab/snapp/passenger/data/models/SideMenuData;

    const v2, 0x7f1201a9

    const v3, 0x7f080152

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcab/snapp/passenger/data/models/SideMenuData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lcab/snapp/passenger/data/models/SideMenuData;

    const v2, 0x7f12026a

    const v3, 0x7f080186

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lcab/snapp/passenger/data/models/SideMenuData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lcab/snapp/passenger/data/models/SideMenuData;

    const v2, 0x7f1201da

    const v3, 0x7f080157

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4}, Lcab/snapp/passenger/data/models/SideMenuData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v1, Lcab/snapp/passenger/data/models/SideMenuData;

    const v2, 0x7f1200d1

    const v3, 0x7f0800fd

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcab/snapp/passenger/data/models/SideMenuData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v1, Lcab/snapp/passenger/data/models/SideMenuData;

    const v2, 0x7f120151

    const v3, 0x7f08011d

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4}, Lcab/snapp/passenger/data/models/SideMenuData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v1, Lcab/snapp/passenger/data/models/SideMenuData;

    const v2, 0x7f120258

    const v3, 0x7f08017f

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Lcab/snapp/passenger/data/models/SideMenuData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v1, Lcab/snapp/passenger/data/models/SideMenuData;

    const v2, 0x7f120211

    const v3, 0x7f08015e

    const/4 v4, 0x7

    invoke-direct {v1, v2, v3, v4}, Lcab/snapp/passenger/data/models/SideMenuData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v1, Lcab/snapp/passenger/data/models/SideMenuData;

    const v2, 0x7f12001c

    const v3, 0x7f0800ac

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lcab/snapp/passenger/data/models/SideMenuData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lcab/snapp/passenger/data/models/SideMenuData;

    const v2, 0x7f1200c8

    const v3, 0x7f0800f2

    const/16 v4, 0x9

    invoke-direct {v1, v2, v3, v4}, Lcab/snapp/passenger/data/models/SideMenuData;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private synthetic b(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 181
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 183
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getFullname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->isHasMessage()Z

    move-result v2

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getEmailVerified()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Lcab/snapp/passenger/units/sideMenu/a;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcab/snapp/passenger/units/sideMenu/c;->onLoadingSideMenu(Ljava/lang/String;ZZLjava/util/List;)V

    :cond_1
    return-void
.end method

.method public static getPrivateChannelId()Ljava/lang/String;
    .locals 4

    .line 118
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/units/sideMenu/a;->i:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic lambda$-fi3ZmjFo-HbuGqr--FU1O4Xrss(Lcab/snapp/passenger/units/sideMenu/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/sideMenu/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$Op613JoMbxlSOXGoQ942wpVmUr4(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/sideMenu/a;->b(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V

    return-void
.end method

.method public static synthetic lambda$Pevn-Mx9WpjNyjuex0qd2S92u7E(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/sideMenu/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;)V

    return-void
.end method

.method public static synthetic lambda$XXjNaWprb7jewlVilGYsBzoLI4E(Lcab/snapp/passenger/units/sideMenu/a;Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/sideMenu/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/CreditResponse;)V

    return-void
.end method


# virtual methods
.method public onUnitCreated()V
    .locals 6

    .line 405
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 406
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 410
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/sideMenu/a;)V

    .line 411
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 414
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/c;->onInitDefaults()V

    .line 416
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->b:Lcab/snapp/passenger/c/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/f;->getProfile()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 419
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/sideMenu/c;

    .line 420
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getFullname()Ljava/lang/String;

    move-result-object v4

    .line 421
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->isHasMessage()Z

    move-result v5

    .line 422
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getEmailVerified()I

    move-result v0

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 423
    :cond_1
    invoke-static {}, Lcab/snapp/passenger/units/sideMenu/a;->b()Ljava/util/List;

    move-result-object v0

    .line 419
    invoke-virtual {v3, v4, v5, v1, v0}, Lcab/snapp/passenger/units/sideMenu/c;->onLoadingSideMenu(Ljava/lang/String;ZZLjava/util/List;)V

    goto :goto_0

    .line 428
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/c;

    const/4 v3, 0x0

    .line 432
    invoke-static {}, Lcab/snapp/passenger/units/sideMenu/a;->b()Ljava/util/List;

    move-result-object v4

    .line 428
    invoke-virtual {v0, v3, v1, v2, v4}, Lcab/snapp/passenger/units/sideMenu/c;->onLoadingSideMenu(Ljava/lang/String;ZZLjava/util/List;)V

    .line 436
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 438
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->b:Lcab/snapp/passenger/c/f;

    .line 439
    invoke-virtual {v0}, Lcab/snapp/passenger/c/f;->getProfileObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/sideMenu/-$$Lambda$a$Pevn-Mx9WpjNyjuex0qd2S92u7E;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/sideMenu/-$$Lambda$a$Pevn-Mx9WpjNyjuex0qd2S92u7E;-><init>(Lcab/snapp/passenger/units/sideMenu/a;)V

    .line 440
    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 438
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/sideMenu/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 451
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->b:Lcab/snapp/passenger/c/f;

    .line 452
    invoke-virtual {v0}, Lcab/snapp/passenger/c/f;->getCreditObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/sideMenu/-$$Lambda$a$XXjNaWprb7jewlVilGYsBzoLI4E;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/sideMenu/-$$Lambda$a$XXjNaWprb7jewlVilGYsBzoLI4E;-><init>(Lcab/snapp/passenger/units/sideMenu/a;)V

    .line 453
    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 451
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/sideMenu/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 465
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 467
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/e;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/sideMenu/e;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 472
    :cond_4
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/sideMenu/a;->getPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcab/snapp/passenger/units/sideMenu/a$1;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/sideMenu/a$1;-><init>(Lcab/snapp/passenger/units/sideMenu/a;)V

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->subscribeToPrivateChannel(Ljava/lang/String;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 471
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/sideMenu/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method public onUnitResume()V
    .locals 3

    .line 495
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 1178
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->b:Lcab/snapp/passenger/c/f;

    .line 1179
    invoke-virtual {v0}, Lcab/snapp/passenger/c/f;->fetchAndRefreshProfile()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/sideMenu/-$$Lambda$a$Op613JoMbxlSOXGoQ942wpVmUr4;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/sideMenu/-$$Lambda$a$Op613JoMbxlSOXGoQ942wpVmUr4;-><init>(Lcab/snapp/passenger/units/sideMenu/a;)V

    new-instance v2, Lcab/snapp/passenger/units/sideMenu/-$$Lambda$a$-fi3ZmjFo-HbuGqr--FU1O4Xrss;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/sideMenu/-$$Lambda$a$-fi3ZmjFo-HbuGqr--FU1O4Xrss;-><init>(Lcab/snapp/passenger/units/sideMenu/a;)V

    .line 1180
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 1178
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/sideMenu/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 498
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public proceedAbout()V
    .locals 4

    .line 315
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->toggleDrawer()V

    .line 318
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/e;->routeToAbout()V

    .line 321
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MENU_ABOUT:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public proceedAddCredit()V
    .locals 4

    .line 202
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->toggleDrawer()V

    .line 209
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/e;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120020

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 1100
    sget-object v1, Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;->SIDE_MENU_TOPUP:Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;

    invoke-static {v1}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->newInstance(Lcab/snapp/passenger/data_access_layer/network/requests/CreditRequest$PLACE;)Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;

    move-result-object v1

    .line 1101
    invoke-virtual {v1}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1103
    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/e;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "top_up_bottom_sheet"

    invoke-virtual {v1, v0, v2}, Lcab/snapp/passenger/units/top_up_payment/TopUpBottomSheetDialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 212
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MENU_INCREASE_CREDIT:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public proceedExit()V
    .locals 4

    .line 1143
    new-instance v0, Lcab/snapp/b/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/b/a;-><init>(Landroid/content/Context;)V

    const-string v1, "FIRST_TIME_PASSENGER_BOARDED_SHARED_PREF_KEY"

    .line 1144
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->delete(Ljava/lang/String;)Z

    const-string v1, "Confirm_Women_Service_Type"

    .line 1145
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->delete(Ljava/lang/String;)Z

    const-string v1, "First_Time_Confirm_Ride_Options"

    .line 1146
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->delete(Ljava/lang/String;)Z

    const-string v1, "shared_pref_key_favorites"

    .line 1147
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->delete(Ljava/lang/String;)Z

    const-string v1, "HAS_SEEN_SKIPPABLE_PHONE_VERIFICATION_SHARED_PREF_KEY"

    .line 1148
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->delete(Ljava/lang/String;)Z

    .line 345
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 347
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->toggleDrawer()V

    .line 348
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$e;->LOGOUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MENU_EXIT:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->reportLogOutUser()V

    .line 357
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->h:Lcab/snapp/authenticator/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/authenticator/c;->removeAccount(Landroid/content/Context;)V

    .line 358
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->a:Lcab/snapp/passenger/c/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/c;->reset()V

    .line 359
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->b:Lcab/snapp/passenger/c/f;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/f;->reset()V

    .line 360
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->c:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->reset()V

    .line 361
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->d:Lcab/snapp/passenger/c/h;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/h;->reset()V

    .line 362
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->e:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->reset()V

    .line 363
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->f:Lcab/snapp/passenger/c/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/d;->reset()V

    .line 365
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public proceedFavorites()V
    .locals 4

    .line 273
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->toggleDrawer()V

    .line 276
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/e;->routeToFavorites()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MENU_FAV_ADDRESS:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public proceedFreeRide()V
    .locals 1

    .line 393
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 395
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->toggleDrawer()V

    .line 396
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/e;->routeToFreeRide()V

    :cond_0
    return-void
.end method

.method public proceedMessages()V
    .locals 4

    .line 287
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->toggleDrawer()V

    .line 290
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/e;->routeToMessages()V

    .line 293
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MENU_MESSAGES:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public proceedProfile()V
    .locals 4

    .line 220
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->toggleDrawer()V

    .line 223
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/e;->routeToProfileUnit()V

    .line 226
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MENU_USER_INFO:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public proceedRideHistory()V
    .locals 4

    .line 259
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->toggleDrawer()V

    .line 262
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/e;->routeToRideHistory()V

    .line 265
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MENU_RIDE_HISTORY:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public proceedSettings()V
    .locals 4

    .line 329
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 331
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->toggleDrawer()V

    .line 332
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/e;->routeToSettings()V

    .line 335
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MENU_SETTINGS:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public proceedSnappFood()V
    .locals 2

    .line 374
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 376
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->toggleDrawer()V

    .line 377
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "https://snappfood.ir"

    .line 383
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 384
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public proceedSupport()V
    .locals 4

    .line 301
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->toggleDrawer()V

    .line 304
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/e;->routeToSupport()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MENU_SUPPORT:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public proceedTransactions()V
    .locals 4

    .line 245
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 247
    invoke-direct {p0}, Lcab/snapp/passenger/units/sideMenu/a;->a()Lcab/snapp/passenger/units/main/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/units/main/b;->toggleDrawer()V

    .line 248
    invoke-virtual {p0}, Lcab/snapp/passenger/units/sideMenu/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/sideMenu/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/sideMenu/e;->routeToTransactions()V

    .line 251
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/sideMenu/a;->g:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->MAIN_PAGE_MENU_TURNOVER:Ljava/lang/String;

    const-string v3, "[tap]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
