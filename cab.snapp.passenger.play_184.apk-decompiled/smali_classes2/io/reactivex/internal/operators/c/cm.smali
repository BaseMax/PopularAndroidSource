.class public final Lio/reactivex/internal/operators/c/cm;
.super Lio/reactivex/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/cm$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/q<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "TT;>;",
            "Lio/reactivex/e/c<",
            "TT;TT;TT;>;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lio/reactivex/q;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/c/cm;->a:Lio/reactivex/ae;

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/c/cm;->b:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/t;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/t<",
            "-TT;>;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lio/reactivex/internal/operators/c/cm;->a:Lio/reactivex/ae;

    new-instance v1, Lio/reactivex/internal/operators/c/cm$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/cm;->b:Lio/reactivex/e/c;

    invoke-direct {v1, p1, v2}, Lio/reactivex/internal/operators/c/cm$a;-><init>(Lio/reactivex/t;Lio/reactivex/e/c;)V

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
