.class final Lio/reactivex/internal/e/s$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/e/s$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Lio/reactivex/internal/e/s$b;

.field final synthetic b:Lio/reactivex/internal/e/s$c;


# direct methods
.method constructor <init>(Lio/reactivex/internal/e/s$c;Lio/reactivex/internal/e/s$b;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lio/reactivex/internal/e/s$c$a;->b:Lio/reactivex/internal/e/s$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lio/reactivex/internal/e/s$c$a;->a:Lio/reactivex/internal/e/s$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 147
    iget-object v0, p0, Lio/reactivex/internal/e/s$c$a;->a:Lio/reactivex/internal/e/s$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/reactivex/internal/e/s$b;->d:Z

    .line 148
    iget-object v0, p0, Lio/reactivex/internal/e/s$c$a;->b:Lio/reactivex/internal/e/s$c;

    iget-object v0, v0, Lio/reactivex/internal/e/s$c;->a:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lio/reactivex/internal/e/s$c$a;->a:Lio/reactivex/internal/e/s$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
