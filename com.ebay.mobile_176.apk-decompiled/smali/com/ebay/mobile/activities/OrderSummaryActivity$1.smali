.class Lcom/ebay/mobile/activities/OrderSummaryActivity$1;
.super Ljava/lang/Object;
.source "OrderSummaryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/mobile/activities/OrderSummaryActivity;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/mobile/activities/OrderSummaryActivity;

.field final synthetic val$row:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/ebay/mobile/activities/OrderSummaryActivity;Landroid/view/View;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity$1;->this$0:Lcom/ebay/mobile/activities/OrderSummaryActivity;

    iput-object p2, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity$1;->val$row:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 553
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ebay/mobile/util/Util;->hasNetwork(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 556
    :cond_0
    iget-object p1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity$1;->val$row:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    .line 557
    instance-of v0, p1, Lcom/ebay/common/model/OrderItemTransaction;

    if-eqz v0, :cond_2

    .line 559
    check-cast p1, Lcom/ebay/common/model/OrderItemTransaction;

    .line 560
    new-instance v0, Lcom/ebay/common/model/inventory/InventoryInfo;

    invoke-direct {v0}, Lcom/ebay/common/model/inventory/InventoryInfo;-><init>()V

    .line 562
    iget-object v1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity$1;->this$0:Lcom/ebay/mobile/activities/OrderSummaryActivity;

    invoke-static {v1}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->access$000(Lcom/ebay/mobile/activities/OrderSummaryActivity;)Lcom/ebay/common/model/inventory/LocationDetails;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 563
    new-instance v1, Lcom/ebay/common/model/inventory/StoreAvailability;

    iget-object v2, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity$1;->this$0:Lcom/ebay/mobile/activities/OrderSummaryActivity;

    invoke-static {v2}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->access$000(Lcom/ebay/mobile/activities/OrderSummaryActivity;)Lcom/ebay/common/model/inventory/LocationDetails;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/ebay/common/model/inventory/StoreAvailability;-><init>(Lcom/ebay/common/model/inventory/LocationDetails;)V

    invoke-virtual {v0, v1}, Lcom/ebay/common/model/inventory/InventoryInfo;->setSelectedStore(Lcom/ebay/common/model/inventory/StoreAvailability;)V

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity$1;->this$0:Lcom/ebay/mobile/activities/OrderSummaryActivity;

    invoke-static {v1}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->access$100(Lcom/ebay/mobile/activities/OrderSummaryActivity;)Lcom/ebay/common/model/ItemTransaction;

    move-result-object v1

    iget-object v1, v1, Lcom/ebay/common/model/ItemTransaction;->sellerUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ebay/common/model/inventory/InventoryInfo;->setSellerUserId(Ljava/lang/String;)V

    .line 565
    iget-object v1, p1, Lcom/ebay/common/model/OrderItemTransaction;->sku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ebay/common/model/inventory/InventoryInfo;->setItemSku(Ljava/lang/String;)V

    .line 567
    new-instance v1, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    iget-object v2, p1, Lcom/ebay/common/model/OrderItemTransaction;->itemId:Ljava/lang/String;

    sget-object v3, Lcom/ebay/common/ConstantsCommon$ItemKind;->Won:Lcom/ebay/common/ConstantsCommon$ItemKind;

    iget-object v4, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity$1;->this$0:Lcom/ebay/mobile/activities/OrderSummaryActivity;

    invoke-direct {v1, v2, v3, v4}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;-><init>(Ljava/lang/String;Lcom/ebay/common/ConstantsCommon$ItemKind;Landroid/content/Context;)V

    .line 569
    invoke-virtual {v1, v0}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->setInventoryInfo(Lcom/ebay/common/model/inventory/InventoryInfo;)Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    .line 570
    new-instance v0, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;

    iget-object v2, p0, Lcom/ebay/mobile/activities/OrderSummaryActivity$1;->this$0:Lcom/ebay/mobile/activities/OrderSummaryActivity;

    invoke-virtual {v2}, Lcom/ebay/mobile/activities/OrderSummaryActivity;->getTrackingEventName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->setSourceIdentification(Lcom/ebay/nautilus/domain/analytics/model/SourceIdentification;)Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    .line 571
    iget-object p1, p1, Lcom/ebay/common/model/OrderItemTransaction;->transactionId:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->setTransactionId(Ljava/lang/String;)Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    const/4 p1, 0x1

    .line 572
    invoke-virtual {v1, p1}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->setIsFeedbackLeft(Z)Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;

    .line 573
    invoke-virtual {v1}, Lcom/ebay/mobile/viewitem/util/ViewItemIntentBuilder;->buildAndStartActivity()V

    :cond_2
    return-void
.end method
