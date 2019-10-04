.class public Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;
.super Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;
.source "VisibilityStateContainerViewModel.java"

# interfaces
.implements Lcom/ebay/mobile/checkout/v2/model/ContainerVisibilityStateHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$ToggleContainerVisibilityStateExecution;,
        Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$VisibilityStateContainerViewModelBuilder;
    }
.end annotation


# static fields
.field public static final STATE_VISIBILITY_STATE_CONTAINER_VIEW_MODEL:Ljava/lang/String; = "state_container_visibility"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TOGGLE_VISIBILITY_STATE_EXECUTION:Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$ToggleContainerVisibilityStateExecution;


# instance fields
.field public final accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

.field private final tag:Ljava/lang/String;

.field public final visibility:Landroidx/databinding/ObservableInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$ToggleContainerVisibilityStateExecution;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$ToggleContainerVisibilityStateExecution;-><init>()V

    sput-object v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->TOGGLE_VISIBILITY_STATE_EXECUTION:Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$ToggleContainerVisibilityStateExecution;

    return-void
.end method

.method public constructor <init>(ILandroidx/core/view/AccessibilityDelegateCompat;Ljava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/core/view/AccessibilityDelegateCompat;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            ">;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;",
            "Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;",
            "Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;",
            "Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;",
            "I)V"
        }
    .end annotation

    move-object v9, p0

    const v1, 0x7f0d065c

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p9

    .line 53
    invoke-direct/range {v0 .. v8}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;-><init>(ILjava/lang/String;Ljava/util/List;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/HeaderViewModel;Lcom/ebay/nautilus/shell/uxcomponents/tracking/Identifiers;Lcom/ebay/nautilus/shell/uxcomponents/expansion/BaseExpandInfo;Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;I)V

    .line 42
    new-instance v0, Landroidx/databinding/ObservableInt;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroidx/databinding/ObservableInt;-><init>(I)V

    iput-object v0, v9, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->visibility:Landroidx/databinding/ObservableInt;

    .line 55
    iget-object v0, v9, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->visibility:Landroidx/databinding/ObservableInt;

    move v1, p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    move-object v0, p3

    .line 56
    iput-object v0, v9, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->tag:Ljava/lang/String;

    move-object v0, p2

    .line 57
    iput-object v0, v9, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->accessibilityDelegate:Landroidx/core/view/AccessibilityDelegateCompat;

    return-void
.end method

.method public static setContainerAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V
    .locals 2
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroidx/core/view/AccessibilityDelegateCompat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/databinding/BindingAdapter;
        value = {
            "uxContainerAccessibilityDelegate"
        }
    .end annotation

    const-string v0, "111"

    .line 233
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0a14b8

    .line 235
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 237
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExecution()Lcom/ebay/nautilus/shell/uxcomponents/ComponentExecution;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ebay/nautilus/shell/uxcomponents/ComponentExecution<",
            "Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;",
            ">;"
        }
    .end annotation

    .line 181
    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->TOGGLE_VISIBILITY_STATE_EXECUTION:Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$ToggleContainerVisibilityStateExecution;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->tag:Ljava/lang/String;

    return-object v0
.end method

.method protected onRestoreState(Landroid/os/Bundle;)V
    .locals 2

    .line 116
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->onRestoreState(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->visibility:Landroidx/databinding/ObservableInt;

    const-string/jumbo v1, "state_container_visibility"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 2

    .line 109
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->onSaveState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "state_container_visibility"

    .line 110
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->visibility:Landroidx/databinding/ObservableInt;

    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public restoreVisibilityState(Landroid/os/Bundle;)V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->visibility:Landroidx/databinding/ObservableInt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "container_visibility_value_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->containerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/databinding/ObservableInt;->set(I)V

    return-void
.end method

.method public saveVisibilityState(Landroid/os/Bundle;)V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "container_visibility_value_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->containerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->visibility:Landroidx/databinding/ObservableInt;

    invoke-virtual {v1}, Landroidx/databinding/ObservableInt;->get()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public toggleVisibility()Z
    .locals 4

    .line 93
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->visibility:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->visibility:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, v3}, Landroidx/databinding/ObservableInt;->set(I)V

    return v1

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->visibility:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0, v2}, Landroidx/databinding/ObservableInt;->set(I)V

    return v1
.end method

.method public validateForm()Z
    .locals 5

    .line 68
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    .line 73
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    .line 75
    instance-of v3, v1, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 77
    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;

    invoke-virtual {v1}, Lcom/ebay/mobile/checkout/v2/model/CheckoutContainerViewModel;->validateForm()Z

    move-result v1

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 81
    :cond_2
    instance-of v3, v1, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;

    if-eqz v3, :cond_1

    .line 83
    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;

    invoke-virtual {p0, v1}, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->validateField(Lcom/ebay/mobile/checkout/v2/model/FieldViewModel;)Z

    move-result v1

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_3
    return v2
.end method
