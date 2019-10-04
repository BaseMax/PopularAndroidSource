.class public Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;
.super Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;
.source "OverlayViewModel.java"

# interfaces
.implements Lcom/ebay/mobile/common/BindableDialogFragment$BindableDialogViewModel;
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cancelAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

.field public cancelButtonText:Ljava/lang/String;

.field public summaryViewModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public titleViewModel:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel$1;

    invoke-direct {v0}, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel$1;-><init>()V

    sput-object v0, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrderSuccess;)V
    .locals 3
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrderSuccess;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Lcom/ebay/nautilus/domain/datamapping/BaseDataMapped;-><init>()V

    const-string v0, "SplitOrderSuccess must not be null."

    .line 50
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrderSuccess;->summaryInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrderSuccess;->summaryInfo:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    invoke-direct {v0, v1}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->summaryViewModel:Ljava/util/List;

    .line 54
    :cond_0
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrderSuccess;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrderSuccess;->title:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->titleViewModel:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    .line 57
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->titleViewModel:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    const v1, 0x7f0a131d

    iput v1, v0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->id:I

    .line 60
    :cond_1
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrderSuccess;->actions:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/SplitOrderSuccess;->actions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    .line 64
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    invoke-static {v1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->safeValueOf(Ljava/lang/String;)Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    move-result-object v1

    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->CANCEL:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    if-ne v1, v2, :cond_2

    .line 66
    iget-object v1, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iput-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->cancelAction:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    .line 67
    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->cancelButtonText:Ljava/lang/String;

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public synthetic getComponentOffsets()Landroid/graphics/Rect;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p0}, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel$-CC;->$default$getComponentOffsets(Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    const v0, 0x7f0d0642

    return v0
.end method

.method public hasCancelButton()Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->cancelButtonText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->summaryViewModel:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->summaryViewModel:Ljava/util/List;

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->summaryViewModel:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->onBind(Landroid/content/Context;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->titleViewModel:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OverlayViewModel;->titleViewModel:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->onBind(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method public synthetic onBind(Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0, p1, p2}, Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem$-CC;->$default$onBind(Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;Landroid/content/Context;Lcom/ebay/nautilus/shell/uxcomponents/adapters/ComponentBindingInfo;)V

    return-void
.end method

.method public updateModel(Landroid/view/View;)V
    .locals 0

    return-void
.end method
