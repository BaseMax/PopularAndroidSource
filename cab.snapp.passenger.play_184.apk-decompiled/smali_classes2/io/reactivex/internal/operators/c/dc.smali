.class public final Lio/reactivex/internal/operators/c/dc;
.super Lio/reactivex/z;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/c/dc$b;,
        Lio/reactivex/internal/operators/c/dc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/z<",
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

    .line 32
    invoke-direct {p0}, Lio/reactivex/z;-><init>()V

    .line 33
    iput-object p1, p0, Lio/reactivex/internal/operators/c/dc;->a:Lio/reactivex/ae;

    .line 34
    iput-object p2, p0, Lio/reactivex/internal/operators/c/dc;->b:Lio/reactivex/ae;

    .line 35
    iput-object p3, p0, Lio/reactivex/internal/operators/c/dc;->c:Lio/reactivex/e/d;

    .line 36
    iput p4, p0, Lio/reactivex/internal/operators/c/dc;->d:I

    return-void
.end method


# virtual methods
.method public final subscribeActual(Lio/reactivex/ag;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/ag<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 41
    new-instance v6, Lio/reactivex/internal/operators/c/dc$a;

    iget v2, p0, Lio/reactivex/internal/operators/c/dc;->d:I

    iget-object v3, p0, Lio/reactivex/internal/operators/c/dc;->a:Lio/reactivex/ae;

    iget-object v4, p0, Lio/reactivex/internal/operators/c/dc;->b:Lio/reactivex/ae;

    iget-object v5, p0, Lio/reactivex/internal/operators/c/dc;->c:Lio/reactivex/e/d;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lio/reactivex/internal/operators/c/dc$a;-><init>(Lio/reactivex/ag;ILio/reactivex/ae;Lio/reactivex/ae;Lio/reactivex/e/d;)V

    .line 42
    invoke-interface {p1, v6}, Lio/reactivex/ag;->onSubscribe(Lio/reactivex/b/c;)V

    .line 1082
    iget-object p1, v6, Lio/reactivex/internal/operators/c/dc$a;->f:[Lio/reactivex/internal/operators/c/dc$b;

    .line 1083
    iget-object v0, v6, Lio/reactivex/internal/operators/c/dc$a;->d:Lio/reactivex/ae;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-interface {v0, v1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    .line 1084
    iget-object v0, v6, Lio/reactivex/internal/operators/c/dc$a;->e:Lio/reactivex/ae;

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-interface {v0, p1}, Lio/reactivex/ae;->subscribe(Lio/reactivex/ag;)V

    return-void
.end method
