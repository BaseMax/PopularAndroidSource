.class public Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;
.super Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;
.source "CallToActionViewModel.java"

# interfaces
.implements Lcom/ebay/payments/experience/PaymentsAction;


# instance fields
.field private componentOffsets:Landroid/graphics/Rect;

.field protected final cta:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;


# direct methods
.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;ILandroid/graphics/Rect;)V
    .locals 0
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0, p1, p3}, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;Landroid/graphics/Rect;)V

    .line 41
    iput p2, p0, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;->layoutId:I

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;Landroid/graphics/Rect;)V
    .locals 2
    .param p1    # Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 23
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToActionType;->PRIMARY:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToActionType;

    iget-object v1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->type:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToActionType;

    if-ne v0, v1, :cond_0

    const v0, 0x7f0d0635

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0634

    :goto_0
    invoke-direct {p0, v0}, Lcom/ebay/payments/checkout/model/BaseCheckoutViewModel;-><init>(I)V

    .line 26
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;->cta:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    .line 27
    iget-object v0, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    iget-object p1, p1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->UNKNOWN:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    invoke-virtual {p1}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->name()Ljava/lang/String;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;->tag:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;->componentOffsets:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getAccessibilityText()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;->cta:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->accessibilityText:Ljava/lang/String;

    return-object v0
.end method

.method public getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;->cta:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->action:Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    return-object v0
.end method

.method public getComponentOffsets()Landroid/graphics/Rect;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;->componentOffsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/CallToActionViewModel;->cta:Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;

    iget-object v0, v0, Lcom/ebay/nautilus/domain/data/experience/type/base/CallToAction;->text:Ljava/lang/String;

    return-object v0
.end method
