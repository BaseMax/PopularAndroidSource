.class public final Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "PaymentRepository.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/d/m/d;->e(Lh/c/b;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lh/c/b/a/d;
    c = "com.farsitel.bazaar.data.feature.payment.PaymentRepository"
    f = "PaymentRepository.kt"
    l = {
        0x50,
        0x51
    }
    m = "syncPurchases"
.end annotation


# instance fields
.field public J$0:J

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public L$2:Ljava/lang/Object;

.field public label:I

.field public synthetic result:Ljava/lang/Object;

.field public final synthetic this$0:Lc/c/a/e/d/m/d;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/m/d;Lh/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->this$0:Lc/c/a/e/d/m/d;

    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lh/c/b;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->result:Ljava/lang/Object;

    iget p1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->label:I

    iget-object p1, p0, Lcom/farsitel/bazaar/data/feature/payment/PaymentRepository$syncPurchases$1;->this$0:Lc/c/a/e/d/m/d;

    invoke-virtual {p1, p0}, Lc/c/a/e/d/m/d;->e(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
