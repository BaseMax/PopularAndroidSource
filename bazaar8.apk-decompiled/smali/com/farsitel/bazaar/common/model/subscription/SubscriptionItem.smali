.class public final Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;
.super Ljava/lang/Object;
.source "SubscriptionItem.kt"

# interfaces
.implements Lcom/farsitel/bazaar/common/model/RecyclerData;


# instance fields
.field public final dealerName:Ljava/lang/String;

.field public final endDate:Ljava/lang/String;

.field public final iconUrl:Ljava/lang/String;

.field public isCancelableLoading:Z

.field public final isRenewable:Z

.field public final kind:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

.field public final price:I

.field public final productSku:Ljava/lang/String;

.field public final productTitle:Ljava/lang/String;

.field public final startDate:Ljava/lang/String;

.field public status:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

.field public final title:Ljava/lang/String;

.field public final viewType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V
    .locals 1

    const-string v0, "title"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productTitle"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startDate"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endDate"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productSku"

    invoke-static {p7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dealerName"

    invoke-static {p8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUrl"

    invoke-static {p11, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->kind:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->startDate:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->endDate:Ljava/lang/String;

    iput-object p6, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->status:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    iput-object p7, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productSku:Ljava/lang/String;

    iput-object p8, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->dealerName:Ljava/lang/String;

    iput p9, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->price:I

    iput-boolean p10, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isRenewable:Z

    iput-object p11, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->iconUrl:Ljava/lang/String;

    iput-boolean p12, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isCancelableLoading:Z

    .line 2
    sget-object p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;->APP:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionType;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZILh/f/b/f;)V
    .locals 14

    move/from16 v0, p13

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v13, 0x0

    goto :goto_0

    :cond_0
    move/from16 v13, p12

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    .line 3
    invoke-direct/range {v1 .. v13}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;ZILjava/lang/Object;)Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->title:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productTitle:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->kind:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->startDate:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->endDate:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->status:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productSku:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->dealerName:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->price:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isRenewable:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->iconUrl:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isCancelableLoading:Z

    goto :goto_b

    :cond_b
    move/from16 v1, p12

    :goto_b
    move-object p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->copy(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isRenewable:Z

    return v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isCancelableLoading:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->kind:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->status:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productSku:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->dealerName:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->price:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;
    .locals 14

    const-string v0, "title"

    move-object v2, p1

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productTitle"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "startDate"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endDate"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "productSku"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dealerName"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iconUrl"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;

    move-object v1, v0

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;Ljava/lang/String;Ljava/lang/String;Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productTitle:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->kind:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->kind:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->startDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->startDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->endDate:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->endDate:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->status:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->status:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productSku:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productSku:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->dealerName:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->dealerName:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->price:I

    iget v3, p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->price:I

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isRenewable:Z

    iget-boolean v3, p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isRenewable:Z

    if-ne v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->iconUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->iconUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isCancelableLoading:Z

    iget-boolean p1, p1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isCancelableLoading:Z

    if-ne v1, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    return v2

    :cond_4
    :goto_3
    return v0
.end method

.method public final getDealerName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->dealerName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEndDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->endDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getKind()Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->kind:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    return-object v0
.end method

.method public final getPrice()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->price:I

    return v0
.end method

.method public final getProductSku()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productSku:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getShowMoreMenu()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->status:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    sget-object v1, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;->ACTIVE:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isCancelableLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isRenewable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getStartDate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->startDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->status:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    return-object v0
.end method

.method public final getSubscriptionPrice(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lc/c/a/c/a;->subscription_kind:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->kind:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    invoke-virtual {v2, p1}, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;->getString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->price:I

    div-int/lit8 v2, v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->viewType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productTitle:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->kind:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->startDate:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->endDate:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->status:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productSku:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->dealerName:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->price:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isRenewable:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :cond_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->iconUrl:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_9
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isCancelableLoading:Z

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :cond_a
    add-int/2addr v0, v1

    return v0
.end method

.method public final isCancelableLoading()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isCancelableLoading:Z

    return v0
.end method

.method public final isRenewable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isRenewable:Z

    return v0
.end method

.method public final setCancelableLoading(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isCancelableLoading:Z

    return-void
.end method

.method public final setStatus(Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->status:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubscriptionItem(title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", productTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->kind:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionKind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->startDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->endDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->status:Lcom/farsitel/bazaar/common/model/subscription/SubscriptionStatusChoices;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", productSku="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->productSku:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dealerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->dealerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", price="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->price:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRenewable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isRenewable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", iconUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->iconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isCancelableLoading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/farsitel/bazaar/common/model/subscription/SubscriptionItem;->isCancelableLoading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
