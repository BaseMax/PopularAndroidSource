.class public final Lc/c/a/e/d/m/b/a/a;
.super Ljava/lang/Object;
.source "CollectPaymentRequestDto.kt"


# annotations
.annotation runtime Lc/c/a/c/f/a/h;
    value = "singleRequest.collectPaymentRequest"
.end annotation


# instance fields
.field public final invoiceToken:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "invoiceToken"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "invoiceToken"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/d/m/b/a/a;->invoiceToken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lc/c/a/e/d/m/b/a/a;

    if-eqz v0, :cond_0

    check-cast p1, Lc/c/a/e/d/m/b/a/a;

    iget-object v0, p0, Lc/c/a/e/d/m/b/a/a;->invoiceToken:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/e/d/m/b/a/a;->invoiceToken:Ljava/lang/String;

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

    iget-object v0, p0, Lc/c/a/e/d/m/b/a/a;->invoiceToken:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

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

    const-string v1, "CollectPaymentRequestDto(invoiceToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/e/d/m/b/a/a;->invoiceToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
