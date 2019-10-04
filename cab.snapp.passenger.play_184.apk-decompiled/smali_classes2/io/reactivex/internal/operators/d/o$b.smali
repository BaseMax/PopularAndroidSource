.class final Lio/reactivex/internal/operators/d/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/internal/e/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/d/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field final a:[Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/b/c<",
            "-TT;>;"
        }
    .end annotation
.end field

.field final b:[Lorg/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lorg/b/c<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic c:Lio/reactivex/internal/operators/d/o;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/d/o;[Lorg/b/c;[Lorg/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/b/c<",
            "-TT;>;[",
            "Lorg/b/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lio/reactivex/internal/operators/d/o$b;->c:Lio/reactivex/internal/operators/d/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lio/reactivex/internal/operators/d/o$b;->a:[Lorg/b/c;

    .line 96
    iput-object p3, p0, Lio/reactivex/internal/operators/d/o$b;->b:[Lorg/b/c;

    return-void
.end method


# virtual methods
.method public final onWorker(ILio/reactivex/ah$c;)V
    .locals 3

    .line 101
    iget-object v0, p0, Lio/reactivex/internal/operators/d/o$b;->c:Lio/reactivex/internal/operators/d/o;

    iget-object v1, p0, Lio/reactivex/internal/operators/d/o$b;->a:[Lorg/b/c;

    iget-object v2, p0, Lio/reactivex/internal/operators/d/o$b;->b:[Lorg/b/c;

    invoke-virtual {v0, p1, v1, v2, p2}, Lio/reactivex/internal/operators/d/o;->a(I[Lorg/b/c;[Lorg/b/c;Lio/reactivex/ah$c;)V

    return-void
.end method
