.class public final Lc/c/a/e/d/m/a;
.super Ljava/lang/Object;
.source "PaymentEntities.kt"


# instance fields
.field public final a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lc/c/a/e/d/m/a;->a:J

    return-void
.end method

.method public static final synthetic a(J)Lc/c/a/e/d/m/a;
    .locals 1

    new-instance v0, Lc/c/a/e/d/m/a;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/m/a;-><init>(J)V

    return-object v0
.end method

.method public static a(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Lc/c/a/e/d/m/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    check-cast p2, Lc/c/a/e/d/m/a;

    invoke-virtual {p2}, Lc/c/a/e/d/m/a;->a()J

    move-result-wide v2

    const/4 p2, 0x1

    cmp-long v0, p0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return p2

    :cond_1
    return v1
.end method

.method public static b(J)J
    .locals 0

    return-wide p0
.end method

.method public static c(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static d(J)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CreditBalance(value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic a()J
    .locals 2

    iget-wide v0, p0, Lc/c/a/e/d/m/a;->a:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/c/a/e/d/m/a;->a:J

    invoke-static {v0, v1, p1}, Lc/c/a/e/d/m/a;->a(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/c/a/e/d/m/a;->a:J

    invoke-static {v0, v1}, Lc/c/a/e/d/m/a;->c(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/c/a/e/d/m/a;->a:J

    invoke-static {v0, v1}, Lc/c/a/e/d/m/a;->d(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
