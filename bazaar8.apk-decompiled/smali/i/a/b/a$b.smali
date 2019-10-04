.class public final Li/a/b/a$b;
.super Ljava/lang/Object;
.source "AbstractChannel.kt"

# interfaces
.implements Li/a/b/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/a/b/k<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Li/a/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/a<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/a/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/a<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li/a/b/a$b;->b:Li/a/b/a;

    .line 2
    sget-object p1, Li/a/b/c;->c:Ljava/lang/Object;

    iput-object p1, p0, Li/a/b/a$b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()Li/a/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/a/b/a<",
            "TE;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/b/a$b;->b:Li/a/b/a;

    return-object v0
.end method

.method public a(Lh/c/b;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Li/a/b/a$b;->a:Ljava/lang/Object;

    sget-object v1, Li/a/b/c;->c:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Li/a/b/a$b;->a(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Li/a/b/a$b;->b:Li/a/b/a;

    invoke-virtual {v0}, Li/a/b/a;->s()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Li/a/b/a$b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Li/a/b/a$b;->a:Ljava/lang/Object;

    sget-object v1, Li/a/b/c;->c:Ljava/lang/Object;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Li/a/b/a$b;->a(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Li/a/b/a$b;->b(Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1

    .line 6
    instance-of v0, p1, Li/a/b/o;

    if-eqz v0, :cond_1

    .line 7
    check-cast p1, Li/a/b/o;

    iget-object v0, p1, Li/a/b/o;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p1}, Li/a/b/o;->r()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Li/a/c/u;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public final synthetic b(Lh/c/b;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    new-instance v0, Li/a/k;

    invoke-static {p1}, Lh/c/a/a;->a(Lh/c/b;)Lh/c/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Li/a/k;-><init>(Lh/c/b;I)V

    .line 3
    new-instance v1, Li/a/b/a$c;

    invoke-direct {v1, p0, v0}, Li/a/b/a$c;-><init>(Li/a/b/a$b;Li/a/j;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Li/a/b/a$b;->a()Li/a/b/a;

    move-result-object v3

    invoke-static {v3, v1}, Li/a/b/a;->a(Li/a/b/a;Li/a/b/s;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {p0}, Li/a/b/a$b;->a()Li/a/b/a;

    move-result-object v2

    invoke-static {v2, v0, v1}, Li/a/b/a;->a(Li/a/b/a;Li/a/j;Li/a/b/s;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Li/a/b/a$b;->a()Li/a/b/a;

    move-result-object v3

    invoke-virtual {v3}, Li/a/b/a;->s()Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-virtual {p0, v3}, Li/a/b/a$b;->b(Ljava/lang/Object;)V

    .line 8
    instance-of v4, v3, Li/a/b/o;

    if-eqz v4, :cond_3

    .line 9
    check-cast v3, Li/a/b/o;

    iget-object v1, v3, Li/a/b/o;->d:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    .line 10
    invoke-static {v2}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {v3}, Li/a/b/o;->r()Ljava/lang/Throwable;

    move-result-object v1

    sget-object v2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v1}, Lh/e;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 12
    :cond_3
    sget-object v4, Li/a/b/c;->c:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    const/4 v1, 0x1

    .line 13
    invoke-static {v1}, Lh/c/b/a/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v2, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1}, Lh/c/b;->b(Ljava/lang/Object;)V

    .line 14
    :goto_0
    invoke-virtual {v0}, Li/a/k;->h()Ljava/lang/Object;

    move-result-object v0

    .line 15
    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Lh/c/b/a/f;->c(Lh/c/b;)V

    :cond_4
    return-object v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Li/a/b/a$b;->a:Ljava/lang/Object;

    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/b/a$b;->a:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Li/a/b/o;

    if-nez v1, :cond_1

    .line 3
    sget-object v1, Li/a/b/c;->c:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 4
    iput-object v1, p0, Li/a/b/a$b;->a:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "\'hasNext\' should be called prior to \'next\' invocation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    check-cast v0, Li/a/b/o;

    invoke-virtual {v0}, Li/a/b/o;->r()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Li/a/c/u;->b(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method
