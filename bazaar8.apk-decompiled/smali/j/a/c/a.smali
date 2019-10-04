.class public final Lj/a/c/a;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lj/E;


# instance fields
.field public final a:Lj/t;


# direct methods
.method public constructor <init>(Lj/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj/a/c/a;->a:Lj/t;

    return-void
.end method


# virtual methods
.method public a(Lj/E$a;)Lj/P;
    .locals 10

    .line 1
    invoke-interface {p1}, Lj/E$a;->e()Lj/L;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lj/L;->f()Lj/L$a;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lj/L;->a()Lj/O;

    move-result-object v2

    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    .line 4
    invoke-virtual {v2}, Lj/O;->b()Lj/F;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 5
    invoke-virtual {v7}, Lj/F;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3, v7}, Lj/L$a;->b(Ljava/lang/String;Ljava/lang/String;)Lj/L$a;

    .line 6
    :cond_0
    invoke-virtual {v2}, Lj/O;->a()J

    move-result-wide v7

    const-string v2, "Transfer-Encoding"

    cmp-long v9, v7, v4

    if-eqz v9, :cond_1

    .line 7
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lj/L$a;->b(Ljava/lang/String;Ljava/lang/String;)Lj/L$a;

    .line 8
    invoke-virtual {v1, v2}, Lj/L$a;->a(Ljava/lang/String;)Lj/L$a;

    goto :goto_0

    :cond_1
    const-string v7, "chunked"

    .line 9
    invoke-virtual {v1, v2, v7}, Lj/L$a;->b(Ljava/lang/String;Ljava/lang/String;)Lj/L$a;

    .line 10
    invoke-virtual {v1, v6}, Lj/L$a;->a(Ljava/lang/String;)Lj/L$a;

    :cond_2
    :goto_0
    const-string v2, "Host"

    .line 11
    invoke-virtual {v0, v2}, Lj/L;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    .line 12
    invoke-virtual {v0}, Lj/L;->g()Lj/D;

    move-result-object v7

    invoke-static {v7, v8}, Lj/a/e;->a(Lj/D;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lj/L$a;->b(Ljava/lang/String;Ljava/lang/String;)Lj/L$a;

    :cond_3
    const-string v2, "Connection"

    .line 13
    invoke-virtual {v0, v2}, Lj/L;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_4

    const-string v7, "Keep-Alive"

    .line 14
    invoke-virtual {v1, v2, v7}, Lj/L$a;->b(Ljava/lang/String;Ljava/lang/String;)Lj/L$a;

    :cond_4
    const-string v2, "Accept-Encoding"

    .line 15
    invoke-virtual {v0, v2}, Lj/L;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "gzip"

    if-nez v7, :cond_5

    const-string v7, "Range"

    invoke-virtual {v0, v7}, Lj/L;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v8, 0x1

    .line 16
    invoke-virtual {v1, v2, v9}, Lj/L$a;->b(Ljava/lang/String;Ljava/lang/String;)Lj/L$a;

    .line 17
    :cond_5
    iget-object v2, p0, Lj/a/c/a;->a:Lj/t;

    invoke-virtual {v0}, Lj/L;->g()Lj/D;

    move-result-object v7

    invoke-interface {v2, v7}, Lj/t;->a(Lj/D;)Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 19
    invoke-virtual {p0, v2}, Lj/a/c/a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "Cookie"

    invoke-virtual {v1, v7, v2}, Lj/L$a;->b(Ljava/lang/String;Ljava/lang/String;)Lj/L$a;

    :cond_6
    const-string v2, "User-Agent"

    .line 20
    invoke-virtual {v0, v2}, Lj/L;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    .line 21
    invoke-static {}, Lj/a/f;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v2, v7}, Lj/L$a;->b(Ljava/lang/String;Ljava/lang/String;)Lj/L$a;

    .line 22
    :cond_7
    invoke-virtual {v1}, Lj/L$a;->a()Lj/L;

    move-result-object v1

    invoke-interface {p1, v1}, Lj/E$a;->a(Lj/L;)Lj/P;

    move-result-object p1

    .line 23
    iget-object v1, p0, Lj/a/c/a;->a:Lj/t;

    invoke-virtual {v0}, Lj/L;->g()Lj/D;

    move-result-object v2

    invoke-virtual {p1}, Lj/P;->x()Lj/C;

    move-result-object v7

    invoke-static {v1, v2, v7}, Lj/a/c/f;->a(Lj/t;Lj/D;Lj/C;)V

    .line 24
    invoke-virtual {p1}, Lj/P;->B()Lj/P$a;

    move-result-object v1

    .line 25
    invoke-virtual {v1, v0}, Lj/P$a;->a(Lj/L;)Lj/P$a;

    if-eqz v8, :cond_8

    const-string v0, "Content-Encoding"

    .line 26
    invoke-virtual {p1, v0}, Lj/P;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 27
    invoke-static {p1}, Lj/a/c/f;->b(Lj/P;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 28
    new-instance v2, Lk/m;

    invoke-virtual {p1}, Lj/P;->s()Lj/S;

    move-result-object v7

    invoke-virtual {v7}, Lj/S;->w()Lk/i;

    move-result-object v7

    invoke-direct {v2, v7}, Lk/m;-><init>(Lk/z;)V

    .line 29
    invoke-virtual {p1}, Lj/P;->x()Lj/C;

    move-result-object v7

    invoke-virtual {v7}, Lj/C;->a()Lj/C$a;

    move-result-object v7

    .line 30
    invoke-virtual {v7, v0}, Lj/C$a;->d(Ljava/lang/String;)Lj/C$a;

    .line 31
    invoke-virtual {v7, v6}, Lj/C$a;->d(Ljava/lang/String;)Lj/C$a;

    .line 32
    invoke-virtual {v7}, Lj/C$a;->a()Lj/C;

    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Lj/P$a;->a(Lj/C;)Lj/P$a;

    .line 34
    invoke-virtual {p1, v3}, Lj/P;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v0, Lj/a/c/i;

    invoke-static {v2}, Lk/s;->a(Lk/z;)Lk/i;

    move-result-object v2

    invoke-direct {v0, p1, v4, v5, v2}, Lj/a/c/i;-><init>(Ljava/lang/String;JLk/i;)V

    invoke-virtual {v1, v0}, Lj/P$a;->a(Lj/S;)Lj/P$a;

    .line 36
    :cond_8
    invoke-virtual {v1}, Lj/P$a;->a()Lj/P;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj/r;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-lez v2, :cond_0

    const-string v3, "; "

    .line 39
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    :cond_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lj/r;

    .line 41
    invoke-virtual {v3}, Lj/r;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lj/r;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
