.class final Lcom/a/a/b/b$1;
.super Lio/fabric/sdk/android/a$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/a/a/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/b;


# direct methods
.method constructor <init>(Lcom/a/a/b/b;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/a/a/b/b$1;->a:Lcom/a/a/b/b;

    invoke-direct {p0}, Lio/fabric/sdk/android/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 21
    iget-object p1, p0, Lcom/a/a/b/b$1;->a:Lcom/a/a/b/b;

    .line 1100
    iget-object v0, p1, Lcom/a/a/b/a;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1101
    iget-object p1, p1, Lcom/a/a/b/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/a/a/b/b$1;->a:Lcom/a/a/b/b;

    .line 2016
    iget-object p1, p1, Lcom/a/a/b/b;->c:Ljava/util/concurrent/ExecutorService;

    .line 24
    new-instance v0, Lcom/a/a/b/b$1$1;

    invoke-direct {v0, p0}, Lcom/a/a/b/b$1$1;-><init>(Lcom/a/a/b/b$1;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method
