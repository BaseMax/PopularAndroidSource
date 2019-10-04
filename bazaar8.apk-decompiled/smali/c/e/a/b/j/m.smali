.class public final Lc/e/a/b/j/m;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/j/b;
.implements Lc/e/a/b/j/d;
.implements Lc/e/a/b/j/e;
.implements Lc/e/a/b/j/y;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/e/a/b/j/b;",
        "Lc/e/a/b/j/d;",
        "Lc/e/a/b/j/e<",
        "TTContinuationResult;>;",
        "Lc/e/a/b/j/y<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lc/e/a/b/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/j/a<",
            "TTResult;",
            "Lc/e/a/b/j/g<",
            "TTContinuationResult;>;>;"
        }
    .end annotation
.end field

.field public final c:Lc/e/a/b/j/B;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/j/B<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lc/e/a/b/j/a;Lc/e/a/b/j/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lc/e/a/b/j/a<",
            "TTResult;",
            "Lc/e/a/b/j/g<",
            "TTContinuationResult;>;>;",
            "Lc/e/a/b/j/B<",
            "TTContinuationResult;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/j/m;->a:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p2, p0, Lc/e/a/b/j/m;->b:Lc/e/a/b/j/a;

    .line 4
    iput-object p3, p0, Lc/e/a/b/j/m;->c:Lc/e/a/b/j/B;

    return-void
.end method

.method public static synthetic a(Lc/e/a/b/j/m;)Lc/e/a/b/j/a;
    .locals 0

    .line 5
    iget-object p0, p0, Lc/e/a/b/j/m;->b:Lc/e/a/b/j/a;

    return-object p0
.end method

.method public static synthetic b(Lc/e/a/b/j/m;)Lc/e/a/b/j/B;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/b/j/m;->c:Lc/e/a/b/j/B;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lc/e/a/b/j/m;->c:Lc/e/a/b/j/B;

    invoke-virtual {v0}, Lc/e/a/b/j/B;->f()Z

    return-void
.end method

.method public final a(Lc/e/a/b/j/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/a/b/j/g<",
            "TTResult;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/a/b/j/m;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lc/e/a/b/j/n;

    invoke-direct {v1, p0, p1}, Lc/e/a/b/j/n;-><init>(Lc/e/a/b/j/m;Lc/e/a/b/j/g;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/e/a/b/j/m;->c:Lc/e/a/b/j/B;

    invoke-virtual {v0, p1}, Lc/e/a/b/j/B;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTContinuationResult;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/a/b/j/m;->c:Lc/e/a/b/j/B;

    invoke-virtual {v0, p1}, Lc/e/a/b/j/B;->a(Ljava/lang/Object;)V

    return-void
.end method
