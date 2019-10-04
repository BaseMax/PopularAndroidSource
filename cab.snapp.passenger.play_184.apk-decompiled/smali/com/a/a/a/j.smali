.class final Lcom/a/a/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/fabric/sdk/android/services/b/f;


# instance fields
.field private final a:Lcom/a/a/a/ad;

.field private final b:Lcom/a/a/a/z;


# direct methods
.method private constructor <init>(Lcom/a/a/a/ad;Lcom/a/a/a/z;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/a/a/a/j;->a:Lcom/a/a/a/ad;

    .line 42
    iput-object p2, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/z;

    return-void
.end method

.method public static build(Lcom/a/a/a/ad;)Lcom/a/a/a/j;
    .locals 5

    .line 31
    new-instance v0, Lcom/a/a/a/x;

    new-instance v1, Lio/fabric/sdk/android/services/concurrency/a/d;

    const-wide/16 v2, 0x3e8

    const/16 v4, 0x8

    invoke-direct {v1, v2, v3, v4}, Lio/fabric/sdk/android/services/concurrency/a/d;-><init>(JI)V

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-direct {v0, v1, v2, v3}, Lcom/a/a/a/x;-><init>(Lio/fabric/sdk/android/services/concurrency/a/b;D)V

    .line 33
    new-instance v1, Lio/fabric/sdk/android/services/concurrency/a/c;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lio/fabric/sdk/android/services/concurrency/a/c;-><init>(I)V

    .line 34
    new-instance v2, Lio/fabric/sdk/android/services/concurrency/a/g;

    invoke-direct {v2, v0, v1}, Lio/fabric/sdk/android/services/concurrency/a/g;-><init>(Lio/fabric/sdk/android/services/concurrency/a/b;Lio/fabric/sdk/android/services/concurrency/a/f;)V

    .line 35
    new-instance v0, Lcom/a/a/a/z;

    invoke-direct {v0, v2}, Lcom/a/a/a/z;-><init>(Lio/fabric/sdk/android/services/concurrency/a/g;)V

    .line 36
    new-instance v1, Lcom/a/a/a/j;

    invoke-direct {v1, p0, v0}, Lcom/a/a/a/j;-><init>(Lcom/a/a/a/ad;Lcom/a/a/a/z;)V

    return-object v1
.end method


# virtual methods
.method public final send(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)Z"
        }
    .end annotation

    .line 47
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 48
    iget-object v2, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/z;

    invoke-virtual {v2, v0, v1}, Lcom/a/a/a/z;->canRetry(J)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/a/a/a/j;->a:Lcom/a/a/a/ad;

    invoke-virtual {v2, p1}, Lcom/a/a/a/ad;->send(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    iget-object p1, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/z;

    invoke-virtual {p1}, Lcom/a/a/a/z;->reset()V

    const/4 p1, 0x1

    return p1

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/a/a/a/j;->b:Lcom/a/a/a/z;

    invoke-virtual {p1, v0, v1}, Lcom/a/a/a/z;->recordRetry(J)V

    :cond_1
    return v3
.end method
