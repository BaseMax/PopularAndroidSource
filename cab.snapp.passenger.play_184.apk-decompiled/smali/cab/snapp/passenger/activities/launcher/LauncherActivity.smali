.class public Lcab/snapp/passenger/activities/launcher/LauncherActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field a:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/f/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a(Lcab/snapp/deeplink/models/a;)V
    .locals 4

    .line 45
    iget-object v0, p0, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->INTEGRATION:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->INTENT:Ljava/lang/String;

    const-string v3, "Deep Link"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getScheme()Lcab/snapp/deeplink/models/types/Scheme;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/Scheme;->Snapp:Lcab/snapp/deeplink/models/types/Scheme;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Ride:Lcab/snapp/deeplink/models/types/Host;

    if-ne v0, v1, :cond_0

    .line 49
    iget-object p1, p0, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->DEEP_LINK:Ljava/lang/String;

    const-string v2, "[ride]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getScheme()Lcab/snapp/deeplink/models/types/Scheme;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/Scheme;->Snapp:Lcab/snapp/deeplink/models/types/Scheme;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Shortcut:Lcab/snapp/deeplink/models/types/Host;

    if-ne v0, v1, :cond_1

    .line 53
    iget-object p1, p0, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->DEEP_LINK:Ljava/lang/String;

    const-string v2, "[shortcut]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getScheme()Lcab/snapp/deeplink/models/types/Scheme;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/Scheme;->Snapp:Lcab/snapp/deeplink/models/types/Scheme;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v0

    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Open:Lcab/snapp/deeplink/models/types/Host;

    if-ne v0, v1, :cond_2

    .line 57
    iget-object p1, p0, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->DEEP_LINK:Ljava/lang/String;

    const-string v2, "[open]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 59
    :cond_2
    invoke-virtual {p1}, Lcab/snapp/deeplink/models/a;->getScheme()Lcab/snapp/deeplink/models/types/Scheme;

    move-result-object p1

    sget-object v0, Lcab/snapp/deeplink/models/types/Scheme;->Geo:Lcab/snapp/deeplink/models/types/Scheme;

    if-ne p1, v0, :cond_3

    .line 61
    iget-object p1, p0, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$b;->DEEP_LINK:Ljava/lang/String;

    const-string v2, "[geo]"

    invoke-virtual {p1, v0, v1, v2}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private static a(Lcab/snapp/deeplink/models/types/Host;)Z
    .locals 1

    .line 179
    sget-object v0, Lcab/snapp/deeplink/models/types/Host;->Eco:Lcab/snapp/deeplink/models/types/Host;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcab/snapp/deeplink/models/types/Host;->Rose:Lcab/snapp/deeplink/models/types/Host;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcab/snapp/deeplink/models/types/Host;->Box:Lcab/snapp/deeplink/models/types/Host;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcab/snapp/deeplink/models/types/Host;->Bike:Lcab/snapp/deeplink/models/types/Host;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static b(Lcab/snapp/deeplink/models/a;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 157
    invoke-virtual {p0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v1

    sget-object v3, Lcab/snapp/deeplink/models/types/Host;->Ride:Lcab/snapp/deeplink/models/types/Host;

    if-eq v1, v3, :cond_0

    invoke-virtual {p0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v1

    sget-object v3, Lcab/snapp/deeplink/models/types/Host;->Shortcut:Lcab/snapp/deeplink/models/types/Host;

    if-ne v1, v3, :cond_1

    :cond_0
    return v2

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/deeplink/models/a;->getScheme()Lcab/snapp/deeplink/models/types/Scheme;

    move-result-object v1

    sget-object v3, Lcab/snapp/deeplink/models/types/Scheme;->Geo:Lcab/snapp/deeplink/models/types/Scheme;

    if-ne v1, v3, :cond_2

    return v2

    .line 163
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcab/snapp/deeplink/models/a;->getHost()Lcab/snapp/deeplink/models/types/Host;

    move-result-object p0

    invoke-static {p0}, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->a(Lcab/snapp/deeplink/models/types/Host;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {p0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object p1

    invoke-interface {p1, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/activities/launcher/LauncherActivity;)V

    const p1, 0x7f0d00bd

    .line 72
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->setContentView(I)V

    .line 73
    iget-object p1, p0, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->b:Lcab/snapp/passenger/f/b/b/c;

    sget-object v0, Lcab/snapp/passenger/f/b/b/c$e;->OPEN_APP:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/f/b/b/c;->reportEvent(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 77
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 80
    new-instance v0, Lcab/snapp/deeplink/a;

    invoke-direct {v0, p1}, Lcab/snapp/deeplink/a;-><init>(Landroid/net/Uri;)V

    .line 83
    :try_start_0
    invoke-virtual {v0}, Lcab/snapp/deeplink/a;->parse()Lcab/snapp/deeplink/models/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 86
    invoke-static {p1}, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->b(Lcab/snapp/deeplink/models/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/c/g;->setDeepLink(Lcab/snapp/deeplink/models/a;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->c:Lcab/snapp/passenger/f/b;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/b;->setDeepLink(Lcab/snapp/deeplink/models/a;)V

    .line 94
    :goto_0
    invoke-direct {p0, p1}, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->a(Lcab/snapp/deeplink/models/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    .line 107
    :cond_1
    :goto_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1, p1}, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->overridePendingTransition(II)V

    .line 110
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->finish()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 120
    invoke-virtual {p0}, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 123
    new-instance v0, Lcab/snapp/deeplink/a;

    invoke-direct {v0, p1}, Lcab/snapp/deeplink/a;-><init>(Landroid/net/Uri;)V

    .line 126
    :try_start_0
    invoke-virtual {v0}, Lcab/snapp/deeplink/a;->parse()Lcab/snapp/deeplink/models/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 129
    invoke-static {p1}, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->b(Lcab/snapp/deeplink/models/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/c/g;->setDeepLink(Lcab/snapp/deeplink/models/a;)V

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->c:Lcab/snapp/passenger/f/b;

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/b;->setDeepLink(Lcab/snapp/deeplink/models/a;)V

    .line 137
    :goto_0
    invoke-direct {p0, p1}, Lcab/snapp/passenger/activities/launcher/LauncherActivity;->a(Lcab/snapp/deeplink/models/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 142
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 143
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method
