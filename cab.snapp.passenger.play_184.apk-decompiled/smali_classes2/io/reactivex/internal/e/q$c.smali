.class final Lio/reactivex/internal/e/q$c;
.super Lio/reactivex/internal/e/q$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/e/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Lio/reactivex/internal/e/q$f;-><init>()V

    .line 220
    iput-object p1, p0, Lio/reactivex/internal/e/q$c;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected final a(Lio/reactivex/ah$c;Lio/reactivex/d;)Lio/reactivex/b/c;
    .locals 2

    .line 225
    new-instance v0, Lio/reactivex/internal/e/q$d;

    iget-object v1, p0, Lio/reactivex/internal/e/q$c;->a:Ljava/lang/Runnable;

    invoke-direct {v0, v1, p2}, Lio/reactivex/internal/e/q$d;-><init>(Ljava/lang/Runnable;Lio/reactivex/d;)V

    invoke-virtual {p1, v0}, Lio/reactivex/ah$c;->schedule(Ljava/lang/Runnable;)Lio/reactivex/b/c;

    move-result-object p1

    return-object p1
.end method
