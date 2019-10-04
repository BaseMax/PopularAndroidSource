.class public final Lc/c/a/e/h/b/f;
.super Ljava/lang/Object;
.source "TokenInterceptor.kt"

# interfaces
.implements Lj/E;


# instance fields
.field public final a:Lc/c/a/e/d/a/c;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/a/c;)V
    .locals 1

    const-string v0, "tokenRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/h/b/f;->a:Lc/c/a/e/d/a/c;

    return-void
.end method


# virtual methods
.method public a(Lj/E$a;)Lj/P;
    .locals 5

    const-string v0, "chain"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lj/E$a;->e()Lj/L;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lc/c/a/e/h/b/f;->a:Lc/c/a/e/d/a/c;

    invoke-virtual {v1}, Lc/c/a/e/d/a/c;->a()Ljava/lang/String;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lc/c/a/e/h/b/f;->a:Lc/c/a/e/d/a/c;

    invoke-virtual {v2}, Lc/c/a/e/d/a/c;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 5
    iget-object v1, p0, Lc/c/a/e/h/b/f;->a:Lc/c/a/e/d/a/c;

    invoke-virtual {v1}, Lc/c/a/e/d/a/c;->e()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v3, "originalRequest"

    .line 6
    invoke-static {v0, v3}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/c/a/e/h/b/f;->a(Lj/L;)Z

    move-result v3

    if-nez v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {v0}, Lj/L;->f()Lj/L$a;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bearer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Authorization"

    invoke-virtual {v2, v3, v1}, Lj/L$a;->b(Ljava/lang/String;Ljava/lang/String;)Lj/L$a;

    .line 9
    invoke-virtual {v0}, Lj/L;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lj/L;->a()Lj/O;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lj/L$a;->a(Ljava/lang/String;Lj/O;)Lj/L$a;

    .line 10
    invoke-virtual {v2}, Lj/L$a;->a()Lj/L;

    move-result-object v0

    invoke-interface {p1, v0}, Lj/E$a;->a(Lj/L;)Lj/P;

    move-result-object p1

    const-string v0, "chain.proceed(requestBuilder.build())"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 11
    :cond_3
    :goto_1
    invoke-interface {p1, v0}, Lj/E$a;->a(Lj/L;)Lj/P;

    move-result-object p1

    const-string v0, "chain.proceed(originalRequest)"

    invoke-static {p1, v0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a(Lj/L;)Z
    .locals 1

    const-string v0, "Authorization"

    .line 12
    invoke-virtual {p1, v0}, Lj/L;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    xor-int/2addr p1, v0

    return p1
.end method
