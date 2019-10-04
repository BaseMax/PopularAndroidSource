.class public final Lc/c/a/a/b/a/a/c/a/b;
.super Ljava/lang/Object;
.source "ActionLogRequestDto.kt"


# instance fields
.field public final actions:Ljava/util/List;
    .annotation runtime Lc/e/d/a/c;
        value = "actions"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/a/a/b/a/a/c/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public final device:Lc/c/a/a/b/a/a/c/a/a;
    .annotation runtime Lc/e/d/a/c;
        value = "device"
    .end annotation
.end field

.field public final deviceTime:J
    .annotation runtime Lc/e/d/a/c;
        value = "deviceTime"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/c/a/a/b/a/a/c/a/a;Ljava/util/List;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/a/b/a/a/c/a/a;",
            "Ljava/util/List<",
            "Lc/c/a/a/b/a/a/c/a/c;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "device"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/a/b/a/a/c/a/b;->device:Lc/c/a/a/b/a/a/c/a/a;

    iput-object p2, p0, Lc/c/a/a/b/a/a/c/a/b;->actions:Ljava/util/List;

    iput-wide p3, p0, Lc/c/a/a/b/a/a/c/a/b;->deviceTime:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lc/c/a/a/b/a/a/c/a/b;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lc/c/a/a/b/a/a/c/a/b;

    iget-object v1, p0, Lc/c/a/a/b/a/a/c/a/b;->device:Lc/c/a/a/b/a/a/c/a/a;

    iget-object v3, p1, Lc/c/a/a/b/a/a/c/a/b;->device:Lc/c/a/a/b/a/a/c/a/a;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lc/c/a/a/b/a/a/c/a/b;->actions:Ljava/util/List;

    iget-object v3, p1, Lc/c/a/a/b/a/a/c/a/b;->actions:Ljava/util/List;

    invoke-static {v1, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lc/c/a/a/b/a/a/c/a/b;->deviceTime:J

    iget-wide v5, p1, Lc/c/a/a/b/a/a/c/a/b;->deviceTime:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lc/c/a/a/b/a/a/c/a/b;->device:Lc/c/a/a/b/a/a/c/a/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lc/c/a/a/b/a/a/c/a/a;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lc/c/a/a/b/a/a/c/a/b;->actions:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lc/c/a/a/b/a/a/c/a/b;->deviceTime:J

    const/16 v3, 0x20

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Log(device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/a/b/a/a/c/a/b;->device:Lc/c/a/a/b/a/a/c/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/a/b/a/a/c/a/b;->actions:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", deviceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/c/a/a/b/a/a/c/a/b;->deviceTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
