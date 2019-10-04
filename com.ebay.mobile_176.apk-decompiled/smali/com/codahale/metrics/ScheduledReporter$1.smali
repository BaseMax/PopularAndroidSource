.class Lcom/codahale/metrics/ScheduledReporter$1;
.super Ljava/lang/Object;
.source "ScheduledReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codahale/metrics/ScheduledReporter;->start(JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codahale/metrics/ScheduledReporter;


# direct methods
.method constructor <init>(Lcom/codahale/metrics/ScheduledReporter;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/codahale/metrics/ScheduledReporter$1;->this$0:Lcom/codahale/metrics/ScheduledReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/codahale/metrics/ScheduledReporter$1;->this$0:Lcom/codahale/metrics/ScheduledReporter;

    invoke-virtual {v0}, Lcom/codahale/metrics/ScheduledReporter;->report()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 119
    invoke-static {}, Lcom/codahale/metrics/ScheduledReporter;->access$100()Lorg/slf4j/Logger;

    move-result-object v1

    const-string v2, "RuntimeException thrown from {}#report. Exception was suppressed."

    iget-object v3, p0, Lcom/codahale/metrics/ScheduledReporter$1;->this$0:Lcom/codahale/metrics/ScheduledReporter;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
