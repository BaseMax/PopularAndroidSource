.class public Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;
.super Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;
.source "LoadableIconAndTextListViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;
.implements Lcom/ebay/payments/experience/PaymentsAction;


# instance fields
.field public backgroundColor:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private componentOffsets:Landroid/graphics/Rect;

.field protected loadableIconAndTextViewModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;",
            ">;"
        }
    .end annotation
.end field

.field protected loadableIconAndTexts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;",
            ">;"
        }
    .end annotation
.end field

.field private thisIsPPC:Z


# direct methods
.method public constructor <init>(ILjava/util/List;IILandroid/graphics/Rect;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;",
            ">;II",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->thisIsPPC:Z

    const-string p1, "Footer must not be null."

    .line 40
    invoke-static {p2, p1}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->loadableIconAndTexts:Ljava/util/List;

    .line 41
    iput p4, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->backgroundColor:I

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->loadableIconAndTextViewModels:Ljava/util/List;

    .line 43
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    .line 45
    new-instance p4, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    const v0, 0x7f0d063b

    invoke-direct {p4, v0, p2, p3}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    .line 47
    iget-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->loadableIconAndTextViewModels:Ljava/util/List;

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 49
    :cond_0
    iput-object p5, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->componentOffsets:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(ILjava/util/List;ILjava/lang/String;)V
    .locals 5
    .param p1    # I
        .annotation build Landroidx/annotation/LayoutRes;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->thisIsPPC:Z

    const-string v0, "Footer must not be null."

    .line 56
    invoke-static {p2, v0}, Lcom/ebay/nautilus/kernel/util/ObjectUtil;->verifyNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->loadableIconAndTexts:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->loadableIconAndTextViewModels:Ljava/util/List;

    .line 60
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    const/4 v2, 0x0

    const-string v3, "payPalCreditDetails"

    .line 64
    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f0d063b

    if-eqz v3, :cond_1

    .line 66
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v3, p1, 0x1

    if-ne v2, v3, :cond_0

    .line 67
    new-instance v2, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-direct {v2, v4, v1, p3}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    goto :goto_1

    .line 70
    :cond_0
    new-instance v2, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-direct {v2, v4, v1, p3, p4}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v3, "payUponInvoiceDetails"

    .line 73
    invoke-virtual {v3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 75
    new-instance v2, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-direct {v2, v4, v1, p3, p4}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;ILjava/lang/String;)V

    .line 79
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->loadableIconAndTextViewModels:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 82
    :cond_3
    sget-object p1, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;->NO_OFFSETS:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->componentOffsets:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;",
            ">;)V"
        }
    .end annotation

    .line 92
    sget-object v5, Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;->NO_OFFSETS:Landroid/graphics/Rect;

    const v1, 0x7f0d063f

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;-><init>(ILjava/util/List;IILandroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const v0, 0x7f0d063f

    const/4 v1, 0x0

    .line 87
    invoke-direct {p0, v0, p1, v1, p2}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;-><init>(ILjava/util/List;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getComponentOffsets()Landroid/graphics/Rect;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->componentOffsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLoadableIconAndTextViewModels()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->loadableIconAndTextViewModels:Ljava/util/List;

    return-object v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->loadableIconAndTextViewModels:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextListViewModel;->loadableIconAndTextViewModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    .line 108
    invoke-virtual {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->onBind(Landroid/content/Context;)V

    goto :goto_0

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
