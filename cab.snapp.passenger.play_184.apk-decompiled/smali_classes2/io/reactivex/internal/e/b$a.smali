.class final Lio/reactivex/internal/e/b$a;
.super Lio/reactivex/ah$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field volatile a:Z

.field private final b:Lio/reactivex/internal/disposables/d;

.field private final c:Lio/reactivex/b/b;

.field private final d:Lio/reactivex/internal/disposables/d;

.field private final e:Lio/reactivex/internal/e/b$c;


# direct methods
.method constructor <init>(Lio/reactivex/internal/e/b$c;)V
    .locals 1

    .line 198
    invoke-direct {p0}, Lio/reactivex/ah$c;-><init>()V

    .line 199
    iput-object p1, p0, Lio/reactivex/internal/e/b$a;->e:Lio/reactivex/internal/e/b$c;

    .line 200
    new-instance p1, Lio/reactivex/internal/disposables/d;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/d;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/e/b$a;->b:Lio/reactivex/internal/disposables/d;

    .line 201
    new-instance p1, Lio/reactivex/b/b;

    invoke-direct {p1}, Lio/reactivex/b/b;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/e/b$a;->c:Lio/reactivex/b/b;

    .line 202
    new-instance p1, Lio/reactivex/internal/disposables/d;

    invoke-direct {p1}, Lio/reactivex/internal/disposables/d;-><init>()V

    iput-object p1, p0, Lio/reactivex/internal/e/b$a;->d:Lio/reactivex/internal/disposables/d;

    .line 203
    iget-object p1, p0, Lio/reactivex/internal/e/b$a;->d:Lio/reactivex/internal/disposables/d;

    iget-object v0, p0, Lio/reactivex/internal/e/b$a;->b:Lio/reactivex/internal/disposables/d;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/disposables/d;->add(Lio/reactivex/b/c;)Z

    .line 204
    iget-object p1, p0, Lio/reactivex/internal/e/b$a;->d:Lio/reactivex/internal/disposables/d;

    iget-object v0, p0, Lio/reactivex/internal/e/b$a;->c:Lio/reactivex/b/b;

    invoke-virtual {p1, v0}, Lio/reactivex/internal/disposables/d;->add(Lio/reactivex/b/c;)Z

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lio/reactivex/internal/e/b$a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 210
    iput-boolean v0, p0, Lio/reactivex/internal/e/b$a;->a:Z

    .line 211
    iget-object v0, p0, Lio/reactivex/internal/e/b$a;->d:Lio/reactivex/internal/disposables/d;

    invoke-virtual {v0}, Lio/reactivex/internal/disposables/d;->dispose()V

    :cond_0
    return-void
.end method

.method public final isDisposed()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lio/reactivex/internal/e/b$a;->a:Z

    return v0
.end method

.method public final schedule(Ljava/lang/Runnable;)Lio/reactivex/b/c;
    .locals 6

    .line 223
    iget-boolean v0, p0, Lio/reactivex/internal/e/b$a;->a:Z

    if-eqz v0, :cond_0

    .line 224
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 227
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/e/b$a;->e:Lio/reactivex/internal/e/b$c;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lio/reactivex/internal/e/b$a;->b:Lio/reactivex/internal/disposables/d;

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/e/b$c;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/c;)Lio/reactivex/internal/e/n;

    move-result-object p1

    return-object p1
.end method

.method public final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/b/c;
    .locals 6

    .line 233
    iget-boolean v0, p0, Lio/reactivex/internal/e/b$a;->a:Z

    if-eqz v0, :cond_0

    .line 234
    sget-object p1, Lio/reactivex/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/internal/disposables/EmptyDisposable;

    return-object p1

    .line 237
    :cond_0
    iget-object v0, p0, Lio/reactivex/internal/e/b$a;->e:Lio/reactivex/internal/e/b$c;

    iget-object v5, p0, Lio/reactivex/internal/e/b$a;->c:Lio/reactivex/b/b;

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lio/reactivex/internal/e/b$c;->scheduleActual(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Lio/reactivex/internal/disposables/c;)Lio/reactivex/internal/e/n;

    move-result-object p1

    return-object p1
.end method
