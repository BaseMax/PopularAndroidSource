.class public final Lc/c/a/e/d/m/a/c;
.super Ljava/lang/Object;
.source "PaymentLocalDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/d/m/a/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Lc/c/a/e/d/m/a/c$a;


# instance fields
.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/c/a/e/d/m/a/e;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Ljava/util/Set<",
            "Lc/c/a/e/d/m/a/e;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Lc/c/a/e/d/m/a/f;

.field public final g:Lc/c/a/e/d/b/I;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc/c/a/e/d/m/a/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/e/d/m/a/c$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/e/d/m/a/c;->c:Lc/c/a/e/d/m/a/c$a;

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.farsitel.bazaar"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.farsitel.bazaar.video"

    aput-object v2, v0, v1

    invoke-static {v0}, Lh/a/l;->c([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lc/c/a/e/d/m/a/c;->a:Ljava/util/List;

    .line 2
    sget-object v0, Lc/c/a/e/d/m/a/c;->a:Ljava/util/List;

    sput-object v0, Lc/c/a/e/d/m/a/c;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lc/c/a/e/d/m/a/f;Lc/c/a/e/d/b/I;)V
    .locals 1

    const-string v0, "purchaseDao"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedDataSource"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/m/a/c;->f:Lc/c/a/e/d/m/a/f;

    iput-object p2, p0, Lc/c/a/e/d/m/a/c;->g:Lc/c/a/e/d/b/I;

    .line 2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/m/a/c;->d:Ljava/util/Set;

    .line 3
    new-instance p1, Lb/r/t;

    invoke-direct {p1}, Lb/r/t;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/m/a/c;->e:Lb/r/t;

    return-void
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/e/d/m/a/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic b()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/e/d/m/a/c;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$clearAll$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$clearAll$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$clearAll$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$clearAll$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$clearAll$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$clearAll$1;-><init>(Lc/c/a/e/d/m/a/c;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$clearAll$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 21
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$clearAll$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$clearAll$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/m/a/c;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 22
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lc/c/a/e/d/m/a/c;->g:Lc/c/a/e/d/b/I;

    invoke-virtual {p1}, Lc/c/a/e/d/b/I;->a()V

    .line 25
    iget-object p1, p0, Lc/c/a/e/d/m/a/c;->f:Lc/c/a/e/d/m/a/f;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$clearAll$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$clearAll$1;->label:I

    invoke-interface {p1, v0}, Lc/c/a/e/d/m/a/f;->a(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 26
    :goto_1
    invoke-virtual {v0}, Lc/c/a/e/d/m/a/c;->c()V

    .line 27
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lc/c/a/e/d/m/a/c;->f:Lc/c/a/e/d/m/a/f;

    invoke-interface {v0, p1, p2, p3}, Lc/c/a/e/d/m/a/f;->a(Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lh/c/b<",
            "-",
            "Ljava/util/List<",
            "Lc/c/a/e/d/m/a/a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/m/a/c;->f:Lc/c/a/e/d/m/a/f;

    invoke-interface {v0, p1, p2, p3, p4}, Lc/c/a/e/d/m/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/a/e/d/m/f;",
            ">;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;

    invoke-direct {v0, p0, p2}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;-><init>(Lc/c/a/e/d/m/a/c;Lh/c/b;)V

    :goto_0
    iget-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 5
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;->L$2:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;->L$1:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/m/a/c;

    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    invoke-static {p2}, Lh/e;->a(Ljava/lang/Object;)V

    .line 8
    invoke-static {p1}, Lh/a/u;->a(Ljava/lang/Iterable;)Lh/j/d;

    move-result-object p2

    .line 9
    sget-object v2, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$2;->a:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$2;

    invoke-static {p2, v2}, Lh/j/o;->a(Lh/j/d;Lh/f/a/b;)Lh/j/d;

    move-result-object p2

    .line 10
    sget-object v2, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$3;->a:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$3;

    invoke-static {p2, v2}, Lh/j/o;->b(Lh/j/d;Lh/f/a/b;)Lh/j/d;

    move-result-object p2

    .line 11
    invoke-static {p2}, Lh/j/o;->c(Lh/j/d;)Ljava/util/List;

    move-result-object p2

    .line 12
    iget-object v2, p0, Lc/c/a/e/d/m/a/c;->f:Lc/c/a/e/d/m/a/f;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;->L$1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;->L$2:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$1;->label:I

    invoke-interface {v2, p2, v0}, Lc/c/a/e/d/m/a/f;->a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 13
    :goto_1
    invoke-static {p1}, Lh/a/u;->a(Ljava/lang/Iterable;)Lh/j/d;

    move-result-object p1

    .line 14
    sget-object p2, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$5;->a:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$5;

    invoke-static {p1, p2}, Lh/j/o;->a(Lh/j/d;Lh/f/a/b;)Lh/j/d;

    move-result-object p1

    .line 15
    sget-object p2, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$6;->a:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$6;

    invoke-static {p1, p2}, Lh/j/o;->b(Lh/j/d;Lh/f/a/b;)Lh/j/d;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lh/j/o;->c(Lh/j/d;)Ljava/util/List;

    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Lc/c/a/e/d/m/a/c;->a(Ljava/util/List;)V

    .line 18
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final a(J)V
    .locals 6

    .line 4
    iget-object v0, p0, Lc/c/a/e/d/m/a/c;->g:Lc/c/a/e/d/b/I;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v1, "userCredit"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/a/e/d/m/a/e;",
            ">;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lc/c/a/e/d/m/a/c;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 20
    iget-object p1, p0, Lc/c/a/e/d/m/a/c;->e:Lb/r/t;

    iget-object v0, p0, Lc/c/a/e/d/m/a/c;->d:Ljava/util/Set;

    invoke-virtual {p1, v0}, Lb/r/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lh/c/b;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$1;

    iget v1, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$1;

    invoke-direct {v0, p0, p1}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$1;-><init>(Lc/c/a/e/d/m/a/c;Lh/c/b;)V

    :goto_0
    iget-object p1, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$1;->result:Ljava/lang/Object;

    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    .line 2
    iget v2, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lc/c/a/e/d/m/a/c;

    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    invoke-static {p1}, Lh/e;->a(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lc/c/a/e/d/m/a/c;->f:Lc/c/a/e/d/m/a/f;

    iput-object p0, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$1;->label:I

    invoke-interface {p1, v0}, Lc/c/a/e/d/m/a/f;->b(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 6
    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lh/a/u;->a(Ljava/lang/Iterable;)Lh/j/d;

    move-result-object p1

    .line 7
    sget-object v1, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$2;->a:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$2;

    invoke-static {p1, v1}, Lh/j/o;->a(Lh/j/d;Lh/f/a/b;)Lh/j/d;

    move-result-object p1

    .line 8
    sget-object v1, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$3;->a:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$3;

    invoke-static {p1, v1}, Lh/j/o;->b(Lh/j/d;Lh/f/a/b;)Lh/j/d;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lh/j/o;->c(Lh/j/d;)Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Lc/c/a/e/d/m/a/c;->a(Ljava/util/List;)V

    .line 11
    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public final b(J)V
    .locals 6

    .line 12
    iget-object v0, p0, Lc/c/a/e/d/m/a/c;->g:Lc/c/a/e/d/b/I;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v1, "purchases_fetch_time_stamp"

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lc/c/a/e/d/b/I;->a(Lc/c/a/e/d/b/I;Ljava/lang/String;Ljava/lang/Object;ZILjava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/a/c;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/m/a/c;->e:Lb/r/t;

    iget-object v1, p0, Lc/c/a/e/d/m/a/c;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Lb/r/t;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final d()J
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/a/c;->g:Lc/c/a/e/d/b/I;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "userCredit"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/util/Set<",
            "Lc/c/a/e/d/m/a/e;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/a/c;->e:Lb/r/t;

    return-object v0
.end method

.method public final f()J
    .locals 3

    .line 1
    iget-object v0, p0, Lc/c/a/e/d/m/a/c;->g:Lc/c/a/e/d/b/I;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "purchases_fetch_time_stamp"

    invoke-virtual {v0, v2, v1}, Lc/c/a/e/d/b/I;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method
