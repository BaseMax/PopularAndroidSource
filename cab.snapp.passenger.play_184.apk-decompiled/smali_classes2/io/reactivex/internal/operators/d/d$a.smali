.class abstract Lio/reactivex/internal/operators/d/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/a;
.implements Lorg/b/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/internal/b/a<",
        "TT;>;",
        "Lorg/b/d;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/e/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/q<",
            "-TT;>;"
        }
    .end annotation
.end field

.field b:Lorg/b/d;

.field c:Z


# direct methods
.method constructor <init>(Lio/reactivex/e/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/e/q<",
            "-TT;>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lio/reactivex/internal/operators/d/d$a;->a:Lio/reactivex/e/q;

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .line 86
    iget-object v0, p0, Lio/reactivex/internal/operators/d/d$a;->b:Lorg/b/d;

    invoke-interface {v0}, Lorg/b/d;->cancel()V

    return-void
.end method

.method public final onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/d$a;->tryOnNext(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lio/reactivex/internal/operators/d/d$a;->c:Z

    if-nez p1, :cond_0

    .line 92
    iget-object p1, p0, Lio/reactivex/internal/operators/d/d$a;->b:Lorg/b/d;

    const-wide/16 v0, 0x1

    invoke-interface {p1, v0, v1}, Lorg/b/d;->request(J)V

    :cond_0
    return-void
.end method

.method public final request(J)V
    .locals 1

    .line 81
    iget-object v0, p0, Lio/reactivex/internal/operators/d/d$a;->b:Lorg/b/d;

    invoke-interface {v0, p1, p2}, Lorg/b/d;->request(J)V

    return-void
.end method
