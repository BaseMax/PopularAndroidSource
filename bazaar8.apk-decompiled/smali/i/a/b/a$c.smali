.class public final Li/a/b/a$c;
.super Li/a/b/s;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/b/s<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final d:Li/a/b/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/a$b<",
            "TE;>;"
        }
    .end annotation
.end field

.field public final e:Li/a/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li/a/b/a$b;Li/a/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/a$b<",
            "TE;>;",
            "Li/a/j<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "iterator"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cont"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Li/a/b/s;-><init>()V

    iput-object p1, p0, Li/a/b/a$c;->d:Li/a/b/a$b;

    iput-object p2, p0, Li/a/b/a$c;->e:Li/a/j;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Li/a/b/a$c;->e:Li/a/j;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Li/a/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 2
    new-instance p2, Li/a/b/a$a;

    invoke-direct {p2, v0, p1}, Li/a/b/a$a;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    .line 3
    :cond_0
    iget-object p2, p0, Li/a/b/a$c;->d:Li/a/b/a$b;

    invoke-virtual {p2, p1}, Li/a/b/a$b;->b(Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public a(Li/a/b/o;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/o<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "closed"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p1, Li/a/b/o;->d:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Li/a/b/a$c;->e:Li/a/j;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, v3}, Li/a/j$a;->a(Li/a/j;Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Li/a/b/a$c;->e:Li/a/j;

    invoke-virtual {p1}, Li/a/b/o;->r()Ljava/lang/Throwable;

    move-result-object v1

    iget-object v2, p0, Li/a/b/a$c;->e:Li/a/j;

    invoke-static {v1, v2}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Li/a/j;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Li/a/b/a$c;->d:Li/a/b/a$b;

    invoke-virtual {v1, p1}, Li/a/b/a$b;->b(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Li/a/b/a$c;->e:Li/a/j;

    invoke-interface {p1, v0}, Li/a/j;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Li/a/b/a$a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Li/a/b/a$c;->d:Li/a/b/a$b;

    check-cast p1, Li/a/b/a$a;

    iget-object v1, p1, Li/a/b/a$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Li/a/b/a$b;->b(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Li/a/b/a$c;->e:Li/a/j;

    iget-object p1, p1, Li/a/b/a$a;->a:Ljava/lang/Object;

    invoke-interface {v0, p1}, Li/a/j;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Li/a/b/a$c;->e:Li/a/j;

    invoke-interface {v0, p1}, Li/a/j;->c(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "ReceiveHasNext"

    return-object v0
.end method
