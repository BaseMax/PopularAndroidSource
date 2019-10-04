.class public abstract Lcab/snapp/arch/protocol/BaseInteractor;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcab/snapp/arch/protocol/BaseRouter;",
        "P:",
        "Lcab/snapp/arch/protocol/BasePresenter;",
        ">",
        "Landroidx/lifecycle/ViewModel;"
    }
.end annotation


# instance fields
.field protected arguments:Landroid/os/Bundle;

.field protected compositeDisposable:Lio/reactivex/b/b;

.field protected controller:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcab/snapp/arch/protocol/BaseController;",
            ">;"
        }
    .end annotation
.end field

.field protected presenter:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "TP;>;"
        }
    .end annotation
.end field

.field protected router:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    return-void
.end method

.method private clearAll()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->compositeDisposable:Lio/reactivex/b/b;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lio/reactivex/b/b;->clear()V

    :cond_0
    return-void
.end method

.method private disposeAll()V
    .locals 1

    .line 146
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->compositeDisposable:Lio/reactivex/b/b;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lio/reactivex/b/b;->dispose()V

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->compositeDisposable:Lio/reactivex/b/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public addDisposable(Lio/reactivex/b/c;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->compositeDisposable:Lio/reactivex/b/b;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lio/reactivex/b/b;

    invoke-direct {v0}, Lio/reactivex/b/b;-><init>()V

    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->compositeDisposable:Lio/reactivex/b/b;

    .line 141
    :cond_0
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->compositeDisposable:Lio/reactivex/b/b;

    invoke-virtual {v0, p1}, Lio/reactivex/b/b;->add(Lio/reactivex/b/c;)Z

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->getController()Lcab/snapp/arch/protocol/BaseController;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArguments()Landroid/os/Bundle;
    .locals 1

    .line 175
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->arguments:Landroid/os/Bundle;

    return-object v0
.end method

.method public getController()Lcab/snapp/arch/protocol/BaseController;
    .locals 1

    .line 56
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->controller:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseController;

    return-object v0
.end method

.method public getNavigationController()Landroidx/navigation/NavController;
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseArchActivity;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->presenter:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BasePresenter;

    return-object v0
.end method

.method public getRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->router:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseRouter;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onApplicationRootBackPressed()V
    .locals 0

    return-void
.end method

.method public onCleared()V
    .locals 0

    .line 169
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 170
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onDestroy()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->disposeAll()V

    return-void
.end method

.method public onReady()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->compositeDisposable:Lio/reactivex/b/b;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lio/reactivex/b/b;

    invoke-direct {v0}, Lio/reactivex/b/b;-><init>()V

    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->compositeDisposable:Lio/reactivex/b/b;

    :cond_0
    return-void
.end method

.method public onUnitCreated()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->compositeDisposable:Lio/reactivex/b/b;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lio/reactivex/b/b;

    invoke-direct {v0}, Lio/reactivex/b/b;-><init>()V

    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->compositeDisposable:Lio/reactivex/b/b;

    :cond_0
    return-void
.end method

.method public onUnitPause()V
    .locals 0

    return-void
.end method

.method public onUnitResume()V
    .locals 0

    return-void
.end method

.method public final onUnitStop()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->disposeAll()V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcab/snapp/arch/protocol/BaseInteractor;->arguments:Landroid/os/Bundle;

    return-void
.end method

.method public setController(Lcab/snapp/arch/protocol/BaseController;)V
    .locals 1

    .line 61
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->controller:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)V"
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->presenter:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public setRouter(Lcab/snapp/arch/protocol/BaseRouter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseInteractor;->router:Ljava/lang/ref/SoftReference;

    return-void
.end method
