.class final Lio/reactivex/internal/operators/e/b$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        "Lio/reactivex/b/c;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/al;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/al<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/operators/e/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/e/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/reactivex/al;Lio/reactivex/internal/operators/e/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TT;>;",
            "Lio/reactivex/internal/operators/e/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 162
    iput-object p1, p0, Lio/reactivex/internal/operators/e/b$a;->a:Lio/reactivex/al;

    .line 163
    iput-object p2, p0, Lio/reactivex/internal/operators/e/b$a;->b:Lio/reactivex/internal/operators/e/b;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 173
    invoke-virtual {p0, v0, v1}, Lio/reactivex/internal/operators/e/b$a;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lio/reactivex/internal/operators/e/b$a;->b:Lio/reactivex/internal/operators/e/b;

    invoke-virtual {v0, p0}, Lio/reactivex/internal/operators/e/b;->a(Lio/reactivex/internal/operators/e/b$a;)V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 168
    invoke-virtual {p0}, Lio/reactivex/internal/operators/e/b$a;->get()Z

    move-result v0

    return v0
.end method
