.class public final Lio/reactivex/internal/operators/d/h;
.super Lio/reactivex/parallel/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/d/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/parallel/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:I

.field final c:I


# direct methods
.method public constructor <init>(Lorg/b/b;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "+TT;>;II)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lio/reactivex/parallel/a;-><init>()V

    .line 42
    iput-object p1, p0, Lio/reactivex/internal/operators/d/h;->a:Lorg/b/b;

    .line 43
    iput p2, p0, Lio/reactivex/internal/operators/d/h;->b:I

    .line 44
    iput p3, p0, Lio/reactivex/internal/operators/d/h;->c:I

    return-void
.end method


# virtual methods
.method public final parallelism()I
    .locals 1

    .line 49
    iget v0, p0, Lio/reactivex/internal/operators/d/h;->b:I

    return v0
.end method

.method public final subscribe([Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 54
    invoke-virtual {p0, p1}, Lio/reactivex/internal/operators/d/h;->a([Lorg/b/c;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/operators/d/h;->a:Lorg/b/b;

    new-instance v1, Lio/reactivex/internal/operators/d/h$a;

    iget v2, p0, Lio/reactivex/internal/operators/d/h;->c:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/d/h$a;-><init>([Lorg/b/c;I)V

    invoke-interface {v0, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
