.class Lio/reactivex/internal/f/q;
.super Lio/reactivex/internal/f/p;
.source "SourceFile"


# instance fields
.field final q:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 188
    invoke-direct {p0}, Lio/reactivex/internal/f/p;-><init>()V

    .line 189
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/f/q;->q:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method
