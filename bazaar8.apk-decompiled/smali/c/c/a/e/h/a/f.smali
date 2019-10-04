.class public Lc/c/a/e/h/a/f;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lj/E;


# instance fields
.field public final a:Lj/a/a/j;


# direct methods
.method public constructor <init>(Lj/a/a/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/h/a/f;->a:Lj/a/a/j;

    return-void
.end method

.method public static a(Lj/C;Lj/C;)Lj/C;
    .locals 7

    .line 53
    new-instance v0, Lj/C$a;

    invoke-direct {v0}, Lj/C$a;-><init>()V

    .line 54
    invoke-virtual {p0}, Lj/C;->b()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 55
    invoke-virtual {p0, v3}, Lj/C;->a(I)Ljava/lang/String;

    move-result-object v4

    .line 56
    invoke-virtual {p0, v3}, Lj/C;->b(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    .line 57
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    invoke-static {v4}, Lc/c/a/e/h/a/f;->a(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v4}, Lc/c/a/e/h/a/f;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 59
    invoke-virtual {p1, v4}, Lj/C;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 60
    :cond_1
    sget-object v6, Lj/a/a;->a:Lj/a/a;

    invoke-virtual {v6, v0, v4, v5}, Lj/a/a;->a(Lj/C$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p1}, Lj/C;->b()I

    move-result p0

    :goto_2
    if-ge v2, p0, :cond_5

    .line 62
    invoke-virtual {p1, v2}, Lj/C;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-static {v1}, Lc/c/a/e/h/a/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Lc/c/a/e/h/a/f;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 64
    sget-object v3, Lj/a/a;->a:Lj/a/a;

    invoke-virtual {p1, v2}, Lj/C;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v1, v4}, Lj/a/a;->a(Lj/C$a;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 65
    :cond_5
    invoke-virtual {v0}, Lj/C$a;->a()Lj/C;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Content-Length"

    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    .line 67
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    .line 68
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Connection"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 6
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Lj/E$a;)Lj/P;
    .locals 5

    .line 1
    iget-object v0, p0, Lc/c/a/e/h/a/f;->a:Lj/a/a/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lj/E$a;->e()Lj/L;

    move-result-object v1

    invoke-interface {v0, v1}, Lj/a/a/j;->b(Lj/L;)Lj/P;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 4
    new-instance v3, Lj/a/a/d$a;

    invoke-interface {p1}, Lj/E$a;->e()Lj/L;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lj/a/a/d$a;-><init>(JLj/L;Lj/P;)V

    invoke-virtual {v3}, Lj/a/a/d$a;->c()Lj/a/a/d;

    move-result-object v1

    .line 5
    iget-object v2, v1, Lj/a/a/d;->a:Lj/L;

    .line 6
    iget-object v3, v1, Lj/a/a/d;->b:Lj/P;

    .line 7
    iget-object v4, p0, Lc/c/a/e/h/a/f;->a:Lj/a/a/j;

    if-eqz v4, :cond_1

    .line 8
    invoke-interface {v4, v1}, Lj/a/a/j;->a(Lj/a/a/d;)V

    :cond_1
    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    .line 9
    invoke-virtual {v0}, Lj/P;->s()Lj/S;

    move-result-object v1

    invoke-static {v1}, Lj/a/e;->a(Ljava/io/Closeable;)V

    :cond_2
    if-nez v2, :cond_3

    if-nez v3, :cond_3

    .line 10
    new-instance v0, Lj/P$a;

    invoke-direct {v0}, Lj/P$a;-><init>()V

    .line 11
    invoke-interface {p1}, Lj/E$a;->e()Lj/L;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj/P$a;->a(Lj/L;)Lj/P$a;

    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    .line 12
    invoke-virtual {v0, p1}, Lj/P$a;->a(Lokhttp3/Protocol;)Lj/P$a;

    const/16 p1, 0x1f8

    .line 13
    invoke-virtual {v0, p1}, Lj/P$a;->a(I)Lj/P$a;

    const-string p1, "Unsatisfiable Request (only-if-cached)"

    .line 14
    invoke-virtual {v0, p1}, Lj/P$a;->a(Ljava/lang/String;)Lj/P$a;

    sget-object p1, Lj/a/e;->c:Lj/S;

    .line 15
    invoke-virtual {v0, p1}, Lj/P$a;->a(Lj/S;)Lj/P$a;

    const-wide/16 v1, -0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Lj/P$a;->b(J)Lj/P$a;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj/P$a;->a(J)Lj/P$a;

    .line 18
    invoke-virtual {v0}, Lj/P$a;->a()Lj/P;

    move-result-object p1

    return-object p1

    :cond_3
    if-nez v2, :cond_4

    return-object v0

    .line 19
    :cond_4
    :try_start_0
    invoke-interface {p1, v2}, Lj/E$a;->a(Lj/L;)Lj/P;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_5

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {v0}, Lj/P;->s()Lj/S;

    move-result-object v0

    invoke-static {v0}, Lj/a/e;->a(Ljava/io/Closeable;)V

    :cond_5
    if-eqz v3, :cond_9

    .line 21
    invoke-virtual {p1}, Lj/P;->v()I

    move-result v0

    const/16 v1, 0x130

    if-ne v0, v1, :cond_8

    .line 22
    invoke-virtual {v3}, Lj/P;->B()Lj/P$a;

    move-result-object v0

    .line 23
    invoke-virtual {v3}, Lj/P;->x()Lj/C;

    move-result-object v1

    invoke-virtual {p1}, Lj/P;->x()Lj/C;

    move-result-object v2

    invoke-static {v1, v2}, Lc/c/a/e/h/a/f;->a(Lj/C;Lj/C;)Lj/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj/P$a;->a(Lj/C;)Lj/P$a;

    .line 24
    invoke-virtual {p1}, Lj/P;->G()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj/P$a;->b(J)Lj/P$a;

    .line 25
    invoke-virtual {p1}, Lj/P;->E()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lj/P$a;->a(J)Lj/P$a;

    .line 26
    invoke-virtual {v0, v3}, Lj/P$a;->a(Lj/P;)Lj/P$a;

    .line 27
    invoke-virtual {v0, p1}, Lj/P$a;->c(Lj/P;)Lj/P$a;

    .line 28
    invoke-virtual {v0}, Lj/P$a;->a()Lj/P;

    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lj/P;->s()Lj/S;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 30
    invoke-virtual {p1}, Lj/P;->s()Lj/S;

    move-result-object p1

    invoke-virtual {p1}, Lj/S;->close()V

    .line 31
    :cond_6
    iget-object p1, p0, Lc/c/a/e/h/a/f;->a:Lj/a/a/j;

    if-eqz p1, :cond_7

    .line 32
    invoke-interface {p1}, Lj/a/a/j;->a()V

    .line 33
    iget-object p1, p0, Lc/c/a/e/h/a/f;->a:Lj/a/a/j;

    invoke-interface {p1, v3, v0}, Lj/a/a/j;->a(Lj/P;Lj/P;)V

    :cond_7
    return-object v0

    .line 34
    :cond_8
    invoke-virtual {v3}, Lj/P;->s()Lj/S;

    move-result-object v0

    invoke-static {v0}, Lj/a/e;->a(Ljava/io/Closeable;)V

    .line 35
    :cond_9
    invoke-virtual {p1}, Lj/P;->B()Lj/P$a;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lj/P;->s()Lj/S;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj/P$a;->a(Lj/S;)Lj/P$a;

    .line 37
    invoke-virtual {v0}, Lj/P$a;->a()Lj/P;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lc/c/a/e/h/a/f;->a:Lj/a/a/j;

    if-eqz v0, :cond_a

    .line 39
    invoke-static {p1}, Lj/a/c/f;->b(Lj/P;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p1, v2}, Lj/a/a/d;->a(Lj/P;Lj/L;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 40
    iget-object v0, p0, Lc/c/a/e/h/a/f;->a:Lj/a/a/j;

    invoke-interface {v0, p1}, Lj/a/a/j;->a(Lj/P;)Lj/a/a/c;

    move-result-object v0

    .line 41
    invoke-virtual {p0, v0, p1}, Lc/c/a/e/h/a/f;->a(Lj/a/a/c;Lj/P;)Lj/P;

    move-result-object p1

    :cond_a
    return-object p1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_b

    .line 42
    invoke-virtual {v0}, Lj/P;->s()Lj/S;

    move-result-object v0

    invoke-static {v0}, Lj/a/e;->a(Ljava/io/Closeable;)V

    .line 43
    :cond_b
    throw p1
.end method

.method public final a(Lj/a/a/c;Lj/P;)Lj/P;
    .locals 4

    if-nez p1, :cond_0

    return-object p2

    .line 44
    :cond_0
    invoke-interface {p1}, Lj/a/a/c;->a()Lk/y;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p2

    .line 45
    :cond_1
    invoke-virtual {p2}, Lj/P;->s()Lj/S;

    move-result-object v1

    invoke-virtual {v1}, Lj/S;->w()Lk/i;

    move-result-object v1

    .line 46
    invoke-static {v0}, Lk/s;->a(Lk/y;)Lk/h;

    move-result-object v0

    .line 47
    new-instance v2, Lc/c/a/e/h/a/e;

    invoke-direct {v2, p0, v1, p1, v0}, Lc/c/a/e/h/a/e;-><init>(Lc/c/a/e/h/a/f;Lk/i;Lj/a/a/c;Lk/h;)V

    const-string p1, "Content-Type"

    .line 48
    invoke-virtual {p2, p1}, Lj/P;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 49
    invoke-virtual {p2}, Lj/P;->s()Lj/S;

    move-result-object v0

    invoke-virtual {v0}, Lj/S;->u()J

    move-result-wide v0

    .line 50
    invoke-virtual {p2}, Lj/P;->B()Lj/P$a;

    move-result-object p2

    new-instance v3, Lj/a/c/i;

    .line 51
    invoke-static {v2}, Lk/s;->a(Lk/z;)Lk/i;

    move-result-object v2

    invoke-direct {v3, p1, v0, v1, v2}, Lj/a/c/i;-><init>(Ljava/lang/String;JLk/i;)V

    invoke-virtual {p2, v3}, Lj/P$a;->a(Lj/S;)Lj/P$a;

    .line 52
    invoke-virtual {p2}, Lj/P$a;->a()Lj/P;

    move-result-object p1

    return-object p1
.end method
