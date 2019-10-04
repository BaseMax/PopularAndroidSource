.class public abstract Lcab/snapp/arch/protocol/BaseRouter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Lcab/snapp/arch/protocol/BaseInteractor;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected fragmentManager:Landroidx/fragment/app/FragmentManager;

.field protected interactor:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "TI;>;"
        }
    .end annotation
.end field

.field protected navigationController:Landroidx/navigation/NavController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1

    .line 39
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseRouter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-object v0
.end method

.method public getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TI;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseRouter;->interactor:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseRouter;->interactor:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseInteractor;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNavigationController()Landroidx/navigation/NavController;
    .locals 1

    .line 49
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseRouter;->navigationController:Landroidx/navigation/NavController;

    return-object v0
.end method

.method public isActivityVisible()Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseRouter;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseRouter;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseInteractor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseRouter;->getInteractor()Lcab/snapp/arch/protocol/BaseInteractor;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseInteractor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcab/snapp/arch/protocol/BaseArchActivity;

    invoke-virtual {v0}, Lcab/snapp/arch/protocol/BaseArchActivity;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadChildController(ILcab/snapp/arch/protocol/BaseController;)Landroidx/fragment/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, p1, p2, v0}, Lcab/snapp/arch/protocol/BaseRouter;->loadChildController(ILcab/snapp/arch/protocol/BaseController;Z)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public loadChildController(ILcab/snapp/arch/protocol/BaseController;Z)Landroidx/fragment/app/FragmentTransaction;
    .locals 2

    .line 93
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseRouter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v0, :cond_3

    .line 97
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseRouter;->isActivityVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-eqz p3, :cond_1

    .line 108
    :try_start_0
    iget-object p3, p0, Lcab/snapp/arch/protocol/BaseRouter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    .line 109
    invoke-virtual {p3, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 110
    invoke-virtual {p1, v1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    goto :goto_0

    .line 115
    :cond_1
    iget-object p3, p0, Lcab/snapp/arch/protocol/BaseRouter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p3

    .line 116
    invoke-virtual {p3, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    :goto_0
    move-object v1, p1

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v1

    .line 95
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "fragment manager can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public navigateChildUp()Z
    .locals 2

    const/4 v0, 0x0

    .line 136
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseRouter;->isActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcab/snapp/arch/protocol/BaseRouter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcab/snapp/arch/protocol/BaseRouter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    .line 140
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public navigateTo(I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, p1, v0}, Lcab/snapp/arch/protocol/BaseRouter;->navigateTo(ILandroid/os/Bundle;)V

    return-void
.end method

.method public navigateTo(ILandroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-virtual {p0, p1, p2, v0, v0}, Lcab/snapp/arch/protocol/BaseRouter;->navigateTo(ILandroid/os/Bundle;Landroidx/navigation/Navigator$Extras;Landroidx/navigation/NavOptions;)V

    return-void
.end method

.method public navigateTo(ILandroid/os/Bundle;Landroidx/navigation/Navigator$Extras;Landroidx/navigation/NavOptions;)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseRouter;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseRouter;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseRouter;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p4, p3}, Landroidx/navigation/NavController;->navigate(ILandroid/os/Bundle;Landroidx/navigation/NavOptions;Landroidx/navigation/Navigator$Extras;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public navigateUp()V
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseRouter;->isActivityVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseRouter;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseRouter;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public setFragmentManager(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcab/snapp/arch/protocol/BaseRouter;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method public setInteractor(Lcab/snapp/arch/protocol/BaseInteractor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;)V"
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcab/snapp/arch/protocol/BaseRouter;->interactor:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public setNavigationController(Landroidx/navigation/NavController;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcab/snapp/arch/protocol/BaseRouter;->navigationController:Landroidx/navigation/NavController;

    return-void
.end method
