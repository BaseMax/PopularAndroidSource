.class public final Lc/c/a/e/h/b/a;
.super Ljava/lang/Object;
.source "AuthenticatorInterceptor.kt"

# interfaces
.implements Lj/c;


# instance fields
.field public final a:Lc/c/a/e/d/a/c;


# direct methods
.method public constructor <init>(Lc/c/a/e/d/a/c;)V
    .locals 1

    const-string v0, "tokenRepository"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/e/h/b/a;->a:Lc/c/a/e/d/a/c;

    return-void
.end method


# virtual methods
.method public a(Lj/T;Lj/P;)Lj/L;
    .locals 3

    const-string p1, "response"

    invoke-static {p2, p1}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lc/c/a/e/h/b/a;->a:Lc/c/a/e/d/a/c;

    invoke-virtual {p1}, Lc/c/a/e/d/a/c;->b()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lc/c/a/e/h/b/a;->a:Lc/c/a/e/d/a/c;

    invoke-virtual {p1}, Lc/c/a/e/d/a/c;->e()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p2}, Lj/P;->F()Lj/L;

    move-result-object p2

    invoke-virtual {p2}, Lj/L;->f()Lj/L$a;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bearer "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authorization"

    invoke-virtual {p2, v0, p1}, Lj/L$a;->b(Ljava/lang/String;Ljava/lang/String;)Lj/L$a;

    invoke-virtual {p2}, Lj/L$a;->a()Lj/L;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
