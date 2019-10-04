.class public Lcab/snapp/passenger/units/box_options/a;
.super Lcab/snapp/arch/protocol/BaseInteractor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcab/snapp/arch/protocol/BaseInteractor<",
        "Lcab/snapp/passenger/units/box_options/d;",
        "Lcab/snapp/passenger/units/box_options/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/c/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcab/snapp/passenger/f/b/b/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcab/snapp/arch/protocol/BaseInteractor;-><init>()V

    return-void
.end method


# virtual methods
.method public onUnitCreated()V
    .locals 2

    .line 30
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitCreated()V

    .line 31
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcab/snapp/passenger/BaseApplication;->get(Landroid/content/Context;)Lcab/snapp/passenger/BaseApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcab/snapp/passenger/BaseApplication;->getDataManagerComponent()Lcab/snapp/passenger/e/a/c;

    move-result-object v0

    invoke-interface {v0, p0}, Lcab/snapp/passenger/e/a/c;->inject(Lcab/snapp/passenger/units/box_options/a;)V

    .line 36
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/a;->b:Lcab/snapp/passenger/f/b/b/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/f/b/b/c;->reportScreenName(Ljava/lang/String;)V

    return-void
.end method

.method public onUnitResume()V
    .locals 3

    .line 43
    invoke-super {p0}, Lcab/snapp/arch/protocol/BaseInteractor;->onUnitResume()V

    .line 44
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    new-instance v1, Lcab/snapp/passenger/data/models/BoxOptions;

    invoke-direct {v1}, Lcab/snapp/passenger/data/models/BoxOptions;-><init>()V

    invoke-virtual {v0, v1}, Lcab/snapp/passenger/c/g;->setBoxOptions(Lcab/snapp/passenger/data/models/BoxOptions;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcab/snapp/passenger/units/box_options/a;->getPresenter()Lcab/snapp/arch/protocol/BasePresenter;

    move-result-object v0

    check-cast v0, Lcab/snapp/passenger/units/box_options/c;

    iget-object v1, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v1}, Lcab/snapp/passenger/c/g;->getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;

    move-result-object v1

    iget-object v2, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v2}, Lcab/snapp/passenger/c/g;->getDestinationFormattedDetailsAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcab/snapp/passenger/units/box_options/c;->onInitialize(Lcab/snapp/passenger/data/models/BoxOptions;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateAddress(Ljava/lang/String;)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data/models/BoxOptions;->setAddress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateCashByRecipient(Z)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data/models/BoxOptions;->setPaidByRecipient(Z)V

    :cond_0
    return-void
.end method

.method public updateDescription(Ljava/lang/String;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data/models/BoxOptions;->setDescription(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateFullName(Ljava/lang/String;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data/models/BoxOptions;->setFullName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateMobile(Ljava/lang/String;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcab/snapp/passenger/units/box_options/a;->a:Lcab/snapp/passenger/c/g;

    invoke-virtual {v0}, Lcab/snapp/passenger/c/g;->getBoxOptions()Lcab/snapp/passenger/data/models/BoxOptions;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcab/snapp/passenger/data/models/BoxOptions;->setPhoneNumber(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
