.class final Lcom/adjust/sdk/TimerCycle$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/TimerCycle;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adjust/sdk/TimerCycle;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/TimerCycle;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/adjust/sdk/TimerCycle$1;->a:Lcom/adjust/sdk/TimerCycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle$1;->a:Lcom/adjust/sdk/TimerCycle;

    invoke-static {v0}, Lcom/adjust/sdk/TimerCycle;->access$100(Lcom/adjust/sdk/TimerCycle;)Lcom/adjust/sdk/ILogger;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/adjust/sdk/TimerCycle$1;->a:Lcom/adjust/sdk/TimerCycle;

    invoke-static {v2}, Lcom/adjust/sdk/TimerCycle;->access$000(Lcom/adjust/sdk/TimerCycle;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s fired"

    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget-object v0, p0, Lcom/adjust/sdk/TimerCycle$1;->a:Lcom/adjust/sdk/TimerCycle;

    invoke-static {v0}, Lcom/adjust/sdk/TimerCycle;->access$200(Lcom/adjust/sdk/TimerCycle;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
