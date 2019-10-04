.class final Lio/reactivex/internal/e/q$b;
.super Lio/reactivex/internal/e/q$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private final b:J

.field private final c:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    .line 235
    invoke-direct {p0}, Lio/reactivex/internal/e/q$f;-><init>()V

    .line 236
    iput-object p1, p0, Lio/reactivex/internal/e/q$b;->a:Ljava/lang/Runnable;

    .line 237
    iput-wide p2, p0, Lio/reactivex/internal/e/q$b;->b:J

    .line 238
    iput-object p4, p0, Lio/reactivex/internal/e/q$b;->c:Ljava/util/concurrent/TimeUnit;

    return-void
.end method


# virtual methods
.method protected final a(Lio/reactivex/ah$c;Lio/reactivex/d;)Lio/reactivex/b/c;
    .locals 3

    .line 243
    new-instance v0, Lio/reactivex/internal/e/q$d;

    iget-object v1, p0, Lio/reactivex/internal/e/q$b;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2}, Lio/reactivex/internal/e/q$d;-><init>(Ljava/lang/Runnable;Lio/reactivex/d;)V

    iget-wide v1, p0, Lio/reactivex/internal/e/q$b;->b:J

    iget-object p2, p0, Lio/reactivex/internal/e/q$b;->c:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, p2}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method
