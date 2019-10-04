.class final Lcom/a/a/a/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/a/a/a/k;->onActivityPaused()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/a/k;


# direct methods
.method constructor <init>(Lcom/a/a/a/k;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/a/a/a/k$1;->a:Lcom/a/a/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/a/a/a/k$1;->a:Lcom/a/a/a/k;

    iget-object v0, v0, Lcom/a/a/a/k;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/a/a/a/k$1;->a:Lcom/a/a/a/k;

    .line 1043
    iget-object v0, v0, Lcom/a/a/a/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/a/k$a;

    .line 1044
    invoke-interface {v1}, Lcom/a/a/a/k$a;->onBackground()V

    goto :goto_0

    :cond_0
    return-void
.end method
