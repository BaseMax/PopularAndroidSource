.class public Lcab/snapp/passenger/units/over_the_map_empty/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/over_the_map_empty/d;",
        "Lcab/snapp/passenger/units/over_the_map_empty/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private b:Lcab/snapp/snappdialog/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0210

    if-eqz v0, :cond_1

    new-instance v0, Lcab/snapp/passenger/f/e;

    invoke-direct {v0}, Lcab/snapp/passenger/f/e;-><init>()V

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/f/e;->IUDFU(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/over_the_map_empty/OverTheMapEmptyView;

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/over_the_map_empty/OverTheMapEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    :cond_0
    new-instance v0, Lcab/snapp/snappdialog/b$a;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcab/snapp/snappdialog/b$a;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080166

    .line 55
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setIcon(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 56
    invoke-virtual {v0, v1}, Lcab/snapp/snappdialog/b$a;->setTheme(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v2, 0x7f12015f

    .line 57
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setDialogTitle(I)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    new-instance v2, Lcab/snapp/snappdialog/dialogViews/a/g$a;

    invoke-direct {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f120161

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->setMessage(Ljava/lang/String;)Lcab/snapp/snappdialog/dialogViews/a/g$a;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcab/snapp/snappdialog/dialogViews/a/g$a;->build()Lcab/snapp/snappdialog/dialogViews/a/g;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Lcab/snapp/snappdialog/b$a;->setDialogViewType(Lcab/snapp/snappdialog/dialogViews/a/c;)Lcab/snapp/snappdialog/b$a;

    move-result-object v0

    const v2, 0x7f12009a

    new-instance v3, Lcab/snapp/passenger/units/over_the_map_empty/-$$Lambda$a$UkiT8jc69VWR3YRjpOfPjG8lBLw;

    invoke-direct {v3, p0, p1}, Lcab/snapp/passenger/units/over_the_map_empty/-$$Lambda$a$UkiT8jc69VWR3YRjpOfPjG8lBLw;-><init>(Lcab/snapp/passenger/units/over_the_map_empty/a;Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V

    .line 61
    invoke-virtual {v0, v2, v3}, Lcab/snapp/snappdialog/b$a;->setPositiveButton(ILandroid/view/View$OnClickListener;)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 75
    invoke-virtual {p1, v1}, Lcab/snapp/snappdialog/b$a;->showOnBuild(Z)Lcab/snapp/snappdialog/b$a;

    move-result-object p1

    .line 76
    invoke-virtual {p1}, Lcab/snapp/snappdialog/b$a;->build()Lcab/snapp/snappdialog/b;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/passenger/units/over_the_map_empty/a;->b:Lcab/snapp/snappdialog/b;

    .line 77
    iget-object p1, p0, Lcab/snapp/passenger/units/over_the_map_empty/a;->b:Lcab/snapp/snappdialog/b;

    new-instance v0, Lcab/snapp/passenger/units/over_the_map_empty/-$$Lambda$a$3FDTXxmcwFElZdeNa6vhev-zV60;

    invoke-direct {v0, p0}, Lcab/snapp/passenger/units/over_the_map_empty/-$$Lambda$a$3FDTXxmcwFElZdeNa6vhev-zV60;-><init>(Lcab/snapp/passenger/units/over_the_map_empty/a;)V

    invoke-virtual {p1, v0}, Lcab/snapp/snappdialog/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 87
    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/units/over_the_map_empty/OverTheMapEmptyView;

    invoke-virtual {p1, v1}, Lcab/snapp/passenger/units/over_the_map_empty/OverTheMapEmptyView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    .line 88
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private synthetic a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;Landroid/view/View;)V
    .locals 1

    .line 64
    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1}, Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;->getAppData()Lcab/snapp/passenger/data/models/AppData;

    move-result-object p1

    invoke-virtual {p1}, Lcab/snapp/passenger/data/models/AppData;->getUpdateUri()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    invoke-static {p1}, Lcom/a/a/a;->logException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic lambda$3FDTXxmcwFElZdeNa6vhev-zV60(Lcab/snapp/passenger/units/over_the_map_empty/a;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/over_the_map_empty/a;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$UkiT8jc69VWR3YRjpOfPjG8lBLw(Lcab/snapp/passenger/units/over_the_map_empty/a;Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcab/snapp/passenger/units/over_the_map_empty/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$yWuF8GUQ1Nwb5o5J6Qp3HkJ94oA(Lcab/snapp/passenger/units/over_the_map_empty/a;Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V
    .locals 0

    invoke-direct {p0, p1}, Lcab/snapp/passenger/units/over_the_map_empty/a;->a(Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;)V

    return-void
.end method


# virtual methods
.method public onUnitCreated()V
    .locals 2

    .line 37
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 38
    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/over_the_map_empty/a;)V

    .line 44
    iget-object v0, p0, Lcab/snapp/passenger/units/over_the_map_empty/a;->a:Lcab/snapp/passenger/c/b;

    .line 45
    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfigObservable()Lio/reactivex/z;

    move-result-object v0

    new-instance v1, Lcab/snapp/passenger/units/over_the_map_empty/-$$Lambda$a$yWuF8GUQ1Nwb5o5J6Qp3HkJ94oA;

    invoke-direct {v1, p0}, Lcab/snapp/passenger/units/over_the_map_empty/-$$Lambda$a$yWuF8GUQ1Nwb5o5J6Qp3HkJ94oA;-><init>(Lcab/snapp/passenger/units/over_the_map_empty/a;)V

    .line 46
    invoke-virtual {v0, v1}, Lio/reactivex/z;->subscribe(Lio/reactivex/e/g;)Lio/reactivex/b/c;

    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcab/snapp/passenger/units/over_the_map_empty/a;->addDisposable(Lio/reactivex/b/c;)V

    return-void
.end method
