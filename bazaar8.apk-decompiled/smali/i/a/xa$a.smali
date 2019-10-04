.class public final Li/a/xa$a;
.super Li/a/k;
.source "JobSupport.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/xa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/k<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final h:Li/a/xa;


# direct methods
.method public constructor <init>(Lh/c/b;Li/a/xa;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/b<",
            "-TT;>;",
            "Li/a/xa;",
            ")V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "job"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Li/a/k;-><init>(Lh/c/b;I)V

    iput-object p2, p0, Li/a/xa$a;->h:Li/a/xa;

    return-void
.end method


# virtual methods
.method public a(Li/a/ra;)Ljava/lang/Throwable;
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Li/a/xa$a;->h:Li/a/xa;

    invoke-virtual {v0}, Li/a/xa;->h()Ljava/lang/Object;

    move-result-object v0

    .line 2
    instance-of v1, v0, Li/a/xa$c;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Li/a/xa$c;

    iget-object v1, v1, Li/a/xa$c;->rootCause:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    return-object v1

    .line 3
    :cond_0
    instance-of v1, v0, Li/a/v;

    if-eqz v1, :cond_1

    check-cast v0, Li/a/v;

    iget-object p1, v0, Li/a/v;->b:Ljava/lang/Throwable;

    return-object p1

    .line 4
    :cond_1
    invoke-interface {p1}, Li/a/ra;->t()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    return-object p1
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const-string v0, "AwaitContinuation"

    return-object v0
.end method
