.class public final Lio/reactivex/internal/operators/c/dd;
.super Lio/reactivex/ai;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/b/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/dd$b;,
        Lio/reactivex/internal/operators/c/dd$a;
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
        "Lio/reactivex/internal/b/d<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
            "+TT;>;"
        }
    .end annotation
.end field

.field final b:Lio/reactivex/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ae<",
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
.method public constructor <init>(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/ae<",
            "+TT;>;",
            "Lio/reactivex/e/d<",
            "-TT;-TT;>;I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Lio/reactivex/ai;-><init>()V

    .line 35
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dd;->a:Lio/reactivex/ae;

    .line 36
    iput-object p2, p0, Lio/reactivex/internal/operators/c/dd;->b:Lio/reactivex/ae;

    .line 37
    iput-object p3, p0, Lio/reactivex/internal/operators/c/dd;->c:Lio/reactivex/e/d;

    .line 38
    iput p4, p0, Lio/reactivex/internal/operators/c/dd;->d:I

    return-void
.end method


# virtual methods
.method public final fuseToObservable()Lio/reactivex/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/z<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Lio/reactivex/internal/operators/c/dc;

    iget-object v1, p0, Lio/reactivex/internal/operators/c/dd;->a:Lio/reactivex/ae;

    iget-object v2, p0, Lio/reactivex/internal/operators/c/dd;->b:Lio/reactivex/ae;

    iget-object v3, p0, Lio/reactivex/internal/operators/c/dd;->c:Lio/reactivex/e/d;

    iget v4, p0, Lio/reactivex/internal/operators/c/dd;->d:I

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/internal/operators/c/dc;-><init>(Lio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/d;I)V

    invoke-static {v0}, Lio/reactivex/g/a;->onAssembly(Lio/reactivex/z;)Lio/reactivex/z;

    move-result-object v0

    return-object v0
.end method

.method public final subscribeActual(Lio/reactivex/al;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/al<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 43
    new-instance v6, Lio/reactivex/internal/operators/c/dd$a;

    iget v2, p0, Lio/reactivex/internal/operators/c/dd;->d:I

    iget-object v3, p0, Lio/reactivex/internal/operators/c/dd;->a:Lio/reactivex/ae;

    iget-object v4, p0, Lio/reactivex/internal/operators/c/dd;->b:Lio/reactivex/ae;

    iget-object v5, p0, Lio/reactivex/internal/operators/c/dd;->c:Lio/reactivex/e/d;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/c/dd$a;-><init>(Lio/reactivex/al;ILio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/d;)V

    .line 44
    invoke-interface {p1, v6}, Lio/reactivex/al;->onSubscribe(Lio/reactivex/b/c;)V

    .line 1089
    iget-object p1, v6, Lio/reactivex/internal/operators/c/dd$a;->f:[Lio/reactivex/internal/operators/c/dd$b;

    .line 1090
    iget-object v0, v6, Lio/reactivex/internal/operators/c/dd$a;->d:Lio/reactivex/ae;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 1091
    iget-object v0, v6, Lio/reactivex/internal/operators/c/dd$a;->e:Lio/reactivex/ae;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
