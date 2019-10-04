.class final Lcom/adjust/sdk/CustomScheduledExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/CustomScheduledExecutor;-><init>(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adjust/sdk/CustomScheduledExecutor;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/CustomScheduledExecutor;Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/adjust/sdk/CustomScheduledExecutor$1;->b:Lcom/adjust/sdk/CustomScheduledExecutor;

    iput-object p2, p0, Lcom/adjust/sdk/CustomScheduledExecutor$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 29
    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    new-instance v1, Lcom/adjust/sdk/CustomScheduledExecutor$a;

    iget-object v2, p0, Lcom/adjust/sdk/CustomScheduledExecutor$1;->b:Lcom/adjust/sdk/CustomScheduledExecutor;

    invoke-direct {v1, v2, p1}, Lcom/adjust/sdk/CustomScheduledExecutor$a;-><init>(Lcom/adjust/sdk/CustomScheduledExecutor;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Adjust-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/adjust/sdk/CustomScheduledExecutor$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 35
    new-instance v0, Lcom/adjust/sdk/CustomScheduledExecutor$1$1;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/CustomScheduledExecutor$1$1;-><init>(Lcom/adjust/sdk/CustomScheduledExecutor$1;)V

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-object p1
.end method
