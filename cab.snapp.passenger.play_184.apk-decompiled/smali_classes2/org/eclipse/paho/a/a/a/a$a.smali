.class final Lorg/eclipse/paho/a/a/a/a$a;
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
    name = "a"
.end annotation


# instance fields
.field a:Lorg/eclipse/paho/a/a/a/a;

.field b:Lorg/eclipse/paho/a/a/v;

.field c:Lorg/eclipse/paho/a/a/a/a/d;

.field final synthetic d:Lorg/eclipse/paho/a/a/a/a;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/a/a/d;)V
    .locals 1

    .line 684
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 679
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/a$a;->a:Lorg/eclipse/paho/a/a/a/a;

    .line 685
    iput-object p2, p0, Lorg/eclipse/paho/a/a/a/a$a;->a:Lorg/eclipse/paho/a/a/a/a;

    .line 686
    iput-object p3, p0, Lorg/eclipse/paho/a/a/a/a$a;->b:Lorg/eclipse/paho/a/a/v;

    .line 687
    iput-object p4, p0, Lorg/eclipse/paho/a/a/a/a$a;->c:Lorg/eclipse/paho/a/a/a/a/d;

    .line 688
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "MQTT Con: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 700
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/a;->b(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->c(Lorg/eclipse/paho/a/a/a/a;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectBG:run"

    const-string v3, "220"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 710
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->d(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/paho/a/a/a/f;->getOutstandingDelTokens()[Lorg/eclipse/paho/a/a/o;

    move-result-object v1

    const/4 v2, 0x0

    .line 711
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 716
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->d(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/f;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$a;->b:Lorg/eclipse/paho/a/a/v;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a$a;->c:Lorg/eclipse/paho/a/a/a/a/d;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/a/a/a/f;->a(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/a/a/u;)V

    .line 721
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->e(Lorg/eclipse/paho/a/a/a/a;)[Lorg/eclipse/paho/a/a/a/n;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v2}, Lorg/eclipse/paho/a/a/a/a;->f(Lorg/eclipse/paho/a/a/a/a;)I

    move-result v2

    aget-object v1, v1, v2

    .line 722
    invoke-interface {v1}, Lorg/eclipse/paho/a/a/a/n;->start()V

    .line 723
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    new-instance v3, Lorg/eclipse/paho/a/a/a/d;

    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a$a;->a:Lorg/eclipse/paho/a/a/a/a;

    iget-object v5, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v5}, Lorg/eclipse/paho/a/a/a/a;->g(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/b;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v6}, Lorg/eclipse/paho/a/a/a/a;->d(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/f;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/paho/a/a/a/n;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/a/a/a/d;-><init>(Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/a/b;Lorg/eclipse/paho/a/a/a/f;Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/a/d;)V

    .line 724
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v2}, Lorg/eclipse/paho/a/a/a/a;->h(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/d;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MQTT Rec: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v4}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v4}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/paho/a/a/a/d;->start(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 725
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    new-instance v3, Lorg/eclipse/paho/a/a/a/e;

    iget-object v4, p0, Lorg/eclipse/paho/a/a/a/a$a;->a:Lorg/eclipse/paho/a/a/a/a;

    iget-object v5, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v5}, Lorg/eclipse/paho/a/a/a/a;->g(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/b;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v6}, Lorg/eclipse/paho/a/a/a/a;->d(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/f;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/paho/a/a/a/n;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v4, v5, v6, v1}, Lorg/eclipse/paho/a/a/a/e;-><init>(Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/a/b;Lorg/eclipse/paho/a/a/a/f;Ljava/io/OutputStream;)V

    invoke-static {v2, v3}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a;Lorg/eclipse/paho/a/a/a/e;)V

    .line 726
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->i(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/e;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MQTT Snd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v3}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/a/a/a/e;->start(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 727
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->j(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/a/c;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MQTT Call: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-virtual {v3}, Lorg/eclipse/paho/a/a/a/a;->getClient()Lorg/eclipse/paho/a/a/d;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/paho/a/a/d;->getClientId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v3}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/a/a/a/c;->start(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 728
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$a;->c:Lorg/eclipse/paho/a/a/a/a/d;

    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a$a;->b:Lorg/eclipse/paho/a/a/v;

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/a/a/a/a;->a(Lorg/eclipse/paho/a/a/a/a/u;Lorg/eclipse/paho/a/a/v;)V

    goto :goto_1

    .line 712
    :cond_0
    aget-object v3, v1, v2

    iget-object v3, v3, Lorg/eclipse/paho/a/a/o;->internalTok:Lorg/eclipse/paho/a/a/a/q;

    invoke-virtual {v3, v0}, Lorg/eclipse/paho/a/a/a/q;->setException(Lorg/eclipse/paho/a/a/p;)V
    :try_end_0
    .catch Lorg/eclipse/paho/a/a/p; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 735
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->b(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v2}, Lorg/eclipse/paho/a/a/a/a;->c(Lorg/eclipse/paho/a/a/a/a;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const-string v3, "connectBG:run"

    const-string v4, "209"

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 736
    invoke-static {v0}, Lorg/eclipse/paho/a/a/a/i;->createMqttException(Ljava/lang/Throwable;)Lorg/eclipse/paho/a/a/p;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 731
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v1}, Lorg/eclipse/paho/a/a/a/a;->b(Lorg/eclipse/paho/a/a/a/a;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    invoke-static {v2}, Lorg/eclipse/paho/a/a/a/a;->c(Lorg/eclipse/paho/a/a/a/a;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const-string v3, "connectBG:run"

    const-string v4, "212"

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v0, :cond_1

    .line 740
    iget-object v1, p0, Lorg/eclipse/paho/a/a/a/a$a;->d:Lorg/eclipse/paho/a/a/a/a;

    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a$a;->b:Lorg/eclipse/paho/a/a/v;

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/paho/a/a/a/a;->shutdownConnection(Lorg/eclipse/paho/a/a/v;Lorg/eclipse/paho/a/a/p;)V

    :cond_1
    return-void
.end method
