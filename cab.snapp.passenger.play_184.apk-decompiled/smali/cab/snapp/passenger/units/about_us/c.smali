.class public final Lcab/snapp/passenger/units/about_us/c;
.super Lcab/snapp/arch/protocol/BasePresenter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "Lcab/snapp/passenger/units/about_us/AboutUsView;",
        "Lcab/snapp/passenger/units/about_us/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BasePresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAboutUsContentReady(Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/about_us/AboutUsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/about_us/AboutUsView;->hideLoading()V

    .line 37
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/about_us/AboutUsView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/about_us/AboutUsView;->setAboutUsContent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onBackButtonClicked()V
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/about_us/a;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/about_us/a;->finish()V

    :cond_0
    return-void
.end method

.method public final onInitialize(Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/about_us/AboutUsView;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/about_us/AboutUsView;->setVersionName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final onTermsAndConditionLinkClicked()V
    .locals 4

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/c;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/about_us/a;

    .line 1091
    invoke-virtual {v0}, Lcab/snapp/passenger/units/about_us/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1095
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {}, Lcab/snapp/passenger/data_access_layer/network/b$a;->getTermsAndConditionLink()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1096
    invoke-virtual {v0}, Lcab/snapp/passenger/units/about_us/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1100
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1101
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final setStatusBarColor()V
    .locals 2

    .line 68
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/about_us/AboutUsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/about_us/AboutUsView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcab/snapp/passenger/units/about_us/c;->getView()Lcab/snapp/arch/protocol/BaseView;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/about_us/AboutUsView;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/about_us/AboutUsView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f06004d

    .line 71
    invoke-static {v0, v1}, Lcab/snapp/snappuikit/c/a;->setStatusBarColorRes(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method
