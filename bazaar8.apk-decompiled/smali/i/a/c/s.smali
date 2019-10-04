.class public Li/a/c/s;
.super Li/a/a;
.source "Scopes.kt"

# interfaces
.implements Lh/c/b/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/a/a<",
        "TT;>;",
        "Lh/c/b/a/c;"
    }
.end annotation


# instance fields
.field public final d:Lh/c/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh/c/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh/c/e;Lh/c/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh/c/e;",
            "Lh/c/b<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uCont"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Li/a/a;-><init>(Lh/c/e;Z)V

    iput-object p2, p0, Li/a/c/s;->d:Lh/c/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    instance-of v0, p1, Li/a/v;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    .line 2
    check-cast p1, Li/a/v;

    iget-object p1, p1, Li/a/v;->b:Ljava/lang/Throwable;

    goto :goto_0

    :cond_0
    check-cast p1, Li/a/v;

    iget-object p1, p1, Li/a/v;->b:Ljava/lang/Throwable;

    iget-object v0, p0, Li/a/c/s;->d:Lh/c/b;

    invoke-static {p1, v0}, Li/a/c/u;->a(Ljava/lang/Throwable;Lh/c/b;)Ljava/lang/Throwable;

    move-result-object p1

    .line 3
    :goto_0
    iget-object v0, p0, Li/a/c/s;->d:Lh/c/b;

    invoke-static {v0, p1, p2}, Li/a/Ja;->a(Lh/c/b;Ljava/lang/Throwable;I)V

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Li/a/c/s;->d:Lh/c/b;

    invoke-static {v0, p1, p2}, Li/a/Ja;->b(Lh/c/b;Ljava/lang/Object;I)V

    :goto_1
    return-void
.end method

.method public final c()Lh/c/b/a/c;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/c/s;->d:Lh/c/b;

    check-cast v0, Lh/c/b/a/c;

    return-object v0
.end method

.method public final d()Ljava/lang/StackTraceElement;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
