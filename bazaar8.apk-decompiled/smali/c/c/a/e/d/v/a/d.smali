.class public final Lc/c/a/e/d/v/a/d;
.super Ljava/lang/Object;
.source "SubscriptionResponseDto.kt"


# instance fields
.field public final dealerName:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "dealerName"
    .end annotation
.end field

.field public final endDate:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "endDateString"
    .end annotation
.end field

.field public final iconUrl:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "appIcon"
    .end annotation
.end field

.field public final isRenewable:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isRenewable"
    .end annotation
.end field

.field public final kind:I
    .annotation runtime Lc/e/d/a/c;
        value = "kind"
    .end annotation
.end field

.field public final price:I
    .annotation runtime Lc/e/d/a/c;
        value = "price"
    .end annotation
.end field

.field public final productSku:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "sku"
    .end annotation
.end field

.field public final productTitle:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "appTitle"
    .end annotation
.end field

.field public final startDate:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "startDateString"
    .end annotation
.end field

.field public final status:I
    .annotation runtime Lc/e/d/a/c;
        value = "status"
    .end annotation
.end field

.field public final title:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "title"
    .end annotation
.end field


# virtual methods
.method public final a()Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;
    .locals 17

    move-object/from16 v0, p0

    .line 1
    new-instance v16, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;

    .line 2
    iget-object v2, v0, Lc/c/a/e/d/v/a/d;->title:Ljava/lang/String;

    .line 3
    iget-object v3, v0, Lc/c/a/e/d/v/a/d;->productTitle:Ljava/lang/String;

    .line 4
    sget-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->Companion:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$Companion;

    iget v4, v0, Lc/c/a/e/d/v/a/d;->kind:I

    invoke-virtual {v1, v4}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind$Companion;->getValue(I)Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    move-result-object v4

    .line 5
    iget-object v5, v0, Lc/c/a/e/d/v/a/d;->startDate:Ljava/lang/String;

    .line 6
    iget-object v6, v0, Lc/c/a/e/d/v/a/d;->endDate:Ljava/lang/String;

    .line 7
    sget-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;->Companion:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices$Companion;

    iget v7, v0, Lc/c/a/e/d/v/a/d;->status:I

    invoke-virtual {v1, v7}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices$Companion;->getValue(I)Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    move-result-object v7

    .line 8
    iget-object v8, v0, Lc/c/a/e/d/v/a/d;->productSku:Ljava/lang/String;

    .line 9
    iget-object v9, v0, Lc/c/a/e/d/v/a/d;->dealerName:Ljava/lang/String;

    .line 10
    iget v10, v0, Lc/c/a/e/d/v/a/d;->price:I

    .line 11
    iget-boolean v11, v0, Lc/c/a/e/d/v/a/d;->isRenewable:Z

    .line 12
    iget-object v12, v0, Lc/c/a/e/d/v/a/d;->iconUrl:Ljava/lang/String;

    const/4 v13, 0x0

    const/16 v14, 0x800

    const/4 v15, 0x0

    move-object/from16 v1, v16

    .line 13
    invoke-direct/range {v1 .. v15}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZILh/f/b/f;)V

    return-object v16
.end method
