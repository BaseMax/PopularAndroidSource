.class public Lcom/ebay/mobile/checkout/v2/model/CallToActionRenderSummaryViewModel;
.super Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;
.source "CallToActionRenderSummaryViewModel.java"


# instance fields
.field public defaultCallToAction:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;


# direct methods
.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZLcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;)V
    .locals 0
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 29
    invoke-direct/range {p0 .. p7}, Lcom/ebay/mobile/checkout/v2/model/RenderSummaryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZ)V

    .line 32
    iput-object p8, p0, Lcom/ebay/mobile/checkout/v2/model/CallToActionRenderSummaryViewModel;->defaultCallToAction:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    const p1, 0x7f0a0b5a

    .line 33
    iput p1, p0, Lcom/ebay/mobile/checkout/v2/model/CallToActionRenderSummaryViewModel;->id:I

    return-void
.end method

.method public constructor <init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;)V
    .locals 9
    .param p2    # Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v8, p3

    .line 20
    invoke-direct/range {v0 .. v8}, Lcom/ebay/mobile/checkout/v2/model/CallToActionRenderSummaryViewModel;-><init>(ILcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;IIIZZLcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;)V

    return-void
.end method


# virtual methods
.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/CallToActionRenderSummaryViewModel;->defaultCallToAction:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0
.end method

.method public getCallToActionButtonText()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/CallToActionRenderSummaryViewModel;->defaultCallToAction:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/CallToActionRenderSummaryViewModel;->defaultCallToAction:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->text:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
