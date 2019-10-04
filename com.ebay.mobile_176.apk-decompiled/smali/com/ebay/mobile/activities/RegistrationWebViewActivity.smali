.class public final Lcom/ebay/mobile/activities/RegistrationWebViewActivity;
.super Lcom/ebay/mobile/activities/ShowWebViewActivity;
.source "RegistrationWebViewActivity.java"

# interfaces
.implements Lcom/ebay/nautilus/domain/content/dm/ThreatMatrixDataManager$Observer;


# instance fields
.field private deferLoad:Z

.field private tmxSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;-><init>()V

    return-void
.end method

.method public static getStartingIntent(Lcom/ebay/mobile/activities/CoreActivity;Z)Landroid/content/Intent;
    .locals 3

    if-eqz p1, :cond_0

    .line 109
    invoke-static {}, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->regUrlFromHome()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ebay/mobile/dcs/DcsHelper;->fpaRegistrationUrl()Ljava/lang/String;

    move-result-object p1

    .line 112
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "url"

    .line 113
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.intent.extra.TITLE"

    const v1, 0x7f120b68

    .line 114
    invoke-virtual {p0, v1}, Lcom/ebay/mobile/activities/CoreActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ok"

    const/4 v1, 0x0

    .line 115
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo p1, "show_menu"

    .line 116
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "back"

    const/4 v1, 0x1

    .line 117
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "impression"

    const-string v1, "BuyerRegistrationStart"

    .line 118
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "last_page_pattern"

    const-string v1, ".*\\b(cmd=REGISTER|VAppEma)\\b.*"

    .line 119
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/CoreActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 125
    new-instance p1, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    const-string/jumbo v1, "register"

    const-string/jumbo v2, "register"

    invoke-direct {p1, p0, v1, v2}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "com.ebay.mobile.analytics.sid"

    .line 127
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method

.method public static regUrlFromHome()Ljava/lang/String;
    .locals 3

    .line 135
    invoke-static {}, Lcom/ebay/mobile/MyApp;->getDeviceConfiguration()Lcom/ebay/mobile/dcs/DcsHelper;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/ebay/mobile/dcs/DcsHelper;->ppaRegistrationUrl()Ljava/lang/String;

    move-result-object v1

    .line 137
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/ebay/mobile/dcs/DcsHelper;->fpaRegistrationUrl()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-static {}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration$-CC;->getAsync()Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;

    move-result-object v0

    sget-object v1, Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;->ThreatMatrixRiskModule:Lcom/ebay/nautilus/domain/dcs/DcsNautilusBoolean;

    invoke-interface {v0, v1}, Lcom/ebay/nautilus/domain/dcs/DeviceConfiguration;->get(Lcom/ebay/nautilus/domain/dcs/DcsPropBoolean;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->deferLoad:Z

    .line 33
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V
    .locals 1

    .line 39
    invoke-super {p0, p1}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onInitializeDataManagers(Lcom/ebay/nautilus/shell/app/DataManagerContainer;)V

    .line 41
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->deferLoad:Z

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lcom/ebay/nautilus/domain/content/dm/ThreatMatrixDataManager;->KEY:Lcom/ebay/nautilus/domain/content/dm/ThreatMatrixDataManager$KeyParams;

    invoke-virtual {p1, v0, p0}, Lcom/ebay/nautilus/shell/app/DataManagerContainer;->initialize(Lcom/ebay/nautilus/domain/content/DataManager$DataManagerKeyParams;Ljava/lang/Object;)Lcom/ebay/nautilus/domain/content/DataManager;

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->headers:Ljava/util/HashMap;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->headers:Ljava/util/HashMap;

    const-string/jumbo v0, "x-ebay-mobile-profile-session"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 46
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->deferLoad:Z

    :cond_1
    return-void
.end method

.method public onInitialized(Lcom/ebay/nautilus/domain/content/dm/ThreatMatrixDataManager;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onRefresh()V
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->deferLoad:Z

    if-nez v0, :cond_0

    .line 58
    invoke-super {p0}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onRefresh()V

    :cond_0
    return-void
.end method

.method public onRegistered(Lcom/ebay/nautilus/domain/content/dm/ThreatMatrixDataManager;Ljava/lang/String;)V
    .locals 2

    .line 93
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 95
    iput-object p2, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->tmxSessionId:Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->getFwLoaderManager()Lcom/ebay/nautilus/shell/app/FwLoaderManager;

    move-result-object p1

    const/4 p2, 0x2

    new-instance v0, Lcom/ebay/mobile/connection/idsignin/InstantiateGuidLoader;

    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->getEbayContext()Lcom/ebay/nautilus/kernel/content/EbayContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ebay/mobile/connection/idsignin/InstantiateGuidLoader;-><init>(Lcom/ebay/nautilus/kernel/content/EbayContext;)V

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/ebay/nautilus/shell/app/FwLoaderManager;->start(ILcom/ebay/nautilus/shell/content/FwLoader;Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 100
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->deferLoad:Z

    .line 101
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->onRefresh()V

    :goto_0
    return-void
.end method

.method protected onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V
    .locals 2

    .line 64
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/activities/ShowWebViewActivity;->onTaskComplete(ILcom/ebay/nautilus/shell/content/FwLoader;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 68
    check-cast p2, Lcom/ebay/mobile/connection/idsignin/InstantiateGuidLoader;

    if-eqz p2, :cond_1

    .line 69
    iget-object p1, p2, Lcom/ebay/mobile/connection/idsignin/InstantiateGuidLoader;->id3pp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lcom/ebay/mobile/connection/idsignin/InstantiateGuidLoader;->id4pp:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->headers:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 72
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->headers:Ljava/util/HashMap;

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->headers:Ljava/util/HashMap;

    const-string/jumbo v0, "x-ebay-mobile-profile-session"

    iget-object v1, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->tmxSessionId:Ljava/lang/String;

    .line 74
    invoke-static {v1}, Lcom/ebay/nautilus/domain/net/EbayRequest;->generateTmxProfileSessionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object p1, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->headers:Ljava/util/HashMap;

    const-string/jumbo v0, "x-ebay3pp-device-id"

    iget-object v1, p2, Lcom/ebay/mobile/connection/idsignin/InstantiateGuidLoader;->id3pp:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object p1, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->headers:Ljava/util/HashMap;

    const-string/jumbo v0, "x-ebay-4pp"

    iget-object p2, p2, Lcom/ebay/mobile/connection/idsignin/InstantiateGuidLoader;->id4pp:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->deferLoad:Z

    .line 80
    invoke-virtual {p0}, Lcom/ebay/mobile/activities/RegistrationWebViewActivity;->onRefresh()V

    :cond_2
    return-void
.end method
