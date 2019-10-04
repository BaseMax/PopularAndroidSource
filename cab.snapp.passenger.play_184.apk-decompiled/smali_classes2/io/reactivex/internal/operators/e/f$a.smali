.class final Lio/reactivex/internal/operators/e/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/e/f$a$a;,
        Lio/reactivex/internal/operators/e/f$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/al<",
        "TT;>;"
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

.field final synthetic b:Lio/reactivex/internal/operators/e/f;

.field private final c:Lio/reactivex/internal/disposables/f;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/e/f;Lio/reactivex/internal/disposables/f;Lio/reactivex/al;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/disposables/f;",
            "Lio/reactivex/al<",
            "-TT;>;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lio/reactivex/internal/operators/e/f$a;->b:Lio/reactivex/internal/operators/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lio/reactivex/internal/operators/e/f$a;->c:Lio/reactivex/internal/disposables/f;

    .line 52
    iput-object p3, p0, Lio/reactivex/internal/operators/e/f$a;->a:Lio/reactivex/al;

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/Throwable;)V
    .locals 5

    .line 67
    iget-object v0, p0, Lio/reactivex/internal/operators/e/f$a;->c:Lio/reactivex/internal/disposables/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/e/f$a;->b:Lio/reactivex/internal/operators/e/f;

    iget-object v1, v1, Lio/reactivex/internal/operators/e/f;->d:Lio/reactivex/ah;

    new-instance v2, Lio/reactivex/internal/operators/e/f$a$a;

    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/e/f$a$a;-><init>(Lio/reactivex/internal/operators/e/f$a;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/e/f$a;->b:Lio/reactivex/internal/operators/e/f;

    iget-boolean p1, p1, Lio/reactivex/internal/operators/e/f;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lio/reactivex/internal/operators/e/f$a;->b:Lio/reactivex/internal/operators/e/f;

    iget-wide v3, p1, Lio/reactivex/internal/operators/e/f;->b:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    :goto_0
    iget-object p1, p0, Lio/reactivex/internal/operators/e/f$a;->b:Lio/reactivex/internal/operators/e/f;

    iget-object p1, p1, Lio/reactivex/internal/operators/e/f;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lio/reactivex/internal/operators/e/f$a;->c:Lio/reactivex/internal/disposables/f;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lio/reactivex/internal/operators/e/f$a;->c:Lio/reactivex/internal/disposables/f;

    iget-object v1, p0, Lio/reactivex/internal/operators/e/f$a;->b:Lio/reactivex/internal/operators/e/f;

    iget-object v1, v1, Lio/reactivex/internal/operators/e/f;->d:Lio/reactivex/ah;

    new-instance v2, Lio/reactivex/internal/operators/e/f$a$b;

    invoke-direct {v2, p0, p1}, Lio/reactivex/internal/operators/e/f$a$b;-><init>(Lio/reactivex/internal/operators/e/f$a;Ljava/lang/Object;)V

    iget-object p1, p0, Lio/reactivex/internal/operators/e/f$a;->b:Lio/reactivex/internal/operators/e/f;

    iget-wide v3, p1, Lio/reactivex/internal/operators/e/f;->b:J

    iget-object p1, p0, Lio/reactivex/internal/operators/e/f$a;->b:Lio/reactivex/internal/operators/e/f;

    iget-object p1, p1, Lio/reactivex/internal/operators/e/f;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lio/reactivex/ah;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/internal/disposables/f;->replace(Lio/reactivex/b/c;)Z

    return-void
.end method
