.class Lio/reactivex/internal/f/s;
.super Lio/reactivex/internal/f/o;
.source "SourceFile"


# instance fields
.field final r:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Lio/reactivex/internal/f/o;-><init>()V

    .line 178
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/f/s;->r:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
