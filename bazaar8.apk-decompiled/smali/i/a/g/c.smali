.class public final Li/a/g/c;
.super Ljava/lang/Object;
.source "Mutex.kt"

# interfaces
.implements Li/a/g/b;
.implements Li/a/f/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/a/g/c$c;,
        Li/a/g/c$b;,
        Li/a/g/c$a;,
        Li/a/g/c$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Li/a/g/b;",
        "Li/a/f/c<",
        "Ljava/lang/Object;",
        "Li/a/g/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field public volatile _state:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Li/a/g/c;

    const-class v1, Ljava/lang/Object;

    const-string v2, "_state"

    invoke-static {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Li/a/g/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Li/a/g/e;->a()Li/a/g/a;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Li/a/g/e;->b()Li/a/g/a;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Li/a/g/c;->_state:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Li/a/g/c;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Li/a/g/c;->b(Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 7

    .line 3
    :cond_0
    :goto_0
    iget-object v0, p0, Li/a/g/c;->_state:Ljava/lang/Object;

    .line 4
    instance-of v1, v0, Li/a/g/a;

    const-string v2, " but expected "

    const-string v3, "Mutex is locked by "

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    if-nez p1, :cond_3

    .line 5
    move-object v1, v0

    check-cast v1, Li/a/g/a;

    iget-object v1, v1, Li/a/g/a;->a:Ljava/lang/Object;

    invoke-static {}, Li/a/g/e;->d()Li/a/c/v;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Mutex is not locked"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    move-object v1, v0

    check-cast v1, Li/a/g/a;

    iget-object v6, v1, Li/a/g/a;->a:Ljava/lang/Object;

    if-ne v6, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_5

    .line 7
    :goto_3
    sget-object v1, Li/a/g/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {}, Li/a/g/e;->b()Li/a/g/a;

    move-result-object v2

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Li/a/g/a;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_6
    instance-of v1, v0, Li/a/c/q;

    if-eqz v1, :cond_7

    check-cast v0, Li/a/c/q;

    invoke-virtual {v0, p0}, Li/a/c/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 10
    :cond_7
    instance-of v1, v0, Li/a/g/c$c;

    if-eqz v1, :cond_d

    if-eqz p1, :cond_a

    .line 11
    move-object v1, v0

    check-cast v1, Li/a/g/c$c;

    iget-object v6, v1, Li/a/g/c$c;->d:Ljava/lang/Object;

    if-ne v6, p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Li/a/g/c$c;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_a
    :goto_5
    move-object v1, v0

    check-cast v1, Li/a/g/c$c;

    invoke-virtual {v1}, Li/a/c/k;->o()Li/a/c/k;

    move-result-object v2

    if-nez v2, :cond_b

    .line 13
    new-instance v2, Li/a/g/c$d;

    invoke-direct {v2, v1}, Li/a/g/c$d;-><init>(Li/a/g/c$c;)V

    .line 14
    sget-object v1, Li/a/g/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2, p0}, Li/a/g/c$d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 15
    :cond_b
    check-cast v2, Li/a/g/c$b;

    invoke-virtual {v2}, Li/a/g/c$b;->q()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    iget-object p1, v2, Li/a/g/c$b;->d:Ljava/lang/Object;

    if-eqz p1, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {}, Li/a/g/e;->c()Li/a/c/v;

    move-result-object p1

    :goto_6
    iput-object p1, v1, Li/a/g/c$c;->d:Ljava/lang/Object;

    .line 17
    invoke-virtual {v2, v0}, Li/a/g/c$b;->c(Ljava/lang/Object;)V

    return-void

    .line 18
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method

.method public final synthetic b(Ljava/lang/Object;Lh/c/b;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lh/c/b<",
            "-",
            "Lh/h;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    .line 10
    new-instance v10, Li/a/k;

    invoke-static/range {p2 .. p2}, Lh/c/a/a;->a(Lh/c/b;)Lh/c/b;

    move-result-object v0

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Li/a/k;-><init>(Lh/c/b;I)V

    .line 11
    new-instance v12, Li/a/g/c$a;

    invoke-direct {v12, v9, v10}, Li/a/g/c$a;-><init>(Ljava/lang/Object;Li/a/j;)V

    .line 12
    :cond_0
    :goto_0
    iget-object v3, v8, Li/a/g/c;->_state:Ljava/lang/Object;

    .line 13
    instance-of v0, v3, Li/a/g/a;

    if-eqz v0, :cond_3

    .line 14
    move-object v0, v3

    check-cast v0, Li/a/g/a;

    iget-object v1, v0, Li/a/g/a;->a:Ljava/lang/Object;

    invoke-static {}, Li/a/g/e;->d()Li/a/c/v;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 15
    sget-object v1, Li/a/g/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    new-instance v2, Li/a/g/c$c;

    iget-object v0, v0, Li/a/g/a;->a:Ljava/lang/Object;

    invoke-direct {v2, v0}, Li/a/g/c$c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v8, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v9, :cond_2

    .line 16
    invoke-static {}, Li/a/g/e;->a()Li/a/g/a;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Li/a/g/a;

    invoke-direct {v0, v9}, Li/a/g/a;-><init>(Ljava/lang/Object;)V

    .line 17
    :goto_1
    sget-object v1, Li/a/g/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v8, v3, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lh/h;->a:Lh/h;

    sget-object v1, Lkotlin/Result;->a:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/Result;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v10, v0}, Lh/c/b;->b(Ljava/lang/Object;)V

    goto :goto_4

    .line 19
    :cond_3
    instance-of v0, v3, Li/a/g/c$c;

    if-eqz v0, :cond_a

    .line 20
    move-object v13, v3

    check-cast v13, Li/a/g/c$c;

    iget-object v0, v13, Li/a/g/c$c;->d:Ljava/lang/Object;

    const/4 v14, 0x1

    if-eq v0, v9, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_9

    .line 21
    new-instance v15, Li/a/g/d;

    move-object v0, v15

    move-object v1, v12

    move-object v2, v12

    move-object v4, v10

    move-object v5, v12

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-direct/range {v0 .. v7}, Li/a/g/d;-><init>(Li/a/c/k;Li/a/c/k;Ljava/lang/Object;Li/a/j;Li/a/g/c$a;Li/a/g/c;Ljava/lang/Object;)V

    .line 22
    :goto_3
    invoke-virtual {v13}, Li/a/c/k;->h()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    check-cast v0, Li/a/c/k;

    .line 23
    invoke-virtual {v0, v12, v13, v15}, Li/a/c/k;->a(Li/a/c/k;Li/a/c/k;Li/a/c/k$a;)I

    move-result v0

    if-eq v0, v14, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    :cond_6
    if-eqz v14, :cond_0

    .line 24
    invoke-static {v10, v12}, Li/a/l;->a(Li/a/j;Li/a/c/k;)V

    .line 25
    :goto_4
    invoke-virtual {v10}, Li/a/k;->h()Ljava/lang/Object;

    move-result-object v0

    .line 26
    invoke-static {}, Lh/c/a/b;->a()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_7

    invoke-static/range {p2 .. p2}, Lh/c/b/a/f;->c(Lh/c/b;)V

    :cond_7
    return-object v0

    .line 27
    :cond_8
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already locked by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_a
    instance-of v0, v3, Li/a/c/q;

    if-eqz v0, :cond_b

    check-cast v3, Li/a/c/q;

    invoke-virtual {v3, v8}, Li/a/c/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 30
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Li/a/g/c;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Li/a/g/a;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 3
    move-object v1, v0

    check-cast v1, Li/a/g/a;

    iget-object v1, v1, Li/a/g/a;->a:Ljava/lang/Object;

    invoke-static {}, Li/a/g/e;->d()Li/a/c/v;

    move-result-object v4

    if-eq v1, v4, :cond_1

    return v3

    :cond_1
    if-nez p1, :cond_2

    .line 4
    invoke-static {}, Li/a/g/e;->a()Li/a/g/a;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Li/a/g/a;

    invoke-direct {v1, p1}, Li/a/g/a;-><init>(Ljava/lang/Object;)V

    .line 5
    :goto_1
    sget-object v3, Li/a/g/c;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v3, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 6
    :cond_3
    instance-of v1, v0, Li/a/g/c$c;

    if-eqz v1, :cond_6

    .line 7
    check-cast v0, Li/a/g/c$c;

    iget-object v0, v0, Li/a/g/c$c;->d:Ljava/lang/Object;

    if-eq v0, p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_5

    return v3

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already locked by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 8
    :cond_6
    instance-of v1, v0, Li/a/c/q;

    if-eqz v1, :cond_7

    check-cast v0, Li/a/c/q;

    invoke-virtual {v0, p0}, Li/a/c/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    :goto_0
    iget-object v0, p0, Li/a/g/c;->_state:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Li/a/g/a;

    const/16 v2, 0x5d

    const-string v3, "Mutex["

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Li/a/g/a;

    iget-object v0, v0, Li/a/g/a;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    instance-of v1, v0, Li/a/c/q;

    if-eqz v1, :cond_1

    check-cast v0, Li/a/c/q;

    invoke-virtual {v0, p0}, Li/a/c/q;->a(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v1, v0, Li/a/g/c$c;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v0, Li/a/g/c$c;

    iget-object v0, v0, Li/a/g/c$c;->d:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
