.class public final Lj/a/c/b;
.super Ljava/lang/Object;
.source "CallServerInterceptor.java"

# interfaces
.implements Lj/E;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/a/c/b$a;
    }
.end annotation


# instance fields
.field public final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lj/a/c/b;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lj/E$a;)Lj/P;
    .locals 11

    .line 1
    check-cast p1, Lj/a/c/h;

    .line 2
    invoke-virtual {p1}, Lj/a/c/h;->h()Lj/a/c/c;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lj/a/c/h;->i()Lj/a/b/f;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lj/a/c/h;->c()Lj/n;

    move-result-object v2

    check-cast v2, Lj/a/b/c;

    .line 5
    invoke-virtual {p1}, Lj/a/c/h;->e()Lj/L;

    move-result-object v3

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 7
    invoke-virtual {p1}, Lj/a/c/h;->g()Lj/z;

    move-result-object v6

    invoke-virtual {p1}, Lj/a/c/h;->f()Lj/i;

    move-result-object v7

    invoke-virtual {v6, v7}, Lj/z;->d(Lj/i;)V

    .line 8
    invoke-interface {v0, v3}, Lj/a/c/c;->a(Lj/L;)V

    .line 9
    invoke-virtual {p1}, Lj/a/c/h;->g()Lj/z;

    move-result-object v6

    invoke-virtual {p1}, Lj/a/c/h;->f()Lj/i;

    move-result-object v7

    invoke-virtual {v6, v7, v3}, Lj/z;->a(Lj/i;Lj/L;)V

    .line 10
    invoke-virtual {v3}, Lj/L;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lj/a/c/g;->b(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v3}, Lj/L;->a()Lj/O;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string v6, "Expect"

    .line 11
    invoke-virtual {v3, v6}, Lj/L;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "100-continue"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 12
    invoke-interface {v0}, Lj/a/c/c;->b()V

    .line 13
    invoke-virtual {p1}, Lj/a/c/h;->g()Lj/z;

    move-result-object v6

    invoke-virtual {p1}, Lj/a/c/h;->f()Lj/i;

    move-result-object v7

    invoke-virtual {v6, v7}, Lj/z;->f(Lj/i;)V

    const/4 v6, 0x1

    .line 14
    invoke-interface {v0, v6}, Lj/a/c/c;->a(Z)Lj/P$a;

    move-result-object v7

    :cond_0
    if-nez v7, :cond_1

    .line 15
    invoke-virtual {p1}, Lj/a/c/h;->g()Lj/z;

    move-result-object v2

    invoke-virtual {p1}, Lj/a/c/h;->f()Lj/i;

    move-result-object v6

    invoke-virtual {v2, v6}, Lj/z;->c(Lj/i;)V

    .line 16
    invoke-virtual {v3}, Lj/L;->a()Lj/O;

    move-result-object v2

    invoke-virtual {v2}, Lj/O;->a()J

    move-result-wide v8

    .line 17
    new-instance v2, Lj/a/c/b$a;

    .line 18
    invoke-interface {v0, v3, v8, v9}, Lj/a/c/c;->a(Lj/L;J)Lk/y;

    move-result-object v6

    invoke-direct {v2, v6}, Lj/a/c/b$a;-><init>(Lk/y;)V

    .line 19
    invoke-static {v2}, Lk/s;->a(Lk/y;)Lk/h;

    move-result-object v6

    .line 20
    invoke-virtual {v3}, Lj/L;->a()Lj/O;

    move-result-object v8

    invoke-virtual {v8, v6}, Lj/O;->a(Lk/h;)V

    .line 21
    invoke-interface {v6}, Lk/y;->close()V

    .line 22
    invoke-virtual {p1}, Lj/a/c/h;->g()Lj/z;

    move-result-object v6

    .line 23
    invoke-virtual {p1}, Lj/a/c/h;->f()Lj/i;

    move-result-object v8

    iget-wide v9, v2, Lj/a/c/b$a;->b:J

    invoke-virtual {v6, v8, v9, v10}, Lj/z;->a(Lj/i;J)V

    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v2}, Lj/a/b/c;->e()Z

    move-result v2

    if-nez v2, :cond_2

    .line 25
    invoke-virtual {v1}, Lj/a/b/f;->e()V

    .line 26
    :cond_2
    :goto_0
    invoke-interface {v0}, Lj/a/c/c;->a()V

    const/4 v2, 0x0

    if-nez v7, :cond_3

    .line 27
    invoke-virtual {p1}, Lj/a/c/h;->g()Lj/z;

    move-result-object v6

    invoke-virtual {p1}, Lj/a/c/h;->f()Lj/i;

    move-result-object v7

    invoke-virtual {v6, v7}, Lj/z;->f(Lj/i;)V

    .line 28
    invoke-interface {v0, v2}, Lj/a/c/c;->a(Z)Lj/P$a;

    move-result-object v7

    .line 29
    :cond_3
    invoke-virtual {v7, v3}, Lj/P$a;->a(Lj/L;)Lj/P$a;

    .line 30
    invoke-virtual {v1}, Lj/a/b/f;->c()Lj/a/b/c;

    move-result-object v6

    invoke-virtual {v6}, Lj/a/b/c;->d()Lj/B;

    move-result-object v6

    invoke-virtual {v7, v6}, Lj/P$a;->a(Lj/B;)Lj/P$a;

    .line 31
    invoke-virtual {v7, v4, v5}, Lj/P$a;->b(J)Lj/P$a;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lj/P$a;->a(J)Lj/P$a;

    .line 33
    invoke-virtual {v7}, Lj/P$a;->a()Lj/P;

    move-result-object v6

    .line 34
    invoke-virtual {v6}, Lj/P;->v()I

    move-result v7

    const/16 v8, 0x64

    if-ne v7, v8, :cond_4

    .line 35
    invoke-interface {v0, v2}, Lj/a/c/c;->a(Z)Lj/P$a;

    move-result-object v2

    .line 36
    invoke-virtual {v2, v3}, Lj/P$a;->a(Lj/L;)Lj/P$a;

    .line 37
    invoke-virtual {v1}, Lj/a/b/f;->c()Lj/a/b/c;

    move-result-object v3

    invoke-virtual {v3}, Lj/a/b/c;->d()Lj/B;

    move-result-object v3

    invoke-virtual {v2, v3}, Lj/P$a;->a(Lj/B;)Lj/P$a;

    .line 38
    invoke-virtual {v2, v4, v5}, Lj/P$a;->b(J)Lj/P$a;

    .line 39
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lj/P$a;->a(J)Lj/P$a;

    .line 40
    invoke-virtual {v2}, Lj/P$a;->a()Lj/P;

    move-result-object v6

    .line 41
    invoke-virtual {v6}, Lj/P;->v()I

    move-result v7

    .line 42
    :cond_4
    invoke-virtual {p1}, Lj/a/c/h;->g()Lj/z;

    move-result-object v2

    .line 43
    invoke-virtual {p1}, Lj/a/c/h;->f()Lj/i;

    move-result-object p1

    invoke-virtual {v2, p1, v6}, Lj/z;->a(Lj/i;Lj/P;)V

    .line 44
    iget-boolean p1, p0, Lj/a/c/b;->a:Z

    if-eqz p1, :cond_5

    const/16 p1, 0x65

    if-ne v7, p1, :cond_5

    .line 45
    invoke-virtual {v6}, Lj/P;->B()Lj/P$a;

    move-result-object p1

    sget-object v0, Lj/a/e;->c:Lj/S;

    .line 46
    invoke-virtual {p1, v0}, Lj/P$a;->a(Lj/S;)Lj/P$a;

    .line 47
    invoke-virtual {p1}, Lj/P$a;->a()Lj/P;

    move-result-object p1

    goto :goto_1

    .line 48
    :cond_5
    invoke-virtual {v6}, Lj/P;->B()Lj/P$a;

    move-result-object p1

    .line 49
    invoke-interface {v0, v6}, Lj/a/c/c;->a(Lj/P;)Lj/S;

    move-result-object v0

    invoke-virtual {p1, v0}, Lj/P$a;->a(Lj/S;)Lj/P$a;

    .line 50
    invoke-virtual {p1}, Lj/P$a;->a()Lj/P;

    move-result-object p1

    .line 51
    :goto_1
    invoke-virtual {p1}, Lj/P;->F()Lj/L;

    move-result-object v0

    const-string v2, "Connection"

    invoke-virtual {v0, v2}, Lj/L;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "close"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 52
    invoke-virtual {p1, v2}, Lj/P;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 53
    :cond_6
    invoke-virtual {v1}, Lj/a/b/f;->e()V

    :cond_7
    const/16 v0, 0xcc

    if-eq v7, v0, :cond_8

    const/16 v0, 0xcd

    if-ne v7, v0, :cond_9

    .line 54
    :cond_8
    invoke-virtual {p1}, Lj/P;->s()Lj/S;

    move-result-object v0

    invoke-virtual {v0}, Lj/S;->u()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_a

    :cond_9
    return-object p1

    .line 55
    :cond_a
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " had non-zero Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Lj/P;->s()Lj/S;

    move-result-object p1

    invoke-virtual {p1}, Lj/S;->u()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
