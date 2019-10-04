.class public Lcom/ebay/mobile/checkout/v2/model/PaymentMethodOptionViewModel;
.super Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;
.source "PaymentMethodOptionViewModel.java"

# interfaces
.implements Lcom/ebay/payments/experience/PaymentsAction;


# static fields
.field private static namesShowChevron:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final showDivider:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget-object v0, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->GET_PAYMENT_INSTRUMENT:Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;

    invoke-virtual {v0}, Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/ActionEnum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodOptionViewModel;->namesShowChevron:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;Z)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Lcom/ebay/mobile/checkout/v2/model/SelectableRenderSummaryViewModel;-><init>(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/SelectableRenderSummary;)V

    const v0, 0x7f0d0646

    .line 22
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodOptionViewModel;->layoutId:I

    const v0, 0x7f0a14b7

    .line 23
    iput v0, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodOptionViewModel;->id:I

    .line 24
    invoke-static {p1}, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodViewModel;->getTag(Lcom/ebay/nautilus/domain/data/experience/checkout/v2/common/RenderSummary;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodOptionViewModel;->tag:Ljava/lang/Object;

    .line 25
    iput-boolean p2, p0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodOptionViewModel;->showDivider:Z

    return-void
.end method


# virtual methods
.method public shouldShowChevron()Z
    .locals 2

    .line 34
    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodOptionViewModel;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodOptionViewModel;->namesShowChevron:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/ebay/mobile/checkout/v2/model/PaymentMethodOptionViewModel;->getAction()Lcom/ebay/nautilus/domain/data/experience/type/base/Action;

    move-result-object v1

    iget-object v1, v1, Lcom/ebay/nautilus/domain/data/experience/type/base/Action;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
