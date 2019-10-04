.class public Lcab/snapp/passenger/units/tour/b;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/units/tour/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/tour/g;",
        "Lcab/snapp/passenger/units/tour/e;",
        ">;",
        "Lcab/snapp/passenger/units/tour/a;"
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String; = "TOUR_FINISHED_PRIVATE_CHANNEL_ID"


# instance fields
.field a:Lcab/snapp/passenger/f/o;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method

.method public static getTourFinishedPrivateChannelId()Ljava/lang/String;
    .locals 4

    .line 44
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    sget-object v2, Lcab/snapp/passenger/units/tour/b;->c:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/data_access_layer/a/c;->getPrivateChannelId([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addItemsAsLtr(Ljava/util/ArrayList;Lcab/snapp/passenger/units/tour/d;Lcab/snapp/passenger/units/tour/d;Lcab/snapp/passenger/units/tour/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/units/tour/d;",
            ">;",
            "Lcab/snapp/passenger/units/tour/d;",
            "Lcab/snapp/passenger/units/tour/d;",
            "Lcab/snapp/passenger/units/tour/d;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addItemsAsRtl(Ljava/util/ArrayList;Lcab/snapp/passenger/units/tour/d;Lcab/snapp/passenger/units/tour/d;Lcab/snapp/passenger/units/tour/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcab/snapp/passenger/units/tour/d;",
            ">;",
            "Lcab/snapp/passenger/units/tour/d;",
            "Lcab/snapp/passenger/units/tour/d;",
            "Lcab/snapp/passenger/units/tour/d;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public finish()V
    .locals 3

    .line 189
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/passenger/activities/root/RootActivity;

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setShouldHandleBack(Z)V

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 195
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/tour/g;->navigateUp()V

    .line 197
    :cond_1
    invoke-static {}, Lcab/snapp/passenger/data_access_layer/a/c;->getInstance()Lcab/snapp/passenger/data_access_layer/a/c;

    move-result-object v0

    invoke-static {}, Lcab/snapp/passenger/units/tour/b;->getTourFinishedPrivateChannelId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/data_access_layer/a/c;->emitToPrivateChannel(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method

.method public lastPageOfViewPager(Z)V
    .locals 0

    return-void
.end method

.method public onApplicationRootBackPressed()V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->finish()V

    return-void
.end method

.method public onCancelTourViewClick()V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->finish()V

    return-void
.end method

.method public onUnitCreated()V
    .locals 6

    .line 50
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 51
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v1, Lcab/snapp/passenger/units/tour/d;

    const-string v2, "TITLE ONE"

    invoke-direct {v1, v2}, Lcab/snapp/passenger/units/tour/d;-><init>(Ljava/lang/String;)V

    const v2, 0x7f0d0065

    .line 58
    invoke-virtual {v1, v2}, Lcab/snapp/passenger/units/tour/d;->setLayoutResId(I)V

    .line 59
    new-instance v2, Lcab/snapp/passenger/units/tour/d;

    const-string v3, "TITLE TWO"

    invoke-direct {v2, v3}, Lcab/snapp/passenger/units/tour/d;-><init>(Ljava/lang/String;)V

    const v3, 0x7f0d0066

    .line 60
    invoke-virtual {v2, v3}, Lcab/snapp/passenger/units/tour/d;->setLayoutResId(I)V

    .line 61
    new-instance v3, Lcab/snapp/passenger/units/tour/d;

    const-string v4, "TITLE THREE"

    invoke-direct {v3, v4}, Lcab/snapp/passenger/units/tour/d;-><init>(Ljava/lang/String;)V

    const v4, 0x7f0d0067

    .line 62
    invoke-virtual {v3, v4}, Lcab/snapp/passenger/units/tour/d;->setLayoutResId(I)V

    .line 65
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_1

    .line 67
    invoke-virtual {p0, v0, v1, v2, v3}, Lcab/snapp/passenger/units/tour/b;->addItemsAsRtl(Ljava/util/ArrayList;Lcab/snapp/passenger/units/tour/d;Lcab/snapp/passenger/units/tour/d;Lcab/snapp/passenger/units/tour/d;)V

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0, v0, v1, v2, v3}, Lcab/snapp/passenger/units/tour/b;->addItemsAsLtr(Ljava/util/ArrayList;Lcab/snapp/passenger/units/tour/d;Lcab/snapp/passenger/units/tour/d;Lcab/snapp/passenger/units/tour/d;)V

    .line 74
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 76
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/tour/g;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v2

    invoke-virtual {v2}, Lcab/snapp/arch/protocol/BaseController;->getOvertheMapNavigationController()Landroidx/navigation/NavController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcab/snapp/passenger/units/tour/g;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    check-cast v1, Lcab/snapp/passenger/units/tour/e;

    invoke-virtual {v1, p0, v0}, Lcab/snapp/passenger/units/tour/e;->onInitialize(Lcab/snapp/passenger/units/tour/b;Ljava/util/ArrayList;)V

    .line 81
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/tour/b;)V

    .line 83
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/b;->b:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public onUnitResume()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 95
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/e;

    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/units/tour/e;->onTourUnitIsInForeground(Landroid/app/Activity;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/activities/root/RootActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/activities/root/RootActivity;->setShouldHandleBack(Z)V

    .line 105
    :cond_1
    iget-object v0, p0, Lcab/snapp/passenger/units/tour/b;->a:Lcab/snapp/passenger/f/o;

    invoke-virtual {v0}, Lcab/snapp/passenger/f/o;->cancelAll()V

    return-void
.end method

.method public requestNextPage()V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcab/snapp/passenger/f/g;->getSavedLocale()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/tour/e;->displayPreviousPage()V

    return-void

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcab/snapp/passenger/units/tour/b;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/tour/e;

    invoke-virtual {v0}, Lcab/snapp/passenger/units/tour/e;->displayNextPage()V

    return-void
.end method
