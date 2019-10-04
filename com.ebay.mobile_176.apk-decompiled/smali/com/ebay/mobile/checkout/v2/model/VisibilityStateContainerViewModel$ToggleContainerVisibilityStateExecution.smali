.class public final Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel$ToggleContainerVisibilityStateExecution;
.super Ljava/lang/Object;
.source "VisibilityStateContainerViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/ComponentExecution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ToggleContainerVisibilityStateExecution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ebay/nautilus/shell/uxcomponents/ComponentExecution<",
        "Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/ebay/nautilus/shell/uxcomponents/ComponentEvent;)V
    .locals 2
    .param p1    # Lcom/ebay/nautilus/shell/uxcomponents/ComponentEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/shell/uxcomponents/ComponentEvent<",
            "Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;",
            ">;)V"
        }
    .end annotation

    .line 204
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/ComponentEvent;->getViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;

    .line 206
    iget-object v0, p1, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->visibility:Landroidx/databinding/ObservableInt;

    invoke-virtual {v0}, Landroidx/databinding/ObservableInt;->get()I

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->visibility:Landroidx/databinding/ObservableInt;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/databinding/ObservableInt;->set(I)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object p1, p1, Lcom/ebay/mobile/checkout/v2/model/VisibilityStateContainerViewModel;->visibility:Landroidx/databinding/ObservableInt;

    invoke-virtual {p1, v1}, Landroidx/databinding/ObservableInt;->set(I)V

    :goto_0
    return-void
.end method
