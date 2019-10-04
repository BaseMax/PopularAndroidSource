.class final Lio/reactivex/internal/operators/c/dc$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/dc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ag<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/operators/c/dc$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/dc$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/internal/d/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/d/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final c:I

.field volatile d:Z

.field e:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/c/dc$a;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/dc$a<",
            "TT;>;II)V"
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dc$b;->a:Lio/reactivex/internal/operators/c/dc$a;

    .line 228
    iput p2, p0, Lio/reactivex/internal/operators/c/dc$b;->c:I

    .line 229
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-direct {p1, p3}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/dc$b;->b:Lio/reactivex/internal/d/c;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 252
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/dc$b;->d:Z

    .line 253
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dc$b;->a:Lio/reactivex/internal/operators/c/dc$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/dc$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dc$b;->e:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/dc$b;->d:Z

    .line 247
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dc$b;->a:Lio/reactivex/internal/operators/c/dc$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/dc$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dc$b;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    .line 240
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dc$b;->a:Lio/reactivex/internal/operators/c/dc$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/dc$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dc$b;->a:Lio/reactivex/internal/operators/c/dc$a;

    iget v1, p0, Lio/reactivex/internal/operators/c/dc$b;->c:I

    .line 1078
    iget-object v0, v0, Lio/reactivex/internal/operators/c/dc$a;->c:Lio/reactivex/internal/disposables/a;

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/disposables/a;->setResource(ILio/reactivex/b/c;)Z

    return-void
.end method
