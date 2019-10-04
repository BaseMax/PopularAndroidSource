.class public final Lc/c/a/a/b/a/a/b/i;
.super Ljava/lang/Object;
.source "LocalActionLog.kt"


# instance fields
.field public a:J

.field public b:J

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lc/c/a/a/b/a/a/b/i;->a:J

    iput-wide p3, p0, Lc/c/a/a/b/a/a/b/i;->b:J

    iput-object p5, p0, Lc/c/a/a/b/a/a/b/i;->c:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(JJLjava/lang/String;ILh/f/b/f;)V
    .locals 6

    and-int/lit8 p6, p6, 0x1

    if-eqz p6, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    move-wide v1, p1

    move-object v0, p0

    move-wide v3, p3

    move-object v5, p5

    .line 2
    invoke-direct/range {v0 .. v5}, Lc/c/a/a/b/a/a/b/i;-><init>(JJLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/c/a/a/b/a/a/b/i;->a:J

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/a/b/a/a/b/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lc/c/a/a/b/a/a/b/i;->b:J

    return-wide v0
.end method

.method public final d()Lc/c/a/a/b/a/a/a/a;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lc/c/a/e/j/b;->b:Lc/c/a/e/j/b;

    invoke-virtual {v0}, Lc/c/a/e/j/b;->a()Lc/e/d/j;

    move-result-object v0

    iget-object v1, p0, Lc/c/a/a/b/a/a/b/i;->c:Ljava/lang/String;

    const-class v2, Lc/c/a/a/b/a/a/a/a;

    invoke-virtual {v0, v1, v2}, Lc/e/d/j;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "GSON().fromJson(this.jso\u2026ionLogEntity::class.java)"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lc/c/a/a/b/a/a/a/a;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    sget-object v1, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v1, v0}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    .line 3
    sget-object v0, Lc/c/a/a/b/a/a/a/a;->b:Lc/c/a/a/b/a/a/a/a$a;

    invoke-virtual {v0}, Lc/c/a/a/b/a/a/a/a$a;->a()Lc/c/a/a/b/a/a/a/a;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_3

    instance-of v1, p1, Lc/c/a/a/b/a/a/b/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lc/c/a/a/b/a/a/b/i;

    iget-wide v3, p0, Lc/c/a/a/b/a/a/b/i;->a:J

    iget-wide v5, p1, Lc/c/a/a/b/a/a/b/i;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    iget-wide v3, p0, Lc/c/a/a/b/a/a/b/i;->b:J

    iget-wide v5, p1, Lc/c/a/a/b/a/a/b/i;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/c/a/a/b/a/a/b/i;->c:Ljava/lang/String;

    iget-object p1, p1, Lc/c/a/a/b/a/a/b/i;->c:Ljava/lang/String;

    invoke-static {v1, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v0
.end method

.method public hashCode()I
    .locals 7

    iget-wide v0, p0, Lc/c/a/a/b/a/a/b/i;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v3, p0, Lc/c/a/a/b/a/a/b/i;->b:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v0, v3

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lc/c/a/a/b/a/a/b/i;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocalActionLog(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/c/a/a/b/a/a/b/i;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lc/c/a/a/b/a/a/b/i;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", json="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lc/c/a/a/b/a/a/b/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
