.class public final Lc/c/a/n/s/f/a$b;
.super Ljava/lang/Object;
.source "StartPaymentFragmentDirections.kt"

# interfaces
.implements Lb/w/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/s/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field public final a:J

.field public final b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;


# direct methods
.method public constructor <init>()V
    .locals 6

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lc/c/a/n/s/f/a$b;-><init>(JLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;ILh/f/b/f;)V

    return-void
.end method

.method public constructor <init>(JLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lc/c/a/n/s/f/a$b;->a:J

    iput-object p3, p0, Lc/c/a/n/s/f/a$b;->b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    return-void
.end method

.method public synthetic constructor <init>(JLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;ILh/f/b/f;)V
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
    invoke-direct {p0, p1, p2, p3}, Lc/c/a/n/s/f/a$b;-><init>(JLcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-wide v1, p0, Lc/c/a/n/s/f/a$b;->a:J

    const-string v3, "minimumNeededCredit"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "buyProductArgs"

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lc/c/a/n/s/f/a$b;->b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 5
    :cond_0
    const-class v1, Ljava/io/Serializable;

    const-class v3, Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lc/c/a/n/s/f/a$b;->b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public b()I
    .locals 1

    const v0, 0x7f0a0261

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lc/c/a/n/s/f/a$b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lc/c/a/n/s/f/a$b;

    iget-wide v3, p0, Lc/c/a/n/s/f/a$b;->a:J

    iget-wide v5, p1, Lc/c/a/n/s/f/a$b;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/n/s/f/a$b;->b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    iget-object p1, p1, Lc/c/a/n/s/f/a$b;->b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lc/c/a/n/s/f/a$b;->a:J

    invoke-static {v0, v1}, Lb;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lc/c/a/n/s/f/a$b;->b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenCreditOptions(minimumNeededCredit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/c/a/n/s/f/a$b;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", buyProductArgs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/n/s/f/a$b;->b:Lcom/farsitel/bazaar/ui/payment/payment/options/BuyProductArgs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
