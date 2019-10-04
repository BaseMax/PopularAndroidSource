.class public final Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentLocalDataSource.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/m/a/c;->a(Ljava/util/List;Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lc/c/a/e/d/m/f;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$2;

    invoke-direct {v0}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$2;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$2;->a:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/e/d/m/f;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$addPurchases$2;->a(Lc/c/a/e/d/m/f;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lc/c/a/e/d/m/f;)Z
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lc/c/a/e/d/m/f;->b()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
