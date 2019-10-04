.class public Lcab/snapp/passenger/units/setting/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/setting/d;",
        "Lcab/snapp/passenger/units/setting/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/b/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/data_access_layer/a/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:I

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private a(Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;)V
    .locals 4

    .line 233
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 238
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/c;->finishedFetchData()V

    .line 239
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->getNewsletter()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/setting/c;->activateNewsLetterEmail(Z)V

    .line 240
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->getRideEmails()I

    move-result v1

    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/setting/c;->activateRideInfoEmail(Z)V

    .line 241
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->getRideSMS()I

    move-result v1

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/setting/c;->activateRideInfoSMS(Z)V

    .line 242
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->getTransactionSMS()I

    move-result v1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/setting/c;->activateTransactionSMS(Z)V

    .line 243
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->getPrivacySetting()I

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/setting/c;->activateStatisticalInfo(Z)V

    .line 245
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->a:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->isApWalletEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    .line 246
    iput v3, p0, Lcab/snapp/passenger/units/setting/a;->e:I

    .line 247
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/setting/c;->removeApWalletFromDefaultWalletList()V

    goto :goto_4

    .line 251
    :cond_6
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;->getDefaultWallet()I

    move-result p1

    iput p1, p0, Lcab/snapp/passenger/units/setting/a;->e:I

    .line 253
    :goto_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/setting/c;

    iget v0, p0, Lcab/snapp/passenger/units/setting/a;->e:I

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/setting/c;->setDefaultWallet(I)V

    :cond_7
    :goto_5
    return-void
.end method

.method private a(Lcab/snapp/snappuikit/SnappCheckBox;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 632
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->c:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0, p2, p3}, Lcab/snapp/passenger/data_access_layer/a/d;->changeSetting(Ljava/lang/String;Ljava/lang/String;)Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/setting/-$$Lambda$a$b0aNCqzuffPHeMNvEtwZpDxPeYM;

    invoke-direct {v1, p0, p2, p3}, Lcab/snapp/passenger/units/setting/-$$Lambda$a$b0aNCqzuffPHeMNvEtwZpDxPeYM;-><init>(Lcab/snapp/passenger/units/setting/a;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcab/snapp/passenger/units/setting/-$$Lambda$a$DWHIKwKvFGPQpQmVK5WeM1F6I_U;

    invoke-direct {v2, p0, p1, p2, p3}, Lcab/snapp/passenger/units/setting/-$$Lambda$a$DWHIKwKvFGPQpQmVK5WeM1F6I_U;-><init>(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/snappuikit/SnappCheckBox;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method

.method private synthetic a(Lcab/snapp/snappuikit/SnappCheckBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p1, 0x1

    .line 638
    iput-boolean p1, p0, Lcab/snapp/passenger/units/setting/a;->f:Z

    .line 1664
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "default_wallet"

    .line 1672
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1673
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/setting/c;

    iget p2, p0, Lcab/snapp/passenger/units/setting/a;->e:I

    invoke-virtual {p1, p2}, Lcab/snapp/passenger/units/setting/c;->setDefaultWallet(I)V

    .line 1676
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const p3, 0x7f1200c0

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06004b

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    invoke-virtual {v0, p1, p2}, Lcab/snapp/b/a;->put(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic a(Ljava/lang/String;Ljava/lang/String;Lcab/snapp/snappnetwork/model/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 633
    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/setting/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "default_wallet"

    .line 634
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 635
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcab/snapp/passenger/units/setting/a;->e:I

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 271
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/setting/c;->finishedFetchData()V

    .line 274
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 276
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1200b9

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    :cond_2
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/c;->activeTrafficMap(Z)V

    if-eqz p1, :cond_1

    .line 295
    invoke-static {}, Lcab/snapp/passenger/f/j;->getMapViewId()I

    move-result p1

    invoke-static {p1}, Lcab/snapp/passenger/f/j;->showTraffic(I)V

    return-void

    .line 299
    :cond_1
    invoke-static {}, Lcab/snapp/passenger/f/j;->getMapViewId()I

    move-result p1

    invoke-static {p1}, Lcab/snapp/passenger/f/j;->hideTraffic(I)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/c;->activateTransactionSMS(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 1

    .line 321
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 326
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/c;->activateStatisticalInfo(Z)V

    return-void
.end method

.method private d(Z)V
    .locals 1

    .line 336
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/c;->activateRideInfoSMS(Z)V

    return-void
.end method

.method private e(Z)V
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/c;->activateRideInfoEmail(Z)V

    return-void
.end method

.method private f(Z)V
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/setting/c;->activateNewsLetterEmail(Z)V

    return-void
.end method

.method public static synthetic lambda$DWHIKwKvFGPQpQmVK5WeM1F6I_U(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/snappuikit/SnappCheckBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcab/snapp/passenger/units/setting/a;->a(Lcab/snapp/snappuikit/SnappCheckBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$FwOPiXIVV9LOAh6xW6eo6Eev89E(Lcab/snapp/passenger/units/setting/a;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/setting/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$b0aNCqzuffPHeMNvEtwZpDxPeYM(Lcab/snapp/passenger/units/setting/a;Ljava/lang/String;Ljava/lang/String;Lcab/snapp/snappnetwork/model/f;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcab/snapp/passenger/units/setting/a;->a(Ljava/lang/String;Ljava/lang/String;Lcab/snapp/snappnetwork/model/f;)V

    return-void
.end method

.method public static synthetic lambda$ta_vetUEVPOQc8YxTt65SD95Vto(Lcab/snapp/passenger/units/setting/a;Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/setting/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/SettingsResponse;)V

    return-void
.end method


# virtual methods
.method public changeLocale(I)V
    .locals 2

    .line 585
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcab/snapp/passenger/f/g;->changeAppLocale(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1598
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x14

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x28

    if-eq p1, v0, :cond_1

    const/16 v0, 0x32

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "Arabic"

    goto :goto_0

    :cond_1
    const-string p1, "Turki"

    goto :goto_0

    :cond_2
    const-string p1, "French"

    goto :goto_0

    :cond_3
    const-string p1, "English"

    goto :goto_0

    :cond_4
    const-string p1, "Persian"

    .line 1617
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    .line 1618
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1619
    iget-object p1, p0, Lcab/snapp/passenger/units/setting/a;->d:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$e;->APP_LANGUAGE:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_5
    return-void
.end method

.method public defaultWalletSelectTextViewClicked()V
    .locals 1

    .line 515
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 519
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/c;->showSelectDefaultWalletDialog()V

    return-void
.end method

.method public defaultWalletSelectedAtIndex(I)V
    .locals 2

    .line 566
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    iget v0, p0, Lcab/snapp/passenger/units/setting/a;->e:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 575
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "default_wallet"

    invoke-direct {p0, v0, v1, p1}, Lcab/snapp/passenger/units/setting/a;->a(Lcab/snapp/snappuikit/SnappCheckBox;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public goBack()V
    .locals 1

    .line 684
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 686
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public languageSelectTextViewClicked()V
    .locals 1

    .line 503
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/c;->showSelectLanguageDialog()V

    return-void
.end method

.method public languageSelectedAtIndex(I)V
    .locals 2

    .line 529
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 536
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120197

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/setting/c;->setLanguageSummary(Ljava/lang/String;)V

    const/16 p1, 0xa

    .line 537
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/a;->changeLocale(I)V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 541
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1200ae

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/setting/c;->setLanguageSummary(Ljava/lang/String;)V

    const/16 p1, 0x14

    .line 542
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/a;->changeLocale(I)V

    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 547
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f1200e6

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/setting/c;->setLanguageSummary(Ljava/lang/String;)V

    const/16 p1, 0x1e

    .line 548
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/a;->changeLocale(I)V

    return-void

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 553
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120270

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/setting/c;->setLanguageSummary(Ljava/lang/String;)V

    const/16 p1, 0x28

    .line 554
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/a;->changeLocale(I)V

    return-void

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 558
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f12003c

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/setting/c;->setLanguageSummary(Ljava/lang/String;)V

    const/16 p1, 0x32

    .line 559
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/units/setting/a;->changeLocale(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public newsLetterCheckBoxToggled(Lcab/snapp/snappuikit/SnappCheckBox;)V
    .locals 3

    .line 385
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 390
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    .line 391
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/units/setting/c;->setNewsLetterSummaryState(Z)V

    const-string v1, "passenger_newsletter_emails"

    .line 392
    invoke-direct {p0, p1, v1, v0}, Lcab/snapp/passenger/units/setting/a;->a(Lcab/snapp/snappuikit/SnappCheckBox;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUnitCreated()V
    .locals 5

    .line 66
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 67
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/setting/a;)V

    .line 1098
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    if-eqz v0, :cond_f

    const-string v1, "passenger_newsletter_emails"

    .line 1103
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "1"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    .line 1104
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1106
    invoke-direct {p0, v4}, Lcab/snapp/passenger/units/setting/a;->f(Z)V

    goto :goto_0

    .line 1110
    :cond_1
    invoke-direct {p0, v3}, Lcab/snapp/passenger/units/setting/a;->f(Z)V

    .line 1114
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    const-string v1, "passenger_ride_emails"

    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    .line 1115
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1117
    invoke-direct {p0, v4}, Lcab/snapp/passenger/units/setting/a;->e(Z)V

    goto :goto_1

    .line 1121
    :cond_2
    invoke-direct {p0, v3}, Lcab/snapp/passenger/units/setting/a;->e(Z)V

    .line 1125
    :goto_1
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    const-string v1, "passenger_ride_sms"

    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    .line 1126
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1128
    invoke-direct {p0, v4}, Lcab/snapp/passenger/units/setting/a;->d(Z)V

    goto :goto_2

    .line 1132
    :cond_3
    invoke-direct {p0, v3}, Lcab/snapp/passenger/units/setting/a;->d(Z)V

    .line 1136
    :goto_2
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    const-string v1, "passenger_transaction_sms"

    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    .line 1137
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1139
    invoke-direct {p0, v4}, Lcab/snapp/passenger/units/setting/a;->b(Z)V

    goto :goto_3

    .line 1143
    :cond_4
    invoke-direct {p0, v3}, Lcab/snapp/passenger/units/setting/a;->b(Z)V

    .line 1146
    :goto_3
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    const-string v1, "privacy_setting"

    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    .line 1147
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1149
    invoke-direct {p0, v4}, Lcab/snapp/passenger/units/setting/a;->c(Z)V

    goto :goto_4

    .line 1153
    :cond_5
    invoke-direct {p0, v3}, Lcab/snapp/passenger/units/setting/a;->c(Z)V

    .line 1156
    :goto_4
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    const-string v1, "passenger_traffic_map"

    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1158
    invoke-direct {p0, v4}, Lcab/snapp/passenger/units/setting/a;->a(Z)V

    goto :goto_5

    .line 1160
    :cond_6
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->b:Lcab/snapp/b/a;

    .line 1161
    invoke-virtual {v0, v1}, Lcab/snapp/b/a;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1163
    invoke-direct {p0, v4}, Lcab/snapp/passenger/units/setting/a;->a(Z)V

    goto :goto_5

    .line 1167
    :cond_7
    invoke-direct {p0, v3}, Lcab/snapp/passenger/units/setting/a;->a(Z)V

    .line 1171
    :goto_5
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    .line 1172
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    if-eqz v1, :cond_d

    const/16 v1, 0xa

    if-eq v0, v1, :cond_c

    const/16 v1, 0x14

    if-eq v0, v1, :cond_b

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_a

    const/16 v1, 0x28

    if-eq v0, v1, :cond_9

    const/16 v1, 0x32

    if-eq v0, v1, :cond_8

    goto :goto_6

    .line 1193
    :cond_8
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    const v2, 0x7f12003c

    invoke-virtual {v1, v2}, Lcab/snapp/arch/protocol/BaseController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/setting/c;->setLanguageSummary(Ljava/lang/String;)V

    goto :goto_6

    .line 1198
    :cond_9
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    const v2, 0x7f120270

    invoke-virtual {v1, v2}, Lcab/snapp/arch/protocol/BaseController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/setting/c;->setLanguageSummary(Ljava/lang/String;)V

    goto :goto_6

    .line 1188
    :cond_a
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    const v2, 0x7f1200e6

    invoke-virtual {v1, v2}, Lcab/snapp/arch/protocol/BaseController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/setting/c;->setLanguageSummary(Ljava/lang/String;)V

    goto :goto_6

    .line 1183
    :cond_b
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    const v2, 0x7f1200ae

    invoke-virtual {v1, v2}, Lcab/snapp/arch/protocol/BaseController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/setting/c;->setLanguageSummary(Ljava/lang/String;)V

    goto :goto_6

    .line 1178
    :cond_c
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    const v2, 0x7f120197

    invoke-virtual {v1, v2}, Lcab/snapp/arch/protocol/BaseController;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/setting/c;->setLanguageSummary(Ljava/lang/String;)V

    .line 1205
    :cond_d
    :goto_6
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->a:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getMapType()I

    move-result v0

    if-ne v0, v4, :cond_e

    const/4 v3, 0x1

    .line 1206
    :cond_e
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1208
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {v0, v3}, Lcab/snapp/passenger/units/setting/c;->showTrafficSection(Z)V

    .line 1218
    :cond_f
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 1220
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/c;->startToFetchData()V

    .line 1222
    :cond_10
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->c:Lcab/snapp/passenger/data_access_layer/a/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getSettings()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/setting/-$$Lambda$a$ta_vetUEVPOQc8YxTt65SD95Vto;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/setting/-$$Lambda$a$ta_vetUEVPOQc8YxTt65SD95Vto;-><init>(Lcab/snapp/passenger/units/setting/a;)V

    new-instance v2, Lcab/snapp/passenger/units/setting/-$$Lambda$a$FwOPiXIVV9LOAh6xW6eo6Eev89E;

    invoke-direct {v2, p0}, Lcab/snapp/passenger/units/setting/-$$Lambda$a$FwOPiXIVV9LOAh6xW6eo6Eev89E;-><init>(Lcab/snapp/passenger/units/setting/a;)V

    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/setting/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 74
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 76
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/setting/c;->setStatusBarColor()V

    :cond_11
    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 86
    iget-object v0, p0, Lcab/snapp/passenger/units/setting/a;->d:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Setting Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public rideInfoEmailCheckBoxToggled(Lcab/snapp/snappuikit/SnappCheckBox;)V
    .locals 3

    .line 402
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 407
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    .line 408
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/units/setting/c;->setRideInfoEmailSummaryState(Z)V

    const-string v1, "passenger_ride_emails"

    .line 409
    invoke-direct {p0, p1, v1, v0}, Lcab/snapp/passenger/units/setting/a;->a(Lcab/snapp/snappuikit/SnappCheckBox;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rideInfoSMSCheckBoxToggled(Lcab/snapp/snappuikit/SnappCheckBox;)V
    .locals 3

    .line 419
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 424
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    .line 425
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/units/setting/c;->setRideInfoSMSSummaryState(Z)V

    const-string v1, "passenger_ride_sms"

    .line 426
    invoke-direct {p0, p1, v1, v0}, Lcab/snapp/passenger/units/setting/a;->a(Lcab/snapp/snappuikit/SnappCheckBox;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public rideTransactionCheckBoxToggled(Lcab/snapp/snappuikit/SnappCheckBox;)V
    .locals 3

    .line 436
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 441
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    .line 442
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/units/setting/c;->setTransactionSummaryState(Z)V

    const-string v1, "passenger_transaction_sms"

    .line 443
    invoke-direct {p0, p1, v1, v0}, Lcab/snapp/passenger/units/setting/a;->a(Lcab/snapp/snappuikit/SnappCheckBox;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public statisticInfoCheckBoxToggled(Lcab/snapp/snappuikit/SnappCheckBox;)V
    .locals 2

    .line 453
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 458
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :goto_0
    const-string v1, "privacy_setting"

    .line 459
    invoke-direct {p0, p1, v1, v0}, Lcab/snapp/passenger/units/setting/a;->a(Lcab/snapp/snappuikit/SnappCheckBox;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "on"

    goto :goto_1

    :cond_2
    const-string p1, "off"

    .line 1472
    :goto_1
    new-instance v0, Lcab/snapp/passenger/f/b/b/b$a;

    invoke-direct {v0}, Lcab/snapp/passenger/f/b/b/b$a;-><init>()V

    const-string v1, "analytics"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/b$a;->addKeyValue(Ljava/lang/String;Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    const-string v0, "Setting"

    .line 1473
    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/b$a;->addOuterKeyToCurrentAsValue(Ljava/lang/String;)Lcab/snapp/passenger/f/b/b/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/f/b/b/b$a;->build()Lorg/a/c;

    move-result-object p1

    .line 1475
    invoke-static {}, Lcab/snapp/passenger/f/b/b/c;->getInstance()Lcab/snapp/passenger/f/b/b/c;

    move-result-object v0

    const-string v1, "Menu"

    invoke-virtual {v0, v1, p1}, Lcab/snapp/passenger/f/b/b/c;->sendNestedEventViaAppmetrica(Ljava/lang/String;Lorg/a/c;)V

    return-void
.end method

.method public trafficMapCheckBoxToggled(Lcab/snapp/snappuikit/SnappCheckBox;)V
    .locals 2

    .line 485
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 490
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "1"

    goto :goto_0

    :cond_1
    const-string v0, "0"

    .line 491
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/setting/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/setting/c;

    invoke-virtual {p1}, Lcab/snapp/snappuikit/SnappCheckBox;->isChecked()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcab/snapp/passenger/units/setting/c;->setTrafficMapSummaryState(Z)V

    const-string p1, "passenger_traffic_map"

    .line 492
    invoke-direct {p0, p1, v0}, Lcab/snapp/passenger/units/setting/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {}, Lcab/snapp/passenger/f/j;->getMapViewId()I

    move-result p1

    invoke-static {p1}, Lcab/snapp/passenger/f/j;->updateTrafficState(I)V

    return-void
.end method
