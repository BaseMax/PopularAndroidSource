.class final Lcom/koushikdutta/async/h$15$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/h$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/net/InetAddress;

.field final synthetic b:Lcom/koushikdutta/async/h$15;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/h$15;[Ljava/net/InetAddress;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/koushikdutta/async/h$15$1;->b:Lcom/koushikdutta/async/h$15;

    iput-object p2, p0, Lcom/koushikdutta/async/h$15$1;->a:[Ljava/net/InetAddress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/koushikdutta/async/h$15$1;->b:Lcom/koushikdutta/async/h$15;

    iget-object v0, v0, Lcom/koushikdutta/async/h$15;->b:Lcom/koushikdutta/async/b/i;

    iget-object v1, p0, Lcom/koushikdutta/async/h$15$1;->a:[Ljava/net/InetAddress;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/koushikdutta/async/b/i;->setComplete(Ljava/lang/Exception;Ljava/lang/Object;)Z

    return-void
.end method
