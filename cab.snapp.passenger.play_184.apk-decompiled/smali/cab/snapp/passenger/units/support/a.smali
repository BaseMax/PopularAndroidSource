.class public Lcab/snapp/passenger/units/support/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/support/d;",
        "Lcab/snapp/passenger/units/support/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Lcab/snapp/passenger/c/b;
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

.field private e:I

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;",
            ">;"
        }
    .end annotation
.end field

.field public relation:Ljava/lang/String;

.field public rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcab/snapp/passenger/units/support/a;->rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    const/4 v0, 0x1

    .line 59
    iput v0, p0, Lcab/snapp/passenger/units/support/a;->a:I

    .line 63
    iput v0, p0, Lcab/snapp/passenger/units/support/a;->e:I

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/units/support/a;->f:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/units/support/a;->g:Ljava/util/List;

    return-void
.end method

.method private a()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;
    .locals 1

    .line 146
    :try_start_0
    iget-object v0, p0, Lcab/snapp/passenger/units/support/a;->b:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    invoke-static {v0}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic a(Lcab/snapp/passenger/units/support/a;)Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;
    .locals 0

    .line 42
    invoke-direct {p0}, Lcab/snapp/passenger/units/support/a;->a()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object p0

    return-object p0
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 124
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;->getChildList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/support/a;->g:Ljava/util/List;

    .line 125
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/support/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;->getChildList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/support/c;->onShowTickets(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcab/snapp/passenger/units/support/a;Ljava/lang/String;)V
    .locals 5

    const-string v0, "tel:"

    .line 2180
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2182
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2188
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 2192
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance v2, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v0, "android.intent.action.DIAL"

    invoke-direct {v2, v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 2193
    invoke-static {v1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic a(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method private synthetic b(Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;->getChildList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/support/a;->g:Ljava/util/List;

    .line 107
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/support/c;

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;->getChildList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/units/support/c;->onShowTickets(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcab/snapp/passenger/units/support/a;Ljava/lang/String;)V
    .locals 2

    .line 3163
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3165
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3169
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "tel:"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static synthetic b(Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static synthetic lambda$aCAvFbwLTAo0O8epgl52_KeRdds(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/support/a;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$dDoFrT-JgE4oN5AjBy0TGxA3Ku4(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcab/snapp/passenger/units/support/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$od6M_eZMzHLgCCAU1vGFH35jiuk(Lcab/snapp/passenger/units/support/a;Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/support/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;)V

    return-void
.end method

.method public static synthetic lambda$q3XNlTTcgDWRr-DFgfsOttu7LeU(Lcab/snapp/passenger/units/support/a;Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/support/a;->b(Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;)V

    return-void
.end method


# virtual methods
.method public callSnappBoxSupport()V
    .locals 4

    .line 329
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 330
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 334
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/support/a;->a()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 338
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CALL_PHONE"

    aput-object v3, v1, v2

    new-instance v3, Lcab/snapp/passenger/units/support/a$2;

    invoke-direct {v3, p0}, Lcab/snapp/passenger/units/support/a$2;-><init>(Lcab/snapp/passenger/units/support/a;)V

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcab/snapp/c/g;->getPermission(Landroid/app/Activity;[Ljava/lang/String;Lcab/snapp/c/g$a;[Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public callSnappSupport()V
    .locals 4

    .line 300
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    invoke-direct {p0}, Lcab/snapp/passenger/units/support/a;->a()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 309
    :cond_1
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.CALL_PHONE"

    aput-object v3, v1, v2

    new-instance v3, Lcab/snapp/passenger/units/support/a$1;

    invoke-direct {v3, p0}, Lcab/snapp/passenger/units/support/a$1;-><init>(Lcab/snapp/passenger/units/support/a;)V

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcab/snapp/c/g;->getPermission(Landroid/app/Activity;[Ljava/lang/String;Lcab/snapp/c/g$a;[Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public handleTicketItemClick(Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;->getChildList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;->getChildList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 369
    iget-object v0, p0, Lcab/snapp/passenger/units/support/a;->f:Ljava/util/Map;

    iget v2, p0, Lcab/snapp/passenger/units/support/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcab/snapp/passenger/units/support/a;->g:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/TicketItemResponse;->getChildList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/support/a;->g:Ljava/util/List;

    .line 371
    iget p1, p0, Lcab/snapp/passenger/units/support/a;->a:I

    add-int/2addr p1, v1

    iput p1, p0, Lcab/snapp/passenger/units/support/a;->a:I

    .line 372
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/support/c;

    iget-object v0, p0, Lcab/snapp/passenger/units/support/a;->g:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/support/c;->onShowTickets(Ljava/util/List;)V

    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/support/a;->f:Ljava/util/Map;

    iget v2, p0, Lcab/snapp/passenger/units/support/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcab/snapp/passenger/units/support/a;->g:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1209
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1211
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setShouldHandleBack(Z)V

    .line 1213
    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1214
    iget v1, p0, Lcab/snapp/passenger/units/support/a;->e:I

    const-string v2, "Key Support Type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1215
    iget-object v1, p0, Lcab/snapp/passenger/units/support/a;->relation:Ljava/lang/String;

    const-string v2, "Key Support Relation"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    iget-object v1, p0, Lcab/snapp/passenger/units/support/a;->rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    const-string v2, "Key Ride History Info"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "Key Ticket Item"

    .line 1217
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1218
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/support/d;

    invoke-virtual {p1, v0}, Lcab/snapp/passenger/units/support/d;->routeToTicketController(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public onApplicationRootBackPressed()V
    .locals 2

    .line 460
    iget v0, p0, Lcab/snapp/passenger/units/support/a;->a:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 462
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 464
    iget v0, p0, Lcab/snapp/passenger/units/support/a;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcab/snapp/passenger/units/support/a;->a:I

    .line 465
    iget-object v0, p0, Lcab/snapp/passenger/units/support/a;->f:Ljava/util/Map;

    iget v1, p0, Lcab/snapp/passenger/units/support/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcab/snapp/passenger/units/support/a;->g:Ljava/util/List;

    .line 466
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/support/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/support/a;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/support/c;->onShowTickets(Ljava/util/List;)V

    .line 467
    iget-object v0, p0, Lcab/snapp/passenger/units/support/a;->f:Ljava/util/Map;

    iget v1, p0, Lcab/snapp/passenger/units/support/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 472
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcab/snapp/passenger/units/support/a;->f:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 476
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 478
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setShouldHandleBack(Z)V

    .line 479
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_2
    return-void
.end method

.method public onUnitCreated()V
    .locals 4

    .line 395
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 396
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 400
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/support/a;)V

    .line 401
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 403
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "Key Support Type"

    .line 406
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Key Support Relation"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 408
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcab/snapp/passenger/units/support/a;->e:I

    .line 409
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/support/a;->relation:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "Key Ride History Info"

    .line 411
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 413
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/data/models/RideHistoryInfo;

    iput-object v0, p0, Lcab/snapp/passenger/units/support/a;->rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    const/4 v0, 0x3

    .line 414
    iput v0, p0, Lcab/snapp/passenger/units/support/a;->e:I

    .line 415
    iget-object v0, p0, Lcab/snapp/passenger/units/support/a;->rideHistoryInfo:Lcab/snapp/passenger/data/models/RideHistoryInfo;

    if-eqz v0, :cond_2

    .line 417
    invoke-virtual {v0}, Lcab/snapp/passenger/data/models/RideHistoryInfo;->getHumanReadableID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/passenger/units/support/a;->relation:Ljava/lang/String;

    .line 421
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 423
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/support/d;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/support/d;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 426
    :cond_3
    iget-object v0, p0, Lcab/snapp/passenger/units/support/a;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 428
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 430
    iget-object v0, p0, Lcab/snapp/passenger/units/support/a;->f:Ljava/util/Map;

    iget v1, p0, Lcab/snapp/passenger/units/support/a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcab/snapp/passenger/units/support/a;->g:Ljava/util/List;

    .line 431
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/support/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/support/a;->g:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/support/c;->onShowTickets(Ljava/util/List;)V

    goto :goto_1

    .line 2094
    :cond_4
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2095
    instance-of v0, v0, Lcab/snapp/passenger/units/support/SupportController;

    if-nez v0, :cond_5

    goto :goto_1

    .line 2099
    :cond_5
    iget v0, p0, Lcab/snapp/passenger/units/support/a;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 2101
    iget-object v0, p0, Lcab/snapp/passenger/units/support/a;->c:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 2102
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getTransactionTicketTree()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/support/-$$Lambda$a$q3XNlTTcgDWRr-DFgfsOttu7LeU;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/support/-$$Lambda$a$q3XNlTTcgDWRr-DFgfsOttu7LeU;-><init>(Lcab/snapp/passenger/units/support/a;)V

    sget-object v2, Lcab/snapp/passenger/units/support/-$$Lambda$a$aCAvFbwLTAo0O8epgl52_KeRdds;->INSTANCE:Lcab/snapp/passenger/units/support/-$$Lambda$a$aCAvFbwLTAo0O8epgl52_KeRdds;

    .line 2103
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 2101
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/support/a;->addDisposable(Lio/reactivex/b/c;)V

    goto :goto_1

    .line 2119
    :cond_6
    iget-object v0, p0, Lcab/snapp/passenger/units/support/a;->c:Lcab/snapp/passenger/data_access_layer/a/d;

    .line 2120
    invoke-virtual {v0}, Lcab/snapp/passenger/data_access_layer/a/d;->getTicketTree()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/support/-$$Lambda$a$od6M_eZMzHLgCCAU1vGFH35jiuk;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/support/-$$Lambda$a$od6M_eZMzHLgCCAU1vGFH35jiuk;-><init>(Lcab/snapp/passenger/units/support/a;)V

    sget-object v2, Lcab/snapp/passenger/units/support/-$$Lambda$a$dDoFrT-JgE4oN5AjBy0TGxA3Ku4;->INSTANCE:Lcab/snapp/passenger/units/support/-$$Lambda$a$dDoFrT-JgE4oN5AjBy0TGxA3Ku4;

    .line 2121
    invoke-virtual {v0, v1, v2}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 2119
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/support/a;->addDisposable(Lio/reactivex/b/c;)V

    .line 438
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 440
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/support/c;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/support/c;->setStatusBarColor()V

    :cond_8
    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 448
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 449
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 451
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setShouldHandleBack(Z)V

    .line 453
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/units/support/a;->d:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, "Support Page"

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public pressBack()V
    .locals 1

    .line 384
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {p0}, Lcab/snapp/passenger/units/support/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    :cond_0
    return-void
.end method
