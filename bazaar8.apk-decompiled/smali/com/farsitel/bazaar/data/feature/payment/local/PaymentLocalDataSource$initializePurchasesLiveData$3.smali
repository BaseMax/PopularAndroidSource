.class public final Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$3;
.super Lkotlin/jvm/internal/Lambda;
.source "PaymentLocalDataSource.kt"

# interfaces
.implements Lh/f/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/m/a/c;->b(Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lh/f/a/b<",
        "Lc/c/a/e/d/m/a/a;",
        "Lc/c/a/e/d/m/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$3;

    invoke-direct {v0}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$3;-><init>()V

    sput-object v0, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$3;->a:Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$3;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Lc/c/a/e/d/m/a/a;)Lc/c/a/e/d/m/a/e;
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lc/c/a/e/d/m/a/a;->k()Lc/c/a/e/d/m/a/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lc/c/a/e/d/m/a/a;

    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/data/feature/payment/local/PaymentLocalDataSource$initializePurchasesLiveData$3;->a(Lc/c/a/e/d/m/a/a;)Lc/c/a/e/d/m/a/e;

    move-result-object p1

    return-object p1
.end method
