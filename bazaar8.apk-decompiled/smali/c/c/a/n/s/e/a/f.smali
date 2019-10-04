.class public final Lc/c/a/n/s/e/a/f;
.super Ljava/lang/Object;
.source "PaymentOptionsFragmentArgs.kt"

# interfaces
.implements Lb/w/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/n/s/e/a/f$a;
    }
.end annotation


# static fields
.field public static final a:Lc/c/a/n/s/e/a/f$a;


# instance fields
.field public final b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/n/s/e/a/f$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/n/s/e/a/f$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/n/s/e/a/f;->a:Lc/c/a/n/s/e/a/f$a;

    return-void
.end method

.method public constructor <init>(Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)V
    .locals 1

    const-string v0, "buyProductArgs"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/n/s/e/a/f;->b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    return-void
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lc/c/a/n/s/e/a/f;
    .locals 1

    sget-object v0, Lc/c/a/n/s/e/a/f;->a:Lc/c/a/n/s/e/a/f$a;

    invoke-virtual {v0, p0}, Lc/c/a/n/s/e/a/f$a;->a(Landroid/os/Bundle;)Lc/c/a/n/s/e/a/f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/n/s/e/a/f;->b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/n/s/e/a/f;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/n/s/e/a/f;

    iget-object v0, p0, Lc/c/a/n/s/e/a/f;->b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    iget-object p1, p1, Lc/c/a/n/s/e/a/f;->b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    invoke-static {v0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lc/c/a/n/s/e/a/f;->b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PaymentOptionsFragmentArgs(buyProductArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/s/e/a/f;->b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
