.class public final synthetic Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$UserAgreementViewModel$N_KxATcbnzy1ivWWr8oUB3erFn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

.field private final synthetic f$1:Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$UserAgreementViewModel$N_KxATcbnzy1ivWWr8oUB3erFn0;->f$0:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$UserAgreementViewModel$N_KxATcbnzy1ivWWr8oUB3erFn0;->f$1:Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$UserAgreementViewModel$N_KxATcbnzy1ivWWr8oUB3erFn0;->f$0:Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/v2/model/-$$Lambda$UserAgreementViewModel$N_KxATcbnzy1ivWWr8oUB3erFn0;->f$1:Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;

    invoke-static {v0, v1, p1}, Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;->lambda$onModelClick$0(Lcom/ebay/nautilus/shell/uxcomponents/ItemClickListener;Lcom/ebay/mobile/checkout/v2/model/UserAgreementViewModel;Landroid/view/View;)V

    return-void
.end method
