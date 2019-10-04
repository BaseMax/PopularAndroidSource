.class Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity$1;
.super Landroid/text/style/ClickableSpan;
.source "CheckoutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->renderUserAgreements(Lcom/ebay/nautilus/domain/data/experience/checkout/summary/SummaryModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;)V
    .locals 0

    .line 2589
    iput-object p1, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2593
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;

    invoke-static {v0}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->access$000(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;)Lcom/ebay/common/util/ClickTimer;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ebay/common/util/ClickTimer;->enoughTimeHasElapsedBetweenClicks(JZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2595
    :cond_0
    iget-object v0, p0, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity$1;->this$0:Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;

    const v1, 0x7f0a123f

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f0a123e

    .line 2596
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;

    const v3, 0x7f0a1240

    .line 2597
    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2595
    invoke-static {v0, v1, v2, p1}, Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;->access$100(Lcom/ebay/mobile/checkout/xoneor/CheckoutActivity;Ljava/lang/Object;Lcom/ebay/nautilus/domain/data/experience/checkout/XoCallToAction;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    const/4 v0, 0x0

    .line 2603
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
