.class public Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;
.super Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;
.source "ShippingAddressViewModel.java"


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;I)V
    .locals 6
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const v1, 0x7f0d0650

    const/4 v3, 0x0

    const v4, 0x7f04043a

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 18
    invoke-direct/range {v0 .. v5}, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;III)V

    const v0, 0x7f0a14bb

    .line 20
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;->id:I

    .line 21
    iput p2, p0, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;->cellCount:I

    .line 23
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;->accessibilityText:Ljava/lang/String;

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;->accessibilityText:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 24
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;->accessibilityText:Ljava/lang/String;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;->addressCellAccessibilityText:Ljava/lang/String;

    .line 28
    :cond_0
    iget-object p2, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;->primary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    if-eqz p2, :cond_1

    .line 30
    new-instance p2, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    const v0, 0x7f0d0630

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;->primary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    const v2, 0x7f04043a

    invoke-direct {p2, v0, v1, v2}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;I)V

    .line 33
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;->secondaryTextAccessibilityForRadioButtonTalkBack:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;->secondaryTextAccessibilityForRadioButtonTalkBack:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;->primary:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/LoadableIconAndText;->text:Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/type/base/TextualDisplay;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;->secondary:Ljava/util/List;

    invoke-interface {p1, v2, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    :cond_1
    return-void
.end method


# virtual methods
.method protected getSecondaryLayoutId()I
    .locals 1

    const v0, 0x7f0d063b

    return v0
.end method

.method public onBind(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 45
    invoke-super {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;->onBind(Landroid/content/Context;)V

    .line 47
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;->primary:Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->onBind(Landroid/content/Context;)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;->secondary:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;->secondary:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    .line 52
    invoke-virtual {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->onBind(Landroid/content/Context;)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;->tertiary:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/ShippingAddressViewModel;->tertiary:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;

    .line 56
    invoke-virtual {v1, p1}, Lcom/ebay/mobile/checkout/v2/model/LoadableIconAndTextViewModel;->onBind(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    return-void
.end method
