.class public abstract Lcab/snapp/passenger/activities/base/BaseActivity;
.super Lcab/snapp/arch/protocol/BaseArchActivity;
.source "SourceFile"


# instance fields
.field b:Lcab/snapp/passenger/c/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseArchActivity;-><init>()V

    return-void
.end method

.method protected static a(Landroid/app/Activity;I)V
    .locals 1

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 57
    :cond_0
    invoke-static {p1}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 100
    invoke-static {p1}, Lcab/snapp/passenger/f/g;->changeLocaleInContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    .line 101
    invoke-super {p0, p1}, Lcab/snapp/arch/protocol/BaseArchActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 93
    invoke-super {p0, p1}, Lcab/snapp/arch/protocol/BaseArchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 94
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/base/BaseActivity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcab/snapp/passenger/f/g;->setLocale(Landroid/app/Application;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcab/snapp/arch/protocol/BaseArchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-static {p0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/activities/base/BaseActivity;)V

    .line 70
    invoke-static {}, Landroidx/appcompat/app/AppCompatDelegate;->getDefaultNightMode()I

    move-result v0

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    const/4 v0, 0x1

    .line 72
    invoke-static {p0, v0}, Lcab/snapp/passenger/f/g;->changeAppLocaleFromSharedPrefIfNeeded(Landroid/content/Context;Z)Z

    .line 75
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/f/g;->setLayoutDirectionBasedOnLocale(Landroid/view/View;)V

    const v0, 0x7f0d001c

    .line 80
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/activities/base/BaseActivity;->setContentView(I)V

    .line 81
    invoke-static {p0}, Lbutterknife/ButterKnife;->bind(Landroid/app/Activity;)Lbutterknife/Unbinder;

    .line 86
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/activities/base/BaseActivity;->onCreateFinished(Landroid/os/Bundle;)V

    return-void
.end method

.method protected abstract onCreateFinished(Landroid/os/Bundle;)V
.end method

.method public onResume()V
    .locals 1

    .line 107
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseArchActivity;->onResume()V

    .line 108
    iget-object v0, p0, Lcab/snapp/passenger/activities/base/BaseActivity;->b:Lcab/snapp/passenger/c/e;

    invoke-virtual {v0, p0}, Lcab/snapp/passenger/c/e;->setCurrentActivity(Landroid/app/Activity;)V

    return-void
.end method
