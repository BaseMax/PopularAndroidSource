.class public abstract Lcab/snapp/arch/protocol/BaseController;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/arch/protocol/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "TAR;TP;>;P:",
        "Lcab/snapp/arch/protocol/BasePresenter<",
        "TV;TI;>;V::",
        "Lcab/snapp/arch/protocol/BaseView<",
        "TP;>;AR:",
        "Lcab/snapp/arch/protocol/BaseRouter<",
        "TI;>;>",
        "Landroidx/fragment/app/Fragment;",
        "Lcab/snapp/arch/protocol/a;"
    }
.end annotation


# instance fields
.field protected interactor:Lcab/snapp/arch/protocol/BaseInteractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TI;"
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

.field protected router:Lcab/snapp/arch/protocol/BaseRouter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAR;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private setupInteractor()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    if-nez v0, :cond_0

    .line 145
    invoke-static {p0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getInteractorClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseInteractor;

    .line 146
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/arch/protocol/BaseInteractor;->setArguments(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {v0, p0}, Lcab/snapp/arch/protocol/BaseInteractor;->setController(Lcab/snapp/arch/protocol/BaseController;)V

    .line 148
    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    :cond_0
    return-void
.end method

.method private setupPresenter(Lcab/snapp/arch/protocol/BaseView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->presenter:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->presenter:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BasePresenter;

    goto :goto_1

    .line 119
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    .line 127
    :goto_1
    invoke-virtual {v0, p1}, Lcab/snapp/arch/protocol/BasePresenter;->setView(Lcab/snapp/arch/protocol/BaseView;)V

    .line 129
    iget-object v1, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {v1, v0}, Lcab/snapp/arch/protocol/BaseInteractor;->setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V

    .line 132
    iget-object v1, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-virtual {v0, v1}, Lcab/snapp/arch/protocol/BasePresenter;->setInteractor(Lcab/snapp/arch/protocol/BaseInteractor;)V

    .line 135
    :cond_2
    invoke-interface {p1, v0}, Lcab/snapp/arch/protocol/BaseView;->setPresenter(Lcab/snapp/arch/protocol/BasePresenter;)V

    .line 138
    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcab/snapp/arch/protocol/BaseController;->presenter:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method private setupRouter()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->router:Lcab/snapp/arch/protocol/BaseRouter;

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->buildRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/arch/protocol/BaseRouter;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    .line 81
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcab/snapp/arch/protocol/BaseRouter;->setNavigationController(Landroidx/navigation/NavController;)V

    .line 83
    iget-object v1, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-virtual {v0, v1}, Lcab/snapp/arch/protocol/BaseRouter;->setInteractor(Lcab/snapp/arch/protocol/BaseInteractor;)V

    .line 84
    iget-object v1, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-virtual {v1, v0}, Lcab/snapp/arch/protocol/BaseInteractor;->setRouter(Lcab/snapp/arch/protocol/BaseRouter;)V

    .line 86
    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->router:Lcab/snapp/arch/protocol/BaseRouter;

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method

.method protected abstract buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAR;"
        }
    .end annotation
.end method

.method public doRemoveFromBackPressed()V
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->removeFromBackPress()V

    .line 340
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getControllerInteractor()Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    return-object v0
.end method

.method public getControllerPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->presenter:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->presenter:Ljava/lang/ref/SoftReference;

    .line 242
    :cond_0
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->presenter:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BasePresenter;

    return-object v0
.end method

.method public getControllerRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAR;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->router:Lcab/snapp/arch/protocol/BaseRouter;

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->buildRouter()Lcab/snapp/arch/protocol/BaseRouter;

    move-result-object v0

    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->router:Lcab/snapp/arch/protocol/BaseRouter;

    .line 256
    :cond_0
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->router:Lcab/snapp/arch/protocol/BaseRouter;

    return-object v0
.end method

.method public getControllerView()Lcab/snapp/arch/protocol/BaseView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseView;

    return-object v0
.end method

.method public abstract getInteractorClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TI;>;"
        }
    .end annotation
.end method

.method protected abstract getLayout()I
.end method

.method public getNavigationController()Landroidx/navigation/NavController;
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseArchActivity;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base Activity must extend BaseArchActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOvertheMapNavigationController()Landroidx/navigation/NavController;
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseArchActivity;->getOverTheMapNavController()Landroidx/navigation/NavController;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Base Activity must extend BaseArchActivity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getParentController()Lcab/snapp/arch/protocol/BaseController;
    .locals 1

    .line 279
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/arch/protocol/BaseController;

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseController;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentInteractor()Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/arch/protocol/BaseController;

    if-eqz v0, :cond_0

    .line 269
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-static {v0}, Landroidx/lifecycle/ViewModelProviders;->of(Landroidx/fragment/app/Fragment;)Landroidx/lifecycle/ViewModelProvider;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcab/snapp/arch/protocol/BaseController;

    invoke-virtual {v1}, Lcab/snapp/arch/protocol/BaseController;->getInteractorClass()Ljava/lang/Class;

    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseInteractor;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleBack()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasParent()Z
    .locals 1

    .line 313
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 31
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;->setupInteractor()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 295
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 296
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, p1, p2, p3}, Lcab/snapp/arch/protocol/BaseInteractor;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onApplicationRootBackPressed()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseInteractor;->onApplicationRootBackPressed()V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 155
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->onViewAttached()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getLayout()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 225
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->presenter:Ljava/lang/ref/SoftReference;

    .line 227
    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->router:Lcab/snapp/arch/protocol/BaseRouter;

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 198
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 199
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitStop()V

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 0

    .line 208
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 209
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->onViewDetached()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 56
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 57
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 47
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 163
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->handleBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    invoke-virtual {v0, p0}, Lcab/snapp/arch/protocol/BaseArchActivity;->addBackPressedListener(Lcab/snapp/arch/protocol/a;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 185
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 186
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->handleBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    invoke-virtual {v0, p0}, Lcab/snapp/arch/protocol/BaseArchActivity;->removeBackPressedListener(Lcab/snapp/arch/protocol/a;)V

    :cond_0
    return-void
.end method

.method protected onViewAttached()V
    .locals 0

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;->setupInteractor()V

    .line 68
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;->setupRouter()V

    .line 69
    check-cast p1, Lcab/snapp/arch/protocol/BaseView;

    invoke-direct {p0, p1}, Lcab/snapp/arch/protocol/BaseController;->setupPresenter(Lcab/snapp/arch/protocol/BaseView;)V

    .line 70
    iget-object p1, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-virtual {p1}, Lcab/snapp/arch/protocol/BaseInteractor;->onReady()V

    .line 71
    iget-object p1, p0, Lcab/snapp/arch/protocol/BaseController;->interactor:Lcab/snapp/arch/protocol/BaseInteractor;

    invoke-virtual {p1}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 0

    return-void
.end method

.method public removeAllFromBackPress()V
    .locals 1

    .line 331
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseArchActivity;->removeAllBackPressListener()V

    :cond_0
    return-void
.end method

.method public removeFromBackPress()V
    .locals 1

    .line 323
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    if-eqz v0, :cond_0

    .line 325
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseController;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    invoke-virtual {v0, p0}, Lcab/snapp/arch/protocol/BaseArchActivity;->removeBackPressedListener(Lcab/snapp/arch/protocol/a;)V

    :cond_0
    return-void
.end method
