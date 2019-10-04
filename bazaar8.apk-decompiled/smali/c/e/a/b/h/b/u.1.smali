.class public final Lc/e/a/b/h/b/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lc/e/a/b/h/b/t;


# direct methods
.method public constructor <init>(Lc/e/a/b/h/b/t;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/b/h/b/u;->f:Lc/e/a/b/h/b/t;

    iput p2, p0, Lc/e/a/b/h/b/u;->a:I

    iput-object p3, p0, Lc/e/a/b/h/b/u;->b:Ljava/lang/String;

    iput-object p4, p0, Lc/e/a/b/h/b/u;->c:Ljava/lang/Object;

    iput-object p5, p0, Lc/e/a/b/h/b/u;->d:Ljava/lang/Object;

    iput-object p6, p0, Lc/e/a/b/h/b/u;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lc/e/a/b/h/b/u;->f:Lc/e/a/b/h/b/t;

    iget-object v0, v0, Lc/e/a/b/h/b/ua;->a:Lc/e/a/b/h/b/Y;

    invoke-virtual {v0}, Lc/e/a/b/h/b/Y;->j()Lc/e/a/b/h/b/F;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lc/e/a/b/h/b/va;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, p0, Lc/e/a/b/h/b/u;->f:Lc/e/a/b/h/b/t;

    invoke-static {v1}, Lc/e/a/b/h/b/t;->a(Lc/e/a/b/h/b/t;)C

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lc/e/a/b/h/b/u;->f:Lc/e/a/b/h/b/t;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v1

    invoke-virtual {v1}, Lc/e/a/b/h/b/pc;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lc/e/a/b/h/b/u;->f:Lc/e/a/b/h/b/t;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    const/16 v2, 0x43

    .line 6
    invoke-static {v1, v2}, Lc/e/a/b/h/b/t;->a(Lc/e/a/b/h/b/t;C)C

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lc/e/a/b/h/b/u;->f:Lc/e/a/b/h/b/t;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->a()Lc/e/a/b/h/b/nc;

    const/16 v2, 0x63

    .line 8
    invoke-static {v1, v2}, Lc/e/a/b/h/b/t;->a(Lc/e/a/b/h/b/t;C)C

    .line 9
    :cond_1
    :goto_0
    iget-object v1, p0, Lc/e/a/b/h/b/u;->f:Lc/e/a/b/h/b/t;

    invoke-static {v1}, Lc/e/a/b/h/b/t;->b(Lc/e/a/b/h/b/t;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    .line 10
    iget-object v1, p0, Lc/e/a/b/h/b/u;->f:Lc/e/a/b/h/b/t;

    invoke-virtual {v1}, Lc/e/a/b/h/b/ua;->i()Lc/e/a/b/h/b/pc;

    move-result-object v2

    invoke-virtual {v2}, Lc/e/a/b/h/b/pc;->n()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lc/e/a/b/h/b/t;->a(Lc/e/a/b/h/b/t;J)J

    .line 11
    :cond_2
    iget v1, p0, Lc/e/a/b/h/b/u;->a:I

    const-string v2, "01VDIWEA?"

    .line 12
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iget-object v2, p0, Lc/e/a/b/h/b/u;->f:Lc/e/a/b/h/b/t;

    .line 13
    invoke-static {v2}, Lc/e/a/b/h/b/t;->a(Lc/e/a/b/h/b/t;)C

    move-result v2

    iget-object v3, p0, Lc/e/a/b/h/b/u;->f:Lc/e/a/b/h/b/t;

    .line 14
    invoke-static {v3}, Lc/e/a/b/h/b/t;->b(Lc/e/a/b/h/b/t;)J

    move-result-wide v3

    const/4 v5, 0x1

    iget-object v6, p0, Lc/e/a/b/h/b/u;->b:Ljava/lang/String;

    iget-object v7, p0, Lc/e/a/b/h/b/u;->c:Ljava/lang/Object;

    iget-object v8, p0, Lc/e/a/b/h/b/u;->d:Ljava/lang/Object;

    iget-object v9, p0, Lc/e/a/b/h/b/u;->e:Ljava/lang/Object;

    .line 15
    invoke-static {v5, v6, v7, v8, v9}, Lc/e/a/b/h/b/t;->a(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x18

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "2"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x400

    if-le v2, v3, :cond_3

    .line 17
    iget-object v1, p0, Lc/e/a/b/h/b/u;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 18
    :cond_3
    iget-object v0, v0, Lc/e/a/b/h/b/F;->e:Lc/e/a/b/h/b/J;

    const-wide/16 v2, 0x1

    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lc/e/a/b/h/b/J;->a(Ljava/lang/String;J)V

    return-void

    .line 20
    :cond_4
    iget-object v0, p0, Lc/e/a/b/h/b/u;->f:Lc/e/a/b/h/b/t;

    const/4 v1, 0x6

    const-string v2, "Persisted config not initialized. Not logging error/warn"

    invoke-virtual {v0, v1, v2}, Lc/e/a/b/h/b/t;->a(ILjava/lang/String;)V

    return-void
.end method
