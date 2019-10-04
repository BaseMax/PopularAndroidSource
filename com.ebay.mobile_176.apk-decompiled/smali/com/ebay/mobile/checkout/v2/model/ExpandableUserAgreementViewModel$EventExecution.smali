.class public final Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel$EventExecution;
.super Ljava/lang/Object;
.source "ExpandableUserAgreementViewModel.java"

# interfaces
.implements Lcom/ebay/nautilus/shell/uxcomponents/ComponentExecution;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventExecution"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/ebay/nautilus/shell/uxcomponents/ComponentExecution<",
        "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/ebay/nautilus/shell/uxcomponents/ComponentEvent;)V
    .locals 1
    .param p1    # Lcom/ebay/nautilus/shell/uxcomponents/ComponentEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ebay/nautilus/shell/uxcomponents/ComponentEvent<",
            "Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;",
            ">;)V"
        }
    .end annotation

    .line 233
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/ComponentEvent;->getViewModel()Lcom/ebay/nautilus/shell/uxcomponents/viewmodel/ComponentViewModel;

    move-result-object p1

    check-cast p1, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;

    if-nez p1, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-static {p1}, Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;->access$100(Lcom/ebay/mobile/checkout/v2/model/ExpandableUserAgreementViewModel;)Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;

    move-result-object p1

    .line 238
    invoke-virtual {p1}, Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;->isExpanded()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ebay/nautilus/shell/uxcomponents/expansion/ExpandInfo;->setExpanded(Z)V

    return-void
.end method
