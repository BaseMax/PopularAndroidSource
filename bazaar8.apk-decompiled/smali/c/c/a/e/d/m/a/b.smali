.class public Lc/c/a/e/d/m/a/b;
.super Lb/z/w$a;
.source "PaymentDatabase_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->a(Lb/z/c;)Lb/C/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;


# direct methods
.method public constructor <init>(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/d/m/a/b;->b:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;

    invoke-direct {p0, p2}, Lb/z/w$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a(Lb/C/a/b;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `payments` (`purchaseToken` TEXT NOT NULL, `state` INTEGER NOT NULL, `userId` TEXT NOT NULL, `purchaseTime` INTEGER NOT NULL, `packageName` TEXT NOT NULL, `productId` TEXT NOT NULL, `productType` TEXT NOT NULL, `jsonPurchaseInfo` TEXT NOT NULL, `signature` TEXT NOT NULL, PRIMARY KEY(`purchaseToken`))"

    .line 1
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    .line 2
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'51c4b7ade068c49616a702f2f9419546\')"

    .line 3
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lb/C/a/b;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS `payments`"

    .line 1
    invoke-interface {p1, v0}, Lb/C/a/b;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c(Lb/C/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/a/b;->b:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->a(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lc/c/a/e/d/m/a/b;->b:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;

    invoke-static {v1}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->b(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 3
    iget-object v2, p0, Lc/c/a/e/d/m/a/b;->b:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;

    invoke-static {v2}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->c(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$b;->a(Lb/C/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Lb/C/a/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/a/b;->b:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->a(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;Lb/C/a/b;)Lb/C/a/b;

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/m/a/b;->b:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;

    invoke-static {v0, p1}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->b(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;Lb/C/a/b;)V

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/m/a/b;->b:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;

    invoke-static {v0}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->d(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Lc/c/a/e/d/m/a/b;->b:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;

    invoke-static {v1}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->e(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 5
    iget-object v2, p0, Lc/c/a/e/d/m/a/b;->b:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;

    invoke-static {v2}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;->f(Lcom/farsitel/bazaar/data/feature/payment/local/PaymentDatabase_Impl;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/room/RoomDatabase$b;

    invoke-virtual {v2, p1}, Landroidx/room/RoomDatabase$b;->b(Lb/C/a/b;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public e(Lb/C/a/b;)V
    .locals 0

    return-void
.end method

.method public f(Lb/C/a/b;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/z/b/b;->a(Lb/C/a/b;)V

    return-void
.end method

.method public g(Lb/C/a/b;)V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 2
    new-instance v1, Lb/z/b/d$a;

    const-string v2, "purchaseToken"

    const-string v3, "TEXT"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v4}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Lb/z/b/d$a;

    const-string v2, "INTEGER"

    const-string v5, "state"

    const/4 v6, 0x0

    invoke-direct {v1, v5, v2, v4, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lb/z/b/d$a;

    const-string v5, "userId"

    invoke-direct {v1, v5, v3, v4, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v1, Lb/z/b/d$a;

    const-string v5, "purchaseTime"

    invoke-direct {v1, v5, v2, v4, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v1, Lb/z/b/d$a;

    const-string v2, "packageName"

    invoke-direct {v1, v2, v3, v4, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lb/z/b/d$a;

    const-string v2, "productId"

    invoke-direct {v1, v2, v3, v4, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lb/z/b/d$a;

    const-string v2, "productType"

    invoke-direct {v1, v2, v3, v4, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lb/z/b/d$a;

    const-string v2, "jsonPurchaseInfo"

    invoke-direct {v1, v2, v3, v4, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lb/z/b/d$a;

    const-string v2, "signature"

    invoke-direct {v1, v2, v3, v4, v6}, Lb/z/b/d$a;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 12
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 13
    new-instance v3, Lb/z/b/d;

    const-string v4, "payments"

    invoke-direct {v3, v4, v0, v1, v2}, Lb/z/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 14
    invoke-static {p1, v4}, Lb/z/b/d;->a(Lb/C/a/b;Ljava/lang/String;)Lb/z/b/d;

    move-result-object p1

    .line 15
    invoke-virtual {v3, p1}, Lb/z/b/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 16
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Migration didn\'t properly handle payments(com.farsitel.bazaar.data.feature.payment.local.LocalPurchase).\n Expected:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\n Found:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
