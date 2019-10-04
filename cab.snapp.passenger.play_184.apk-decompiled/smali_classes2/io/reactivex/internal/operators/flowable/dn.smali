.class public final Lio/reactivex/internal/operators/flowable/dn;
.super Lio/reactivex/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/dn$c;,
        Lio/reactivex/internal/operators/flowable/dn$a;,
        Lio/reactivex/internal/operators/flowable/dn$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/j<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final d:Lio/reactivex/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final e:I


# direct methods
.method public constructor <init>(Lorg/b/b;Lorg/b/b;Lio/reactivex/e/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/b<",
            "+TT;>;",
            "Lorg/b/b<",
            "+TT;>;",
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Lio/reactivex/j;-><init>()V

    .line 37
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/dn;->b:Lorg/b/b;

    .line 38
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/dn;->c:Lorg/b/b;

    .line 39
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/dn;->d:Lio/reactivex/e/d;

    .line 40
    iput p4, p0, Lio/reactivex/internal/operators/flowable/dn;->e:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lorg/b/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/b/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 45
    new-instance v0, Lio/reactivex/internal/operators/flowable/dn$a;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/dn;->e:I

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/dn;->d:Lio/reactivex/e/d;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/dn$a;-><init>(Lorg/b/c;ILio/reactivex/e/d;)V

    .line 46
    invoke-interface {p1, v0}, Lorg/b/c;->onSubscribe(Lorg/b/d;)V

    .line 47
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/dn;->b:Lorg/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/dn;->c:Lorg/b/b;

    .line 1089
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/dn$a;->b:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-interface {p1, v2}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 1090
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/dn$a;->c:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-interface {v1, p1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
