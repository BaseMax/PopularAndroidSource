.class public final Lio/reactivex/internal/e/e;
.super Lio/reactivex/ah;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/e/e$a;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lio/reactivex/ah;

.field static final b:Lio/reactivex/ah$c;

.field static final c:Lio/reactivex/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lio/reactivex/internal/e/e;

    invoke-direct {v0}, Lio/reactivex/internal/e/e;-><init>()V

    sput-object v0, Lio/reactivex/internal/e/e;->INSTANCE:Lio/reactivex/ah;

    .line 36
    new-instance v0, Lio/reactivex/internal/e/e$a;

    invoke-direct {v0}, Lio/reactivex/internal/e/e$a;-><init>()V

    sput-object v0, Lio/reactivex/internal/e/e;->b:Lio/reactivex/ah$c;

    .line 41
    invoke-static {}, Lio/reactivex/b/d;->empty()Lio/reactivex/b/c;

    move-result-object v0

    .line 42
    sput-object v0, Lio/reactivex/internal/e/e;->c:Lio/reactivex/b/c;

    invoke-interface {v0}, Lio/reactivex/b/c;->dispose()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lio/reactivex/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public final createWorker()Lio/reactivex/ah$c;
    .locals 1

    .line 71
    sget-object v0, Lio/reactivex/internal/e/e;->b:Lio/reactivex/ah$c;

    return-object v0
.end method

.method public final scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/b/c;
    .locals 0

    .line 52
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 53
    sget-object p1, Lio/reactivex/internal/e/e;->c:Lio/reactivex/b/c;

    return-object p1
.end method

.method public final scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;
    .locals 0

    .line 59
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This scheduler doesn\'t support delayed execution"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;
    .locals 0

    .line 65
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This scheduler doesn\'t support periodic execution"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
