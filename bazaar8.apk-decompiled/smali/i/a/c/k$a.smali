.class public abstract Li/a/c/k$a;
.super Li/a/c/c;
.source "LockFreeLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/c/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Li/a/c/c<",
        "Li/a/c/k;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Li/a/c/k;

.field public final c:Li/a/c/k;


# direct methods
.method public constructor <init>(Li/a/c/k;)V
    .locals 1

    const-string v0, "newNode"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Li/a/c/c;-><init>()V

    iput-object p1, p0, Li/a/c/k$a;->c:Li/a/c/k;

    return-void
.end method


# virtual methods
.method public a(Li/a/c/k;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "affected"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget-object v0, p0, Li/a/c/k$a;->c:Li/a/c/k;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Li/a/c/k$a;->b:Li/a/c/k;

    :goto_1
    if-eqz v0, :cond_3

    .line 3
    sget-object v1, Li/a/c/k;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 4
    iget-object p1, p0, Li/a/c/k$a;->c:Li/a/c/k;

    iget-object p2, p0, Li/a/c/k$a;->b:Li/a/c/k;

    if-eqz p2, :cond_2

    invoke-static {p1, p2}, Li/a/c/k;->a(Li/a/c/k;Li/a/c/k;)V

    goto :goto_2

    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    const/4 p1, 0x0

    throw p1

    :cond_3
    :goto_2
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Li/a/c/k;

    invoke-virtual {p0, p1, p2}, Li/a/c/k$a;->a(Li/a/c/k;Ljava/lang/Object;)V

    return-void
.end method
