.class public Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;
.super Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;
.source "OrderViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;


# instance fields
.field public icons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/payments/checkout/model/LoadableIconViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;",
            ">;"
        }
    .end annotation
.end field

.field public final order:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;

.field public titles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;)V
    .locals 9
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v0, 0x7f0d0641

    .line 37
    invoke-direct {p0, v0}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    const v0, 0x7f0a14b6    # 1.83541E38f

    .line 38
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->id:I

    const-string v0, "order must not be null"

    .line 39
    invoke-static {p1, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->order:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;

    .line 41
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;->titles:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;->titles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->titles:Ljava/util/List;

    .line 44
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;->titles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    .line 47
    sget-object v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;->TITLE:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;

    iget-object v3, v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->base:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;

    invoke-virtual {v2, v3}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderingHintType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f040452

    goto :goto_1

    :cond_0
    const v2, 0x7f040434

    .line 49
    :goto_1
    iget-object v3, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->titles:Ljava/util/List;

    new-instance v4, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-direct {v4, v1, v2}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;->icons:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;->icons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->icons:Ljava/util/List;

    .line 56
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;->icons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;

    .line 57
    iget-object v2, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->icons:Ljava/util/List;

    new-instance v3, Lcom/ebay/payments/checkout/model/LoadableIconViewModel;

    invoke-direct {v3, v1}, Lcom/ebay/payments/checkout/model/LoadableIconViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIcon;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 60
    :cond_2
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;->items:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->items:Ljava/util/List;

    .line 63
    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/payment/Order;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;

    .line 64
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->items:Ljava/util/List;

    new-instance v8, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    const/4 v3, 0x0

    const v4, 0x7f040434

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

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

.method public onBind(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->titles:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->titles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    .line 73
    invoke-virtual {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->onBind(Landroid/content/Context;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->icons:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->icons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/payments/checkout/model/LoadableIconViewModel;

    .line 77
    invoke-virtual {v1, p1}, Lcom/ebay/payments/checkout/model/LoadableIconViewModel;->onBind(Landroid/content/Context;)V

    goto :goto_1

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->items:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/OrderViewModel;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    .line 81
    invoke-virtual {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->onBind(Landroid/content/Context;)V

    goto :goto_2

    :cond_2
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
