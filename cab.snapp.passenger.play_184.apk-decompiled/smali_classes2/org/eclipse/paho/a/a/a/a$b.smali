.class final Lorg/eclipse/paho/a/a/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/a/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Lorg/eclipse/paho/a/a/a/a/e;

.field b:J

.field c:Lorg/eclipse/paho/a/a/v;

.field d:Ljava/lang/String;

.field final synthetic e:Lorg/eclipse/paho/a/a/a/a;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/a/a/e;JLorg/eclipse/paho/a/a/v;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iput-object p2, p0, Lorg/eclipse/paho/a/a/a/a$b;->a:Lorg/eclipse/paho/a/a/a/a/e;

    .line 755
    iput-wide p3, p0, Lorg/eclipse/paho/a/a/a/a$b;->b:J

    .line 756
    iput-object p5, p0, Lorg/eclipse/paho/a/a/a/a$b;->c:Lorg/eclipse/paho/a/a/v;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 769
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/a;->b(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->c(Lorg/eclipse/paho/a/a/a/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "disconnectBG:run"

    const-string v3, "221"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/a;->g(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/b;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->b:J

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/a/a/a/b;->quiesce(J)V

    const/4 v0, 0x0

    .line 777
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$b;->a:Lorg/eclipse/paho/a/a/a/a/e;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a$b;->c:Lorg/eclipse/paho/a/a/v;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    .line 779
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->i(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/e;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->i(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/e;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 780
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->c:Lorg/eclipse/paho/a/a/v;

    iget-object v1, v1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/q;->waitUntilSent()V
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 786
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->c:Lorg/eclipse/paho/a/a/v;

    iget-object v1, v1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v1, v0, v0}, Lorg/eclipse/paho/a/a/a/q;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/p;)V

    .line 787
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->i(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/e;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->i(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/e;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    .line 789
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->c:Lorg/eclipse/paho/a/a/v;

    iget-object v1, v1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/q;->a()V

    .line 791
    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$b;->c:Lorg/eclipse/paho/a/a/v;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/paho/a/a/a/a;->shutdownConnection(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)V

    return-void

    :catchall_0
    move-exception v1

    .line 786
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$b;->c:Lorg/eclipse/paho/a/a/v;

    iget-object v2, v2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v2, v0, v0}, Lorg/eclipse/paho/a/a/a/q;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/p;)V

    .line 787
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v2}, Lorg/eclipse/paho/a/a/a/a;->i(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/e;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v2}, Lorg/eclipse/paho/a/a/a/a;->i(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/e;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/e;->isRunning()Z

    move-result v2

    if-nez v2, :cond_4

    .line 789
    :cond_3
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$b;->c:Lorg/eclipse/paho/a/a/v;

    iget-object v2, v2, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v2}, Lorg/eclipse/paho/a/a/a/q;->a()V

    .line 791
    :cond_4
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a$b;->c:Lorg/eclipse/paho/a/a/v;

    invoke-virtual {v2, v3, v0}, Lorg/eclipse/paho/a/a/a/a;->shutdownConnection(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)V

    .line 792
    throw v1

    :catch_0
    nop

    .line 786
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->c:Lorg/eclipse/paho/a/a/v;

    iget-object v1, v1, Lorg/eclipse/paho/a/a/v;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v1, v0, v0}, Lorg/eclipse/paho/a/a/a/q;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/p;)V

    .line 787
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->i(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/e;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$b;->e:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->i(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/e;->isRunning()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0
.end method
