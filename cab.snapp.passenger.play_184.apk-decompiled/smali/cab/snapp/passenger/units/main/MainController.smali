.class public Lcab/snapp/passenger/units/main/MainController;
.super Lcab/snapp/arch/protocol/BaseController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseController<",
        "Lcab/snapp/passenger/units/main/b;",
        "Lcab/snapp/passenger/units/main/d;",
        "Lcab/snapp/passenger/units/main/MainView;",
        "Lcab/snapp/passenger/units/main/f;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/c/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseController;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic buildPresenter()Lcab/snapp/arch/protocol/BasePresenter;
    .locals 1

    .line 1087
    new-instance v0, Lcab/snapp/passenger/units/main/d;

    invoke-direct {v0}, Lcab/snapp/passenger/units/main/d;-><init>()V

    return-object v0
.end method

.method public synthetic buildRouter()Lcab/snapp/arch/protocol/BaseRouter;
    .locals 1

    .line 2081
    new-instance v0, Lcab/snapp/passenger/units/main/f;

    invoke-direct {v0}, Lcab/snapp/passenger/units/main/f;-><init>()V

    return-object v0
.end method

.method public getInteractorClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcab/snapp/passenger/units/main/b;",
            ">;"
        }
    .end annotation

    .line 93
    const-class v0, Lcab/snapp/passenger/units/main/b;

    return-object v0
.end method

.method public getLayout()I
    .locals 1

    const v0, 0x7f0d00b5

    return v0
.end method

.method public handleBack()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 36
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/main/MainController;)V

    .line 37
    iget-object v0, p0, Lcab/snapp/passenger/units/main/MainController;->a:Lcab/snapp/passenger/c/b;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/b;->getConfig()Lcab/snapp/passenger/data_access_layer/network/responses/ConfigResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcab/snapp/passenger/units/main/MainController;->a:Lcab/snapp/passenger/c/b;

    .line 40
    invoke-virtual {v1}, Lcab/snapp/passenger/c/b;->getMapType()I

    move-result v1

    iget-object v2, p0, Lcab/snapp/passenger/units/main/MainController;->a:Lcab/snapp/passenger/c/b;

    .line 41
    invoke-virtual {v2}, Lcab/snapp/passenger/c/b;->getMapBoxToken()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcab/snapp/passenger/units/main/MainController;->a:Lcab/snapp/passenger/c/b;

    .line 42
    invoke-virtual {v3}, Lcab/snapp/passenger/c/b;->getMapBoxStyleUrl()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-static {v0, v1, v2, v3}, Lcab/snapp/passenger/f/k;->initMap(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcab/snapp/arch/protocol/BaseController;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttached()V
    .locals 0

    return-void
.end method

.method public onViewDetached()V
    .locals 0

    return-void
.end method
