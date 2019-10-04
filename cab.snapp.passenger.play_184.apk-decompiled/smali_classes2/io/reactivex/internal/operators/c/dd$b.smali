.class final Lio/reactivex/internal/operators/c/dd$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/ag;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/dd;
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
.field final a:Lio/reactivex/internal/operators/c/dd$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/internal/operators/c/dd$a<",
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
.method constructor <init>(Lio/reactivex/internal/operators/c/dd$a;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/internal/operators/c/dd$a<",
            "TT;>;II)V"
        }
    .end annotation

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dd$b;->a:Lio/reactivex/internal/operators/c/dd$a;

    .line 232
    iput p2, p0, Lio/reactivex/internal/operators/c/dd$b;->c:I

    .line 233
    new-instance p1, Lio/reactivex/internal/d/c;

    invoke-direct {p1, p3}, Lio/reactivex/internal/d/c;-><init>(I)V

    iput-object p1, p0, Lio/reactivex/internal/operators/c/dd$b;->b:Lio/reactivex/internal/d/c;

    return-void
.end method


# virtual methods
.method public final onComplete()V
    .locals 1

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lio/reactivex/internal/operators/c/dd$b;->d:Z

    .line 257
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dd$b;->a:Lio/reactivex/internal/operators/c/dd$a;

    invoke-virtual {v0}, Lio/reactivex/internal/operators/c/dd$a;->a()V

    return-void
.end method

.method public final onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dd$b;->e:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 250
    iput-boolean p1, p0, Lio/reactivex/internal/operators/c/dd$b;->d:Z

    .line 251
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dd$b;->a:Lio/reactivex/internal/operators/c/dd$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/dd$a;->a()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dd$b;->b:Lio/reactivex/internal/d/c;

    invoke-virtual {v0, p1}, Lio/reactivex/internal/d/c;->offer(Ljava/lang/Object;)Z

    .line 244
    iget-object p1, p0, Lio/reactivex/internal/operators/c/dd$b;->a:Lio/reactivex/internal/operators/c/dd$a;

    invoke-virtual {p1}, Lio/reactivex/internal/operators/c/dd$a;->a()V

    return-void
.end method

.method public final onSubscribe(Lio/reactivex/b/c;)V
    .locals 2

    .line 238
    iget-object v0, p0, Lio/reactivex/internal/operators/c/dd$b;->a:Lio/reactivex/internal/operators/c/dd$a;

    iget v1, p0, Lio/reactivex/internal/operators/c/dd$b;->c:I

    .line 1085
    iget-object v0, v0, Lio/reactivex/internal/operators/c/dd$a;->c:Lio/reactivex/internal/disposables/a;

    invoke-virtual {v0, v1, p1}, Lio/reactivex/internal/disposables/a;->setResource(ILio/reactivex/b/c;)Z

    return-void
.end method
