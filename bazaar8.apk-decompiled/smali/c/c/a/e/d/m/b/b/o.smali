.class public final Lc/c/a/e/d/m/b/b/o;
.super Ljava/lang/Object;
.source "GetPurchasesResponseDto.kt"


# instance fields
.field public final isConsumed:Z
    .annotation runtime Lc/e/d/a/c;
        value = "isConsumed"
    .end annotation
.end field

.field public final paymentData:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "paymentData"
    .end annotation
.end field

.field public final sign:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "sign"
    .end annotation
.end field

.field public final type:Ljava/lang/String;
    .annotation runtime Lc/e/d/a/c;
        value = "type"
    .end annotation
.end field


# virtual methods
.method public final a(Ljava/lang/String;)Lc/c/a/e/d/m/f;
    .locals 14

    const-string v0, "userId"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/e/j/b;->b:Lc/c/a/e/j/b;

    iget-object v1, p0, Lc/c/a/e/d/m/b/b/o;->paymentData:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Lc/c/a/e/j/b;->a()Lc/e/d/j;

    move-result-object v0

    new-instance v2, Lc/c/a/e/d/m/b/b/n;

    invoke-direct {v2}, Lc/c/a/e/d/m/b/b/n;-><init>()V

    invoke-virtual {v2}, Lc/e/d/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc/e/d/j;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Lc/c/a/e/d/m/c;

    .line 4
    new-instance v13, Lc/c/a/e/d/m/f;

    .line 5
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->e()I

    move-result v2

    .line 6
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->d()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->c()J

    move-result-wide v5

    .line 8
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->a()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-virtual {v0}, Lc/c/a/e/d/m/c;->b()Ljava/lang/String;

    move-result-object v8

    .line 10
    iget-object v10, p0, Lc/c/a/e/d/m/b/b/o;->paymentData:Ljava/lang/String;

    .line 11
    iget-object v9, p0, Lc/c/a/e/d/m/b/b/o;->type:Ljava/lang/String;

    .line 12
    iget-object v11, p0, Lc/c/a/e/d/m/b/b/o;->sign:Ljava/lang/String;

    .line 13
    iget-boolean v12, p0, Lc/c/a/e/d/m/b/b/o;->isConsumed:Z

    move-object v1, v13

    move-object v3, p1

    .line 14
    invoke-direct/range {v1 .. v12}, Lc/c/a/e/d/m/f;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v13
.end method
