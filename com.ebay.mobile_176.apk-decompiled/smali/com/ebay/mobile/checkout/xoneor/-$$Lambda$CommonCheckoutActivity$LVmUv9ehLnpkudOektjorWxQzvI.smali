.class public final synthetic Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CommonCheckoutActivity$LVmUv9ehLnpkudOektjorWxQzvI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;

.field private final synthetic f$1:Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;


# direct methods
.method public synthetic constructor <init>(Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CommonCheckoutActivity$LVmUv9ehLnpkudOektjorWxQzvI;->f$0:Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;

    iput-object p2, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CommonCheckoutActivity$LVmUv9ehLnpkudOektjorWxQzvI;->f$1:Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CommonCheckoutActivity$LVmUv9ehLnpkudOektjorWxQzvI;->f$0:Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;

    iget-object v1, p0, Lcom/ebay/mobile/checkout/xoneor/-$$Lambda$CommonCheckoutActivity$LVmUv9ehLnpkudOektjorWxQzvI;->f$1:Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;

    invoke-static {v0, v1, p1}, Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;->lambda$renderSurvey$0(Lcom/ebay/mobile/checkout/xoneor/CommonCheckoutActivity;Lcom/ebay/nautilus/domain/data/experience/checkout/survey/SurveyModule;Landroid/view/View;)V

    return-void
.end method
