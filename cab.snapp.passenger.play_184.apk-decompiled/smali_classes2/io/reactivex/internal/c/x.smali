.class Lio/reactivex/internal/c/x;
.super Lio/reactivex/internal/c/v;
.source "SourceFile"


# instance fields
.field final d:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 137
    invoke-direct {p0}, Lio/reactivex/internal/c/v;-><init>()V

    .line 138
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lio/reactivex/internal/c/x;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method
