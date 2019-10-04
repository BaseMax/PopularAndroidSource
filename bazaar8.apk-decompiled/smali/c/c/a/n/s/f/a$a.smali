.class public final Lc/c/a/n/s/f/a$a;
.super Ljava/lang/Object;
.source "StartPaymentFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/s/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/n/s/f/a$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Lc/c/a/n/s/f/a$a;JLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;ILjava/lang/Object;)Lb/w/p;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 2
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lc/c/a/n/s/f/a$a;->a(JLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)Lb/w/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(JLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)Lb/w/p;
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/n/s/f/a$b;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/n/s/f/a$b;-><init>(JLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)V

    return-object v0
.end method

.method public final a(Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)Lb/w/p;
    .locals 1

    const-string v0, "buyProductArgs"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lc/c/a/n/s/f/a$c;

    invoke-direct {v0, p1}, Lc/c/a/n/s/f/a$c;-><init>(Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)V

    return-object v0
.end method
