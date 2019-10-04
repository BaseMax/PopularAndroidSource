.class public Lcom/koushikdutta/async/b/b;
.super Lcom/koushikdutta/async/b/h;
.source "SourceFile"

# interfaces
.implements Lcom/koushikdutta/async/a/c;
.implements Lcom/koushikdutta/async/b/a;
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/koushikdutta/async/a/a;

.field b:Ljava/lang/Runnable;

.field c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/koushikdutta/async/a/c;",
            ">;"
        }
    .end annotation
.end field

.field d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lcom/koushikdutta/async/b/b;-><init>(Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/a/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/b/b;-><init>(Lcom/koushikdutta/async/a/a;Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Lcom/koushikdutta/async/a/a;Ljava/lang/Runnable;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Lcom/koushikdutta/async/b/h;-><init>()V

    .line 77
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/b/b;->c:Ljava/util/LinkedList;

    .line 45
    iput-object p2, p0, Lcom/koushikdutta/async/b/b;->b:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Lcom/koushikdutta/async/b/b;->a:Lcom/koushikdutta/async/a/a;

    return-void
.end method

.method private a(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/a/c;
    .locals 1

    .line 80
    instance-of v0, p1, Lcom/koushikdutta/async/b/c;

    if-eqz v0, :cond_0

    .line 81
    move-object v0, p1

    check-cast v0, Lcom/koushikdutta/async/b/c;

    .line 82
    invoke-interface {v0, p0}, Lcom/koushikdutta/async/b/c;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/c;

    :cond_0
    return-object p1
.end method

.method private a()V
    .locals 3

    .line 112
    iget-boolean v0, p0, Lcom/koushikdutta/async/b/b;->e:Z

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/koushikdutta/async/b/b;->f:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/koushikdutta/async/a/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 117
    :try_start_0
    iput-boolean v1, p0, Lcom/koushikdutta/async/b/b;->e:Z

    .line 118
    iput-boolean v1, p0, Lcom/koushikdutta/async/b/b;->f:Z

    .line 1050
    new-instance v1, Lcom/koushikdutta/async/b/b$2;

    invoke-direct {v1, p0}, Lcom/koushikdutta/async/b/b$2;-><init>(Lcom/koushikdutta/async/b/b;)V

    .line 119
    invoke-interface {v0, p0, v1}, Lcom/koushikdutta/async/a/c;->onContinue(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 122
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/b/b;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :goto_1
    iput-boolean v2, p0, Lcom/koushikdutta/async/b/b;->e:Z

    goto :goto_0

    :goto_2
    iput-boolean v2, p0, Lcom/koushikdutta/async/b/b;->e:Z

    throw v0

    .line 128
    :cond_1
    iget-boolean v0, p0, Lcom/koushikdutta/async/b/b;->f:Z

    if-eqz v0, :cond_2

    return-void

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->isDone()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 135
    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/b/b;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic a(Lcom/koushikdutta/async/b/b;)Z
    .locals 0

    .line 8
    iget-boolean p0, p0, Lcom/koushikdutta/async/b/b;->f:Z

    return p0
.end method

.method static synthetic b(Lcom/koushikdutta/async/b/b;)Z
    .locals 1

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/koushikdutta/async/b/b;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/koushikdutta/async/b/b;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/koushikdutta/async/b/b;->a()V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/Exception;)V
    .locals 1

    .line 71
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->setComplete()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->a:Lcom/koushikdutta/async/a/a;

    if-eqz v0, :cond_1

    .line 74
    invoke-interface {v0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public add(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/b/b;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->c:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/b/b;->a(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/a/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public add(Lcom/koushikdutta/async/b/d;)Lcom/koushikdutta/async/b/b;
    .locals 1

    .line 98
    invoke-interface {p1, p0}, Lcom/koushikdutta/async/b/d;->setParent(Lcom/koushikdutta/async/b/a;)Lcom/koushikdutta/async/b/c;

    .line 99
    new-instance v0, Lcom/koushikdutta/async/b/b$3;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/b/b$3;-><init>(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/b/d;)V

    invoke-virtual {p0, v0}, Lcom/koushikdutta/async/b/b;->add(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/b/b;

    return-object p0
.end method

.method public cancel()Z
    .locals 1

    .line 140
    invoke-super {p0}, Lcom/koushikdutta/async/b/h;->cancel()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->b:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 144
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getCallback()Lcom/koushikdutta/async/a/a;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->a:Lcom/koushikdutta/async/a/a;

    return-object v0
.end method

.method public getCancelCallback()Ljava/lang/Runnable;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method public insert(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/b/b;
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/koushikdutta/async/b/b;->c:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/koushikdutta/async/b/b;->a(Lcom/koushikdutta/async/a/c;)Lcom/koushikdutta/async/a/c;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-object p0
.end method

.method public onContinue(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 160
    invoke-virtual {p0, p2}, Lcom/koushikdutta/async/b/b;->setCallback(Lcom/koushikdutta/async/a/a;)V

    .line 161
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->start()Lcom/koushikdutta/async/b/b;

    return-void
.end method

.method public run()V
    .locals 0

    .line 166
    invoke-virtual {p0}, Lcom/koushikdutta/async/b/b;->start()Lcom/koushikdutta/async/b/b;

    return-void
.end method

.method public setCallback(Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/koushikdutta/async/b/b;->a:Lcom/koushikdutta/async/a/a;

    return-void
.end method

.method public setCancelCallback(Lcom/koushikdutta/async/b/a;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 27
    iput-object p1, p0, Lcom/koushikdutta/async/b/b;->b:Ljava/lang/Runnable;

    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/b/b$1;

    invoke-direct {v0, p0, p1}, Lcom/koushikdutta/async/b/b$1;-><init>(Lcom/koushikdutta/async/b/b;Lcom/koushikdutta/async/b/a;)V

    iput-object v0, p0, Lcom/koushikdutta/async/b/b;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public setCancelCallback(Ljava/lang/Runnable;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/koushikdutta/async/b/b;->b:Ljava/lang/Runnable;

    return-void
.end method

.method public start()Lcom/koushikdutta/async/b/b;
    .locals 2

    .line 151
    iget-boolean v0, p0, Lcom/koushikdutta/async/b/b;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/koushikdutta/async/b/b;->d:Z

    .line 154
    invoke-direct {p0}, Lcom/koushikdutta/async/b/b;->a()V

    return-object p0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
