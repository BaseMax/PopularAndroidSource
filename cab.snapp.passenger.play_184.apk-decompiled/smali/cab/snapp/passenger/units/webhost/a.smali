.class public Lcab/snapp/passenger/units/webhost/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/webhost/d;",
        "Lcab/snapp/passenger/units/webhost/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_URL_KEY:Ljava/lang/String; = "CONTENT_URL_KEY"

.field public static final IS_FROM_INBOX:Ljava/lang/String; = "IS_FROM_INBOX"

.field public static final IS_TOP_BAR_HIDDEN:Ljava/lang/String; = "IS_TOP_BAR_HIDDEN"

.field public static final SERVICE_ITEM_KEY:Ljava/lang/String; = "SERVICE_ITEM_KEY"

.field private static final e:Ljava/lang/String;


# instance fields
.field a:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcab/snapp/passenger/c/d;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcab/snapp/passenger/c/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private f:Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcab/snapp/passenger/units/webhost/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcab/snapp/passenger/units/webhost/a;->h:J

    return-void
.end method

.method public static getUnitFinishedPrivateChannelId()Ljava/lang/String;
    .locals 4

    .line 80
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/units/webhost/a;->e:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a()V
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/webhost/c;->closeKeyboardIfNeeded()V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setShouldHandleBack(Z)V

    .line 153
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/webhost/d;->navigateUp()V

    .line 157
    :cond_1
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/webhost/a;->getUnitFinishedPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public handleOnUrlClick(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    if-eqz p2, :cond_8

    .line 95
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 97
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->c:Lcab/snapp/passenger/c/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/d;->getWebhostBackUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->c:Lcab/snapp/passenger/c/d;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/d;->getWebhostBackUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/webhost/d;

    invoke-virtual {p1}, Lcab/snapp/passenger/units/webhost/d;->navigateUp()V

    :cond_0
    return v1

    :cond_1
    const-string v0, "https://webview.snapptrip.com"

    .line 105
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "android.intent.action.VIEW"

    if-eqz v0, :cond_3

    const-string v0, "/print/pdf"

    .line 106
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return v1

    :cond_3
    const-string v0, "tel:"

    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 116
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 120
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return v1

    :cond_5
    const-string v0, "snapp://"

    .line 124
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 126
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->b:Lcab/snapp/passenger/c/g;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getCurrentState()I

    move-result v0

    if-nez v0, :cond_7

    .line 128
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    instance-of p1, p1, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz p1, :cond_6

    .line 130
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {p1, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setShouldHandleBack(Z)V

    .line 131
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_6
    return v1

    .line 138
    :cond_7
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public onApplicationRootBackPressed()V
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/webhost/c;->onCheckAndBackWebview()Z

    move-result v0

    if-nez v0, :cond_1

    .line 283
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->a()V

    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_1

    .line 293
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->a()V

    :cond_1
    return-void
.end method

.method public onUnitCreated()V
    .locals 7

    .line 165
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 166
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/webhost/a;)V

    .line 171
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 176
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setShouldHandleBack(Z)V

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/d;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/webhost/d;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 186
    :cond_3
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/webhost/c;->onInitialize()V

    .line 188
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "SERVICE_ITEM_KEY"

    .line 192
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    instance-of v3, v3, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;

    if-eqz v3, :cond_4

    .line 194
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;

    iput-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->f:Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;

    .line 195
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->f:Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;

    if-eqz v0, :cond_6

    .line 197
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getReferralLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->g:Ljava/lang/String;

    .line 198
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/c;

    iget-object v2, p0, Lcab/snapp/passenger/units/webhost/a;->f:Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getId()I

    move-result v2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcab/snapp/passenger/units/webhost/c;->onSetupTheme(ILandroid/app/Activity;)V

    .line 199
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/c;

    iget-object v2, p0, Lcab/snapp/passenger/units/webhost/a;->f:Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;

    invoke-virtual {v2}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/webhost/c;->onWebHostIsInitializedFromService(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcab/snapp/passenger/f/g;->changeAppLocaleFromSharedPrefIfNeeded(Landroid/content/Context;Z)Z

    .line 201
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->f:Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->isTopBarHidden()Z

    move-result v1

    goto :goto_1

    :cond_4
    const-string v2, "CONTENT_URL_KEY"

    .line 204
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 206
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcab/snapp/passenger/units/webhost/a;->g:Ljava/lang/String;

    const-string v2, "IS_TOP_BAR_HIDDEN"

    .line 207
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 208
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v3

    check-cast v3, Lcab/snapp/passenger/units/webhost/c;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcab/snapp/passenger/units/webhost/c;->onSetupTheme(ILandroid/app/Activity;)V

    .line 209
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, v1}, Lcab/snapp/passenger/f/g;->changeAppLocaleFromSharedPrefIfNeeded(Landroid/content/Context;Z)Z

    const-string v3, "IS_FROM_INBOX"

    .line 210
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 212
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcab/snapp/passenger/units/webhost/a;->i:Z

    .line 213
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/webhost/c;->onWebHostIsInitializedFromInbox()V

    goto :goto_0

    .line 217
    :cond_5
    iput-boolean v1, p0, Lcab/snapp/passenger/units/webhost/a;->i:Z

    .line 218
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/webhost/c;->onNoTitleWebHost()V

    :goto_0
    move v1, v2

    .line 223
    :cond_6
    :goto_1
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->f:Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;

    if-eqz v0, :cond_8

    .line 224
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getMeta()Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 226
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;->isLocation()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 227
    iget-object v2, p0, Lcab/snapp/passenger/units/webhost/a;->d:Lcab/snapp/passenger/c/e;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/e;->getLocation()Landroid/location/Location;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcab/snapp/passenger/units/webhost/a;->g:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&location="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcab/snapp/passenger/units/webhost/a;->g:Ljava/lang/String;

    .line 232
    :cond_7
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/snapp_group/ServiceMeta;->isAppVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcab/snapp/passenger/units/webhost/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&app_version=4.7.0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->g:Ljava/lang/String;

    .line 238
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "WebHostUrl:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcab/snapp/passenger/units/webhost/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/c;

    iget-object v2, p0, Lcab/snapp/passenger/units/webhost/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcab/snapp/passenger/units/webhost/c;->onUrlReady(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p0}, Lcab/snapp/passenger/units/webhost/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/webhost/c;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/webhost/c;->onIsTopBarHiddenReady(Ljava/lang/Boolean;)V

    .line 242
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->a:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public onUnitPause()V
    .locals 9

    .line 256
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitPause()V

    .line 257
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->f:Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/snapp_group/ServiceItem;->getId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 260
    iget-wide v2, p0, Lcab/snapp/passenger/units/webhost/a;->h:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x1388

    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    .line 262
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_SNAPP_FLIGHT:Ljava/lang/String;

    const-string v3, "[back][lessThan5second]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 266
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_SNAPP_FLIGHT:Ljava/lang/String;

    const-string v3, "[back][lessThan30second]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/webhost/a;->a:Lcab/snapp/passenger/f/b/b/c;

    sget-object v1, Lcab/snapp/passenger/f/b/b/c$c;->NEW_UX:Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/f/b/b/c$b;->HOMESCREEN_SNAPP_FLIGHT:Ljava/lang/String;

    const-string v3, "[back][moreThan30second]"

    invoke-virtual {v0, v1, v2, v3}, Lcab/snapp/passenger/f/b/b/c;->sendAnalyticsEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 248
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcab/snapp/passenger/units/webhost/a;->h:J

    return-void
.end method
