.class final Lcom/koushikdutta/async/h$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h;->getAllByName(Ljava/lang/String;)Lcom/koushikdutta/async/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/koushikdutta/async/b/i;

.field final synthetic c:Lcom/koushikdutta/async/h;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h;Ljava/lang/String;Lcom/koushikdutta/async/b/i;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/koushikdutta/async/h$15;->c:Lcom/koushikdutta/async/h;

    iput-object p2, p0, Lcom/koushikdutta/async/h$15;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/koushikdutta/async/h$15;->b:Lcom/koushikdutta/async/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/h$15;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 450
    invoke-static {}, Lcom/koushikdutta/async/h;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    if-eqz v0, :cond_0

    .line 451
    array-length v1, v0

    if-eqz v1, :cond_0

    .line 453
    iget-object v1, p0, Lcom/koushikdutta/async/h$15;->c:Lcom/koushikdutta/async/h;

    new-instance v2, Lcom/koushikdutta/async/h$15$1;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/h$15$1;-><init>(Lcom/koushikdutta/async/h$15;[Ljava/net/InetAddress;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void

    .line 452
    :cond_0
    new-instance v0, Lcom/koushikdutta/async/x;

    const-string v1, "no addresses for host"

    invoke-direct {v0, v1}, Lcom/koushikdutta/async/x;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 460
    iget-object v1, p0, Lcom/koushikdutta/async/h$15;->c:Lcom/koushikdutta/async/h;

    new-instance v2, Lcom/koushikdutta/async/h$15$2;

    invoke-direct {v2, p0, v0}, Lcom/koushikdutta/async/h$15$2;-><init>(Lcom/koushikdutta/async/h$15;Ljava/lang/Exception;)V

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/h;->post(Ljava/lang/Runnable;)Ljava/lang/Object;

    return-void
.end method
