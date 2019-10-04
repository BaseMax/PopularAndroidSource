.class public final Lio/reactivex/internal/operators/a/d;
.super Lio/reactivex/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/a/d$a;
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


# direct methods
.method public constructor <init>(Lorg/b/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "+",
            "Lio/reactivex/g;",
            ">;I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Lio/reactivex/a;-><init>()V

    .line 34
    iput-object p1, p0, Lio/reactivex/internal/operators/a/d;->a:Lorg/b/b;

    .line 35
    iput p2, p0, Lio/reactivex/internal/operators/a/d;->b:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/d;)V
    .locals 3

    .line 40
    iget-object v0, p0, Lio/reactivex/internal/operators/a/d;->a:Lorg/b/b;

    new-instance v1, Lio/reactivex/internal/operators/a/d$a;

    iget v2, p0, Lio/reactivex/internal/operators/a/d;->b:I

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/a/d$a;-><init>(Lio/reactivex/d;I)V

    invoke-interface {v0, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
