.class public Lcab/snapp/passenger/units/referral/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/units/referral/c/a$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/referral/d;",
        "Lcab/snapp/passenger/units/referral/c;",
        ">;",
        "Lcab/snapp/passenger/units/referral/c/a$a;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/referral/d;->navigateUp()V

    :cond_0
    return-void
.end method

.method public onTaskFinished(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 263
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/c;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/referral/c;->onReferralAppsReady(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTaskStarted()V
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/referral/c;->onLoading()V

    return-void
.end method

.method public onUnitCreated()V
    .locals 3

    .line 219
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 220
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/referral/a;)V

    .line 2051
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    .line 2052
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getReferralIntroText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2053
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2058
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getReferralIntroText()Ljava/lang/String;

    move-result-object v0

    .line 2059
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/referral/c;

    invoke-virtual {v1, v0}, Lcab/snapp/passenger/units/referral/c;->onReferralIntroTextReady(Ljava/lang/String;)V

    .line 2068
    :cond_2
    :goto_0
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    .line 2069
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    .line 2070
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getReferralCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2071
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 2081
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getReferralCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/referral/a;->a:Ljava/lang/String;

    .line 2083
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/referral/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/referral/c;->onReferralCodeReady(Ljava/lang/String;)V

    goto :goto_2

    .line 2073
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2075
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f12016b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/referral/c;->onReferralCodeReady(Ljava/lang/String;)V

    .line 2092
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 2096
    new-instance v0, Lcab/snapp/passenger/units/referral/c/a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/units/referral/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p0}, Lcab/snapp/passenger/units/referral/c/a;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Lcab/snapp/passenger/units/referral/c/a$a;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/referral/c/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    :cond_6
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 232
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/referral/c;->setStatusBarColor()V

    :cond_7
    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 239
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 240
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->c:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Referral Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public shareReferralCodeByApp(Landroid/content/pm/ResolveInfo;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1108
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    .line 1109
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    .line 1110
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getReferralShareableText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    .line 1111
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getReferralBaseUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    .line 1112
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    .line 1113
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getReferralCode()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1117
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1118
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-object p1, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {p1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getReferralShareableText()Ljava/lang/String;

    move-result-object p1

    .line 1121
    iget-object v1, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getReferralBaseUri()Ljava/lang/String;

    move-result-object v1

    .line 1122
    iget-object v2, p0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getReferralCode()Ljava/lang/String;

    move-result-object v2

    .line 1124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1126
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1128
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    .line 1130
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.extra.TEXT"

    .line 1131
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1132
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1180
    :cond_1
    :goto_0
    sget-object p1, Lcab/snapp/passenger/f/b/b/c$a;->REFERRAL_ITEM_CLICK:Ljava/lang/String;

    .line 1181
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->c:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->hasUserEmailProvided()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1183
    iget-object v0, p0, Lcab/snapp/passenger/units/referral/a;->c:Lcab/snapp/passenger/f/b/b/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/b/b/c;->getUserEmail()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendWithAttributesViaAdjust(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
