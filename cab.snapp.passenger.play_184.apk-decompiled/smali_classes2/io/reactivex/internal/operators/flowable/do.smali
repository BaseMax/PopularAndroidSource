.class public final Lio/reactivex/internal/operators/flowable/do;
.super Lio/reactivex/ai;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/flowable/do$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/ai<",
        "Ljava/lang/Boolean;",
        ">;",
        "Lio/reactivex/internal/b/b<",
        "Ljava/lang/Boolean;",
        ">;"
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

.field final b:Lorg/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/b/b<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final c:Lio/reactivex/e/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;"
        }
    .end annotation
.end field

.field final d:I


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

    .line 37
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 38
    iput-object p1, p0, Lio/reactivex/internal/operators/flowable/do;->a:Lorg/b/b;

    .line 39
    iput-object p2, p0, Lio/reactivex/internal/operators/flowable/do;->b:Lorg/b/b;

    .line 40
    iput-object p3, p0, Lio/reactivex/internal/operators/flowable/do;->c:Lio/reactivex/e/d;

    .line 41
    iput p4, p0, Lio/reactivex/internal/operators/flowable/do;->d:I

    return-void
.end method


# virtual methods
.method public final fuseToFlowable()Lio/reactivex/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/j<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lio/reactivex/internal/operators/flowable/dn;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/do;->a:Lorg/b/b;

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/do;->b:Lorg/b/b;

    iget-object v3, p0, Lio/reactivex/internal/operators/flowable/do;->c:Lio/reactivex/e/d;

    iget v4, p0, Lio/reactivex/internal/operators/flowable/do;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/flowable/dn;-><init>(Lorg/b/b;Lorg/b/b;Lio/reactivex/e/d;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/j;)Lio/reactivex/j;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 46
    new-instance v0, Lio/reactivex/internal/operators/flowable/do$a;

    iget v1, p0, Lio/reactivex/internal/operators/flowable/do;->d:I

    iget-object v2, p0, Lio/reactivex/internal/operators/flowable/do;->c:Lio/reactivex/e/d;

    invoke-direct {v0, p1, v1, v2}, Lio/reactivex/internal/operators/flowable/do$a;-><init>(Lio/reactivex/al;ILio/reactivex/e/d;)V

    .line 47
    invoke-interface {p1, v0}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    .line 48
    iget-object p1, p0, Lio/reactivex/internal/operators/flowable/do;->a:Lorg/b/b;

    iget-object v1, p0, Lio/reactivex/internal/operators/flowable/do;->b:Lorg/b/b;

    .line 1085
    iget-object v2, v0, Lio/reactivex/internal/operators/flowable/do$a;->c:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-interface {p1, v2}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    .line 1086
    iget-object p1, v0, Lio/reactivex/internal/operators/flowable/do$a;->d:Lio/reactivex/internal/operators/flowable/dn$c;

    invoke-interface {v1, p1}, Lorg/b/b;->subscribe(Lorg/b/c;)V

    return-void
.end method
