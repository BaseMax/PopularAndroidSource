.class public final Lcab/snapp/passenger/units/referral/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/units/referral/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/referral/ReferralView;",
        "Lcab/snapp/passenger/units/referral/a;",
        ">;",
        "Lcab/snapp/passenger/units/referral/b/a;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/referral/a;->finish()V

    :cond_0
    return-void
.end method

.method public final onLoading()V
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/ReferralView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/referral/ReferralView;->showLoading()V

    return-void
.end method

.method public final onReferalCodeClicked()V
    .locals 4

    .line 87
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/a;

    .line 1143
    invoke-virtual {v0}, Lcab/snapp/passenger/units/referral/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    .line 1145
    invoke-virtual {v1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    .line 1146
    invoke-virtual {v1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    .line 1147
    invoke-virtual {v1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getReferralCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    .line 1148
    invoke-virtual {v1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getReferralCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1155
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcab/snapp/passenger/units/referral/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getProfileResponse()Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/passenger/data_access_layer/network/responses/ProfileResponse;->getReferralCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcab/snapp/passenger/units/referral/a;->a:Ljava/lang/String;

    .line 1157
    invoke-virtual {v0}, Lcab/snapp/passenger/units/referral/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v2, "Copied Text"

    .line 1162
    iget-object v3, v0, Lcab/snapp/passenger/units/referral/a;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    .line 1163
    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1165
    invoke-virtual {v0}, Lcab/snapp/passenger/units/referral/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Lcab/snapp/passenger/units/referral/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f1201c5

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/snappuikit/b;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1170
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    nop

    :cond_2
    :goto_0
    return-void
.end method

.method public final onReferralAppsReady(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/ReferralView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/referral/ReferralView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    new-instance v0, Lcab/snapp/passenger/units/referral/a/a;

    invoke-direct {v0, p0, p1}, Lcab/snapp/passenger/units/referral/a/a;-><init>(Lcab/snapp/passenger/units/referral/b/a;Ljava/util/List;)V

    .line 62
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/referral/ReferralView;

    invoke-virtual {v1}, Lcab/snapp/passenger/units/referral/ReferralView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p1, v1, v2, v3, v4}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 63
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/referral/ReferralView;

    invoke-virtual {v1, v0, p1}, Lcab/snapp/passenger/units/referral/ReferralView;->fillReferralAppsRecyclerView(Lcab/snapp/passenger/units/referral/a/a;Landroidx/recyclerview/widget/GridLayoutManager;)V

    .line 64
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/referral/ReferralView;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/referral/ReferralView;->hideLoading()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onReferralCodeReady(Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/ReferralView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/referral/ReferralView;->setReferralCodeText(Ljava/lang/String;)V

    return-void
.end method

.method public final onReferralIntroTextReady(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/ReferralView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/referral/ReferralView;->setReferralIntroText(Ljava/lang/String;)V

    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/ReferralView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/referral/ReferralView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/ReferralView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/referral/ReferralView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 121
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public final shareAppsClicked(Landroid/content/pm/ResolveInfo;)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/referral/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/referral/a;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/referral/a;->shareReferralCodeByApp(Landroid/content/pm/ResolveInfo;)V

    :cond_1
    :goto_0
    return-void
.end method
