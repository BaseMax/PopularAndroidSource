.class Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;
.super Ljava/lang/Object;
.source "InstrumentedExecutorService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codahale/metrics/InstrumentedExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstrumentedCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final callable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codahale/metrics/InstrumentedExecutorService;


# direct methods
.method constructor <init>(Lcom/codahale/metrics/InstrumentedExecutorService;Ljava/util/concurrent/Callable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)V"
        }
    .end annotation

    .line 188
    iput-object p1, p0, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;->this$0:Lcom/codahale/metrics/InstrumentedExecutorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;->callable:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;->this$0:Lcom/codahale/metrics/InstrumentedExecutorService;

    invoke-static {v0}, Lcom/codahale/metrics/InstrumentedExecutorService;->access$000(Lcom/codahale/metrics/InstrumentedExecutorService;)Lcom/codahale/metrics/Counter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Counter;->inc()V

    .line 195
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;->this$0:Lcom/codahale/metrics/InstrumentedExecutorService;

    invoke-static {v0}, Lcom/codahale/metrics/InstrumentedExecutorService;->access$100(Lcom/codahale/metrics/InstrumentedExecutorService;)Lcom/codahale/metrics/Timer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Timer;->time()Lcom/codahale/metrics/Timer$Context;

    move-result-object v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;->callable:Ljava/util/concurrent/Callable;

    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    .line 200
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;->this$0:Lcom/codahale/metrics/InstrumentedExecutorService;

    invoke-static {v0}, Lcom/codahale/metrics/InstrumentedExecutorService;->access$000(Lcom/codahale/metrics/InstrumentedExecutorService;)Lcom/codahale/metrics/Counter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Counter;->dec()V

    .line 201
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;->this$0:Lcom/codahale/metrics/InstrumentedExecutorService;

    invoke-static {v0}, Lcom/codahale/metrics/InstrumentedExecutorService;->access$200(Lcom/codahale/metrics/InstrumentedExecutorService;)Lcom/codahale/metrics/Meter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    return-object v1

    :catchall_0
    move-exception v1

    .line 199
    invoke-virtual {v0}, Lcom/codahale/metrics/Timer$Context;->stop()J

    .line 200
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;->this$0:Lcom/codahale/metrics/InstrumentedExecutorService;

    invoke-static {v0}, Lcom/codahale/metrics/InstrumentedExecutorService;->access$000(Lcom/codahale/metrics/InstrumentedExecutorService;)Lcom/codahale/metrics/Counter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Counter;->dec()V

    .line 201
    iget-object v0, p0, Lcom/codahale/metrics/InstrumentedExecutorService$InstrumentedCallable;->this$0:Lcom/codahale/metrics/InstrumentedExecutorService;

    invoke-static {v0}, Lcom/codahale/metrics/InstrumentedExecutorService;->access$200(Lcom/codahale/metrics/InstrumentedExecutorService;)Lcom/codahale/metrics/Meter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codahale/metrics/Meter;->mark()V

    throw v1
.end method
