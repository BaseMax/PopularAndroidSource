.class public final Li/a/g/c$d;
.super Li/a/c/q;
.source "Mutex.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field public final a:Li/a/g/c$c;


# direct methods
.method public constructor <init>(Li/a/g/c$c;)V
    .locals 1

    const-string v0, "queue"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Li/a/c/q;-><init>()V

    iput-object p1, p0, Li/a/g/c$d;->a:Li/a/g/c$c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Li/a/g/c$d;->a:Li/a/g/c$c;

    invoke-virtual {v0}, Li/a/c/i;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Li/a/g/e;->b()Li/a/g/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Li/a/g/c$d;->a:Li/a/g/c$c;

    :goto_0
    if-eqz p1, :cond_2

    .line 3
    check-cast p1, Li/a/g/c;

    sget-object v1, Li/a/g/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p1, Li/a/g/c;->_state:Ljava/lang/Object;

    iget-object v0, p0, Li/a/g/c$d;->a:Li/a/g/c$c;

    if-ne p1, v0, :cond_1

    invoke-static {}, Li/a/g/e;->e()Li/a/c/v;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.sync.MutexImpl"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
