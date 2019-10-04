.class public abstract Li/a/C;
.super Lh/c/a;
.source "CoroutineDispatcher.kt"

# interfaces
.implements Lh/c/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lh/c/c;->c:Lh/c/c$b;

    invoke-direct {p0, v0}, Lh/c/a;-><init>(Lh/c/e$c;)V

    return-void
.end method


# virtual methods
.method public abstract a(Lh/c/e;Ljava/lang/Runnable;)V
.end method

.method public b(Lh/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lh/c/c$a;->a(Lh/c/c;Lh/c/b;)V

    return-void
.end method

.method public b(Lh/c/e;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lh/c/b;)Lh/c/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lh/c/b<",
            "-TT;>;)",
            "Lh/c/b<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "continuation"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Li/a/Q;

    invoke-direct {v0, p0, p1}, Li/a/Q;-><init>(Li/a/C;Lh/c/b;)V

    return-object v0
.end method

.method public get(Lh/c/e$c;)Lh/c/e$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Lh/c/e$b;",
            ">(",
            "Lh/c/e$c<",
            "TE;>;)TE;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lh/c/c$a;->a(Lh/c/c;Lh/c/e$c;)Lh/c/e$b;

    move-result-object p1

    return-object p1
.end method

.method public minusKey(Lh/c/e$c;)Lh/c/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/e$c<",
            "*>;)",
            "Lh/c/e;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lh/c/c$a;->b(Lh/c/c;Lh/c/e$c;)Lh/c/e;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Li/a/L;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Li/a/L;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
