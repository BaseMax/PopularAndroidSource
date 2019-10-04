.class public final Lio/reactivex/internal/operators/flowable/cy;
.super Lio/reactivex/ai;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/cy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/ai<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final a:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "TT;>;"
        }
    .end annotation
.end field

.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/b/b;Ljava/lang/Object;Lio/reactivex/e/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "TT;>;TR;",
            "Lio/reactivex/e/c<",
            "TR;-TT;TR;>;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 42
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/cy;->a:Lorg/b/b;

    .line 43
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/cy;->b:Ljava/lang/Object;

    .line 44
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/cy;->c:Lio/reactivex/e/c;

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-TR;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lio/reactivex/internal/operators/flowable/cy;->a:Lorg/b/b;

    new-instance v1, Lio/reactivex/internal/operators/flowable/cy$a;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/cy;->c:Lio/reactivex/e/c;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/cy;->b:Ljava/lang/Object;

    invoke-direct {v1, p1, v2, v3}, Lio/reactivex/internal/operators/flowable/cy$a;-><init>(Lio/reactivex/al;Lio/reactivex/e/c;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
