.class public Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;
.super Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;
.source "ExpandableFooterContainerViewModel.java"

# interfaces
.implements Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel$ExpandableFooterContainerViewModelBuilder;
    }
.end annotation


# direct methods
.method protected constructor <init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;",
            "Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;",
            "Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;",
            "Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;",
            "I)V"
        }
    .end annotation

    .line 27
    invoke-direct/range {p0 .. p8}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;I)V

    return-void
.end method


# virtual methods
.method protected onRestoreState(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->onRestoreState(Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    instance-of v0, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    check-cast v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->onRestoreState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->onSaveState(Landroid/os/Bundle;)V

    .line 73
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    instance-of v0, v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    check-cast v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->onSaveState(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public restoreTextInputIfEmpty(Landroid/os/Bundle;)V
    .locals 3

    .line 96
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->restoreTextInputIfEmpty(Landroid/os/Bundle;)V

    .line 97
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    instance-of v0, v0, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    check-cast v0, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 100
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 104
    instance-of v2, v1, Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;

    if-eqz v2, :cond_0

    .line 105
    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;

    invoke-interface {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/TextInputStateHandler;->restoreTextInputIfEmpty(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public restoreVisibilityState(Landroid/os/Bundle;)V
    .locals 3

    .line 130
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 131
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 135
    instance-of v2, v1, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;

    if-eqz v2, :cond_0

    .line 136
    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;

    invoke-interface {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;->restoreVisibilityState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    instance-of v0, v0, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;

    if-eqz v0, :cond_2

    .line 140
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    check-cast v0, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;

    invoke-interface {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;->restoreVisibilityState(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public varargs saveTextInput(Landroid/os/Bundle;[Z)V
    .locals 1

    .line 88
    invoke-super {p0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->saveTextInput(Landroid/os/Bundle;[Z)V

    .line 89
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    instance-of v0, v0, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    check-cast v0, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    invoke-virtual {v0, p1, p2}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->saveTextInput(Landroid/os/Bundle;[Z)V

    :cond_0
    return-void
.end method

.method public saveVisibilityState(Landroid/os/Bundle;)V
    .locals 3

    .line 114
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 119
    instance-of v2, v1, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;

    if-eqz v2, :cond_0

    .line 120
    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;

    invoke-interface {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;->saveVisibilityState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    instance-of v0, v0, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    check-cast v0, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;

    invoke-interface {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;->saveVisibilityState(Landroid/os/Bundle;)V

    :cond_2
    return-void
.end method

.method public validateForm()Z
    .locals 5

    .line 38
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 39
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 43
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 45
    instance-of v4, v1, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    if-eqz v4, :cond_1

    .line 47
    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->validateForm()Z

    move-result v1

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    instance-of v0, v0, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    if-eqz v0, :cond_3

    .line 55
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    check-cast v0, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    invoke-virtual {v0}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->validateForm()Z

    move-result v0

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    goto :goto_1

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    instance-of v0, v0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->footerViewModel:Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    check-cast v0, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;

    invoke-virtual {p0, v0}, Lcom/ebay/mobile/checkout/v2/model/ExpandableFooterContainerViewModel;->validateField(Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;)Z

    move-result v0

    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    :goto_1
    const/4 v2, 0x0

    :cond_4
    return v2
.end method
