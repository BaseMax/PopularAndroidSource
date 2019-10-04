.class public abstract Lcab/snapp/arch/protocol/BaseArchActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcab/snapp/arch/protocol/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->b:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized addBackPressedListener(Lcab/snapp/arch/protocol/a;)V
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getNavigationController()Landroidx/navigation/NavController;
    .locals 1

    const v0, 0x7f0a008b

    .line 96
    invoke-static {p0, v0}, Landroidx/navigation/Navigation;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v0

    return-object v0
.end method

.method public getOverTheMapNavController()Landroidx/navigation/NavController;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isVisible()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->b:Z

    return v0
.end method

.method public declared-synchronized onBackPressed()V
    .locals 2

    monitor-enter p0

    .line 69
    :try_start_0
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcab/snapp/arch/protocol/a;

    .line 75
    invoke-interface {v1}, Lcab/snapp/arch/protocol/a;->onApplicationRootBackPressed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseArchActivity;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcab/snapp/arch/protocol/BaseArchActivity;->getNavigationController()Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 85
    :cond_2
    :try_start_2
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 90
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->b:Z

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->a:Ljava/util/List;

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 35
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->b:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 21
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x1

    .line 22
    iput-boolean v0, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->b:Z

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 28
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->b:Z

    return-void
.end method

.method public removeAllBackPressListener()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public declared-synchronized removeBackPressedListener(Lcab/snapp/arch/protocol/a;)V
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcab/snapp/arch/protocol/BaseArchActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
