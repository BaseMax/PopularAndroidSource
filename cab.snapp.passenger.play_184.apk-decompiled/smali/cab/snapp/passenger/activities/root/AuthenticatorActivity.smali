.class public Lcab/snapp/passenger/activities/root/AuthenticatorActivity;
.super Landroid/accounts/AccountAuthenticatorActivity;
.source "SourceFile"


# instance fields
.field a:Lcab/snapp/authenticator/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/accounts/AccountAuthenticatorActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeLocaleInContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 62
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/AuthenticatorActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/f/g;->setLocale(Landroid/app/Application;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 33
    invoke-super {p0, p1}, Landroid/accounts/AccountAuthenticatorActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {p0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object p1

    invoke-interface {p1, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/activities/root/AuthenticatorActivity;)V

    .line 37
    iget-object p1, p0, Lcab/snapp/passenger/activities/root/AuthenticatorActivity;->a:Lcab/snapp/authenticator/c;

    invoke-virtual {p1}, Lcab/snapp/authenticator/c;->isUserAuthorized()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120129

    .line 39
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/activities/root/AuthenticatorActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcab/snapp/snappuikit/b;->makeText(Landroid/content/Context;Ljava/lang/String;)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/AuthenticatorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcab/snapp/snappuikit/b;->textColor(I)Lcab/snapp/snappuikit/b;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/snappuikit/b;->show()V

    .line 40
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/AuthenticatorActivity;->finish()V

    return-void

    .line 44
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    const-string v1, "SNAPP_ADD_ACCOUNT_FROM_SETTINGS"

    .line 45
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 47
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/activities/root/AuthenticatorActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/root/AuthenticatorActivity;->finish()V

    return-void
.end method
