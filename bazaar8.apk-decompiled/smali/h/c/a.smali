.class public abstract Lh/c/a;
.super Ljava/lang/Object;
.source "CoroutineContextImpl.kt"

# interfaces
.implements Lh/c/e$b;


# instance fields
.field public final key:Lh/c/e$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/c/e$c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/c/e$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/e$c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/c/a;->key:Lh/c/e$c;

    return-void
.end method


# virtual methods
.method public fold(Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(TR;",
            "Lh/f/a/c<",
            "-TR;-",
            "Lh/c/e$b;",
            "+TR;>;)TR;"
        }
    .end annotation

    const-string v0, "operation"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lh/c/e$b$a;->a(Lh/c/e$b;Ljava/lang/Object;Lh/f/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
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
    invoke-static {p0, p1}, Lh/c/e$b$a;->a(Lh/c/e$b;Lh/c/e$c;)Lh/c/e$b;

    move-result-object p1

    return-object p1
.end method

.method public getKey()Lh/c/e$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lh/c/e$c<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lh/c/a;->key:Lh/c/e$c;

    return-object v0
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
    invoke-static {p0, p1}, Lh/c/e$b$a;->b(Lh/c/e$b;Lh/c/e$c;)Lh/c/e;

    move-result-object p1

    return-object p1
.end method

.method public plus(Lh/c/e;)Lh/c/e;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lh/c/e$b$a;->a(Lh/c/e$b;Lh/c/e;)Lh/c/e;

    move-result-object p1

    return-object p1
.end method
