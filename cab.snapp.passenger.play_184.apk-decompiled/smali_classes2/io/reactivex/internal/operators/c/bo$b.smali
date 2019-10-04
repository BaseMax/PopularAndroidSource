.class final Lio/reactivex/internal/operators/c/bo$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/c/bo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lio/reactivex/f/a<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/reactivex/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/z<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:J

.field private final d:Ljava/util/concurrent/TimeUnit;

.field private final e:Lio/reactivex/ah;


# direct methods
.method constructor <init>(Lio/reactivex/z;IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/z<",
            "TT;>;IJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Lio/reactivex/ah;",
            ")V"
        }
    .end annotation

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput-object p1, p0, Lio/reactivex/internal/operators/c/bo$b;->a:Lio/reactivex/z;

    .line 276
    iput p2, p0, Lio/reactivex/internal/operators/c/bo$b;->b:I

    .line 277
    iput-wide p3, p0, Lio/reactivex/internal/operators/c/bo$b;->c:J

    .line 278
    iput-object p5, p0, Lio/reactivex/internal/operators/c/bo$b;->d:Ljava/util/concurrent/TimeUnit;

    .line 279
    iput-object p6, p0, Lio/reactivex/internal/operators/c/bo$b;->e:Lio/reactivex/ah;

    return-void
.end method


# virtual methods
.method public final call()Lio/reactivex/f/a;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/f/a<",
            "TT;>;"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Lio/reactivex/internal/operators/c/bo$b;->a:Lio/reactivex/z;

    iget v1, p0, Lio/reactivex/internal/operators/c/bo$b;->b:I

    iget-wide v2, p0, Lio/reactivex/internal/operators/c/bo$b;->c:J

    iget-object v4, p0, Lio/reactivex/internal/operators/c/bo$b;->d:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/operators/c/bo$b;->e:Lio/reactivex/ah;

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/z;->replay(IJLjava/util/concurrent/TimeUnit;Lio/reactivex/ah;)Lio/reactivex/f/a;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    invoke-virtual {p0}, Lio/reactivex/internal/operators/c/bo$b;->call()Lio/reactivex/f/a;

    move-result-object v0

    return-object v0
.end method
