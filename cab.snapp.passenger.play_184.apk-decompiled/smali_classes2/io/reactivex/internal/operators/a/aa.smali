.class public final Lio/reactivex/internal/operators/a/aa;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/aa$a;
    }
.end annotation


# instance fields
.field final a:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/g;",
            ">;"
        }
    .end annotation
.end field

.field final b:I

.field final c:Z


# direct methods
.method public constructor <init>(Lorg/b/b;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/g;",
            ">;IZ)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/a/aa;->a:Lorg/b/b;

    .line 34
    iput p2, p0, Lio/reactivex/internal/operators/a/aa;->b:I

    .line 35
    iput-boolean p3, p0, Lio/reactivex/internal/operators/a/aa;->c:Z

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 3

    .line 40
    new-instance v0, Lio/reactivex/internal/operators/a/aa$a;

    iget v1, p0, Lio/reactivex/internal/operators/a/aa;->b:I

    iget-boolean v2, p0, Lio/reactivex/internal/operators/a/aa;->c:Z

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/a/aa$a;-><init>(Lio/reactivex/d;IZ)V

    .line 41
    iget-object p1, p0, Lio/reactivex/internal/operators/a/aa;->a:Lorg/b/b;

    invoke-interface {p1, v0}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
