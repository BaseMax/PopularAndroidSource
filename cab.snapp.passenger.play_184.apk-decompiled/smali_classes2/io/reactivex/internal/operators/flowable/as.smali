.class public final Lio/reactivex/internal/operators/flowable/as;
.super Lio/reactivex/internal/operators/flowable/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/as$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/internal/operators/flowable/a<",
        "TT;TT;>;"
    }
.end annotation


# instance fields
.field private final c:Lio/reactivex/e/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/g<",
            "-",
            "Lorg/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lio/reactivex/e/p;

.field private final e:Lio/reactivex/e/a;


# direct methods
.method public constructor <init>(Lio/reactivex/j;Lio/reactivex/e/g;Lio/reactivex/e/p;Lio/reactivex/e/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/j<",
            "TT;>;",
            "Lio/reactivex/e/g<",
            "-",
            "Lorg/b/d;",
            ">;",
            "Lio/reactivex/e/p;",
            "Lio/reactivex/e/a;",
            ")V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lio/reactivex/internal/operators/flowable/a;-><init>(Lio/reactivex/j;)V

    .line 31
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/as;->c:Lio/reactivex/e/g;

    .line 32
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/as;->d:Lio/reactivex/e/p;

    .line 33
    iput-object p4, p0, Lio/reactivex/internal/operators/flowable/as;->e:Lio/reactivex/e/a;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-TT;>;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/as;->b:Lio/reactivex/j;

    new-instance v1, Lio/reactivex/internal/operators/flowable/as$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/as;->c:Lio/reactivex/e/g;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/as;->d:Lio/reactivex/e/p;

    iget-object v4, p0, Lio/reactivex/internal/operators/flowable/as;->e:Lio/reactivex/e/a;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/as$a;-><init>(Lorg/b/c;Lio/reactivex/e/g;Lio/reactivex/e/p;Lio/reactivex/e/a;)V

    invoke-virtual {v0, v1}, Lio/reactivex/j;->subscribe(Lio/reactivex/o;)V

    return-void
.end method
