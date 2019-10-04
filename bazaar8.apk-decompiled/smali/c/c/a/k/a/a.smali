.class public final Lc/c/a/k/a/a;
.super Lc/a/a/a/a$a;
.source "InAppBillingServiceFunctions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/k/a/a$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/k/a/a$a;


# instance fields
.field public final b:Landroid/content/Context;

.field public final c:Landroid/content/Context;

.field public final d:Lc/c/a/e/d/a/a;

.field public final e:Lc/c/a/e/d/m/d;

.field public final f:Lc/c/a/b/f/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/k/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/k/a/a$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/k/a/a;->a:Lc/c/a/k/a/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lc/c/a/e/d/a/a;Lc/c/a/e/d/m/d;Lc/c/a/b/f/a/c;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountRepository"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentRepository"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pardakhtNotificationManager"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lc/a/a/a/a$a;-><init>()V

    iput-object p1, p0, Lc/c/a/k/a/a;->c:Landroid/content/Context;

    iput-object p2, p0, Lc/c/a/k/a/a;->d:Lc/c/a/e/d/a/a;

    iput-object p3, p0, Lc/c/a/k/a/a;->e:Lc/c/a/e/d/m/d;

    iput-object p4, p0, Lc/c/a/k/a/a;->f:Lc/c/a/b/f/a/c;

    .line 2
    iget-object p1, p0, Lc/c/a/k/a/a;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/k/a/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic a(Lc/c/a/k/a/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/k/a/a;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic b(Lc/c/a/k/a/a;)Lc/c/a/e/d/m/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/c/a/k/a/a;->e:Lc/c/a/e/d/m/d;

    return-object p0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InAppBillingServiceFunc :: isBillingSupported :: apiVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", type="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 11

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "skusBundle"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InAppBillingServiceFunc :: getSkuDetails :: apiVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x3

    const-string v2, "RESPONSE_CODE"

    if-ge p1, v1, :cond_0

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0, p2, v0}, Lc/c/a/k/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 7
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p1, 0x5

    .line 8
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_2
    const-string v1, "ITEM_ID_LIST"

    .line 9
    invoke-virtual {p4, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p4

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    invoke-static {p4}, Lh/a/u;->h(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-static {p4}, Lh/a/u;->f(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p4

    move-object v8, p4

    goto :goto_0

    :cond_3
    move-object v8, v1

    :goto_0
    const/4 p4, 0x6

    .line 10
    :try_start_0
    new-instance v10, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v9}, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getSkuDetails$1;-><init>(Lc/c/a/k/a/a;ILjava/lang/String;Ljava/lang/String;Ljava/util/List;Lh/c/b;)V

    const/4 p1, 0x1

    invoke-static {v1, v10, p1, v1}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either;

    .line 11
    instance-of p2, p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Success;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Success;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const-string p2, "DETAILS_LIST"

    .line 12
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 14
    :cond_4
    instance-of p2, p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    if-eqz p2, :cond_5

    check-cast p1, Lcom/farsitel/bazaar/data/entity/Either$Failure;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/data/entity/Either$Failure;->getError()Lcom/farsitel/bazaar/data/entity/ErrorModel;

    .line 15
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 16
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 17
    sget-object p2, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance p3, Ljava/lang/Throwable;

    const-string v1, "InAppBillingServiceFunc :: getSkuDetails :: error"

    invoke-direct {p3, v1, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p2, p3}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 18
    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_1
    return-object v0
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 24

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "packageName"

    invoke-static {v2, v4}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "type"

    invoke-static {v3, v4}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v5, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InAppBillingServiceFunc :: getPurchases :: apiVersion="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "packageName="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", type="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", continuationToken= "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, p4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    const/4 v10, 0x0

    .line 34
    invoke-static/range {v5 .. v10}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 35
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 36
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {v5, v6}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "RESPONSE_CODE"

    if-eqz v5, :cond_0

    const/4 v0, 0x5

    .line 37
    invoke-virtual {v4, v6, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_0
    const/4 v5, 0x3

    if-lt v0, v5, :cond_4

    const-string v0, "inapp"

    .line 38
    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "subs"

    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 39
    :cond_1
    invoke-virtual {v1, v2, v4}, Lc/c/a/k/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object v4

    .line 40
    :cond_2
    iget-object v0, v1, Lc/c/a/k/a/a;->d:Lc/c/a/e/d/a/a;

    invoke-virtual {v0}, Lc/c/a/e/d/a/a;->u()Z

    move-result v0

    const/4 v5, 0x6

    if-eqz v0, :cond_3

    const-wide/16 v7, -0x1

    .line 41
    :try_start_0
    new-instance v0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getPurchases$1;

    const/4 v9, 0x0

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$getPurchases$1;-><init>(Lc/c/a/k/a/a;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)V

    const/4 v2, 0x1

    invoke-static {v9, v0, v2, v9}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 42
    check-cast v0, Lc/c/a/e/d/m/d$a;

    const/4 v2, 0x0

    .line 43
    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "INAPP_PURCHASE_ITEM_LIST"

    .line 44
    invoke-virtual {v0}, Lc/c/a/e/d/m/d$a;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "INAPP_PURCHASE_DATA_LIST"

    .line 45
    invoke-virtual {v0}, Lc/c/a/e/d/m/d$a;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "INAPP_DATA_SIGNATURE_LIST"

    .line 46
    invoke-virtual {v0}, Lc/c/a/e/d/m/d$a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 47
    sget-object v12, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InAppBillingServiceFunc :: getPurchases :: filled bundle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v17, 0x0

    invoke-static/range {v12 .. v17}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v20, v0

    .line 48
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 49
    sget-object v18, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InAppBillingServiceFunc :: getPurchases(phone= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lc/c/a/k/a/a;->d:Lc/c/a/e/d/a/a;

    invoke-virtual {v2}, Lc/c/a/e/d/a/a;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fetchTimestamp= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") :: json parse error"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v21, 0x0

    const/16 v22, 0x4

    const/16 v23, 0x0

    .line 52
    invoke-static/range {v18 .. v23}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    iget-object v0, v1, Lc/c/a/k/a/a;->f:Lc/c/a/b/f/a/c;

    invoke-virtual {v0, v2}, Lc/c/a/b/f/a/c;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_4
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-object v4
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sku"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InAppBillingServiceFunc :: getBuyIntent :: apiVersion="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "packageName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", developerPayload="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 22
    invoke-static/range {v1 .. v6}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "RESPONSE_CODE"

    const/4 v2, 0x3

    if-lt p1, v2, :cond_2

    const-string p1, "inapp"

    .line 24
    invoke-static {p1, p4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "subs"

    invoke-static {p1, p4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 25
    :cond_0
    invoke-virtual {p0, p2, v0}, Lc/c/a/k/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    .line 26
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 27
    sget-object p1, Lcom/farsitel/bazaar/ui/payment/PaymentActivity;->w:Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;

    iget-object p4, p0, Lc/c/a/k/a/a;->b:Landroid/content/Context;

    const-string v1, "appContext"

    invoke-static {p4, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p4, p2, p3, p5}, Lcom/farsitel/bazaar/ui/payment/PaymentActivity$a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 28
    iget-object p2, p0, Lc/c/a/k/a/a;->c:Landroid/content/Context;

    const/4 p3, 0x1

    const/high16 p4, 0x10000000

    invoke-static {p2, p3, p1, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "BUY_INTENT"

    .line 29
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_0
    return-object v0
.end method

.method public final a(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x5

    const-string v2, "RESPONSE_CODE"

    if-nez p1, :cond_0

    .line 56
    sget-object v3, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    const-string v4, "InAppBillingServiceFunc :: securityCheck :: packageName=null"

    invoke-static/range {v3 .. v8}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 57
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return v0

    .line 58
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 59
    iget-object v4, p0, Lc/c/a/k/a/a;->b:Landroid/content/Context;

    const-string v5, "appContext"

    invoke-static {v4, v5}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 60
    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    .line 61
    sget-object v5, Lcom/farsitel/bazaar/payment/iab/InAppBillingService;->b:Lcom/farsitel/bazaar/payment/iab/InAppBillingService$a;

    invoke-virtual {v5}, Lcom/farsitel/bazaar/payment/iab/InAppBillingService$a;->a()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 62
    sget-object v6, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "InAppBillingServiceFunc :: securityCheck :: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "callingUid= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", extractedPackageName= "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    .line 65
    invoke-static/range {v6 .. v11}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 66
    :cond_1
    invoke-static {p1, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_2

    const-string p1, "com.farsitel.bazaar"

    invoke-static {p1, v4}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v3

    if-eqz p1, :cond_2

    .line 67
    sget-object v4, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x0

    const-string v5, "InAppBillingServiceFunc :: getSkuDetails :: packageName forging"

    invoke-static/range {v4 .. v9}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 68
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return v0

    :cond_2
    return v3
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseToken"

    invoke-static {p3, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InAppBillingServiceFunc :: consumePurchase :: apiVersion= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "packageName= "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", purchaseToken="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    .line 5
    invoke-static/range {v1 .. v6}, Lc/c/a/c/c/a;->a(Lc/c/a/c/c/a;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;ILjava/lang/Object;)V

    .line 6
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p2, p1}, Lc/c/a/k/a/a;->a(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lc/c/a/k/a/a;->d:Lc/c/a/e/d/a/a;

    invoke-virtual {p1}, Lc/c/a/e/d/a/a;->u()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x6

    .line 9
    :try_start_0
    new-instance v0, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$consumePurchase$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p3, v1}, Lcom/farsitel/bazaar/payment/iab/InAppBillingServiceFunctions$consumePurchase$1;-><init>(Lc/c/a/k/a/a;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)V

    const/4 p2, 0x1

    invoke-static {v1, v0, p2, v1}, Li/a/e;->a(Lh/c/e;Lh/f/a/c;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 10
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    :cond_2
    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 11
    sget-object p3, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "InAppBillingServiceFunc :: consumePurchase :: remote call failed:"

    invoke-direct {v0, v1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p3, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    const/4 v0, 0x6

    :cond_3
    :goto_0
    return v0
.end method
