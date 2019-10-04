.class public Lcom/ebay/mobile/checkout/v2/model/HorizontalColumnsViewModel;
.super Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;
.source "HorizontalColumnsViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/adapters/BindingItem;


# instance fields
.field public first:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

.field public second:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

.field public third:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;


# direct methods
.method public varargs constructor <init>(I[Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    if-eqz p2, :cond_0

    .line 20
    array-length p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 22
    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/HorizontalColumnsViewModel;->first:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    const/4 p1, 0x1

    .line 23
    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/HorizontalColumnsViewModel;->second:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    const/4 p1, 0x2

    .line 24
    aget-object p1, p2, p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/HorizontalColumnsViewModel;->third:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 31
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/HorizontalColumnsViewModel;->first:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/HorizontalColumnsViewModel;->first:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->onBind(Landroid/content/Context;)V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/HorizontalColumnsViewModel;->second:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/HorizontalColumnsViewModel;->second:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->onBind(Landroid/content/Context;)V

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/HorizontalColumnsViewModel;->third:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/HorizontalColumnsViewModel;->third:Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;

    invoke-virtual {v0, p1}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;->onBind(Landroid/content/Context;)V

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
