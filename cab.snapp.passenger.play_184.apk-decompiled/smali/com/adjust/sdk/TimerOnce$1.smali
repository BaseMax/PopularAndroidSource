.class final Lcom/adjust/sdk/TimerOnce$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/TimerOnce;->startIn(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adjust/sdk/TimerOnce;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/TimerOnce;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/adjust/sdk/TimerOnce$1;->a:Lcom/adjust/sdk/TimerOnce;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce$1;->a:Lcom/adjust/sdk/TimerOnce;

    invoke-static {v0}, Lcom/adjust/sdk/TimerOnce;->access$100(Lcom/adjust/sdk/TimerOnce;)Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/adjust/sdk/TimerOnce$1;->a:Lcom/adjust/sdk/TimerOnce;

    invoke-static {v2}, Lcom/adjust/sdk/TimerOnce;->access$000(Lcom/adjust/sdk/TimerOnce;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s fired"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce$1;->a:Lcom/adjust/sdk/TimerOnce;

    invoke-static {v0}, Lcom/adjust/sdk/TimerOnce;->access$200(Lcom/adjust/sdk/TimerOnce;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 38
    iget-object v0, p0, Lcom/adjust/sdk/TimerOnce$1;->a:Lcom/adjust/sdk/TimerOnce;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adjust/sdk/TimerOnce;->access$302(Lcom/adjust/sdk/TimerOnce;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
