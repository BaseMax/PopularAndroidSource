.class final Lcom/koushikdutta/async/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/b;->send(Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/InetSocketAddress;

.field final synthetic b:Ljava/nio/ByteBuffer;

.field final synthetic c:Lcom/koushikdutta/async/b;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/b;Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/koushikdutta/async/b$2;->c:Lcom/koushikdutta/async/b;

    iput-object p2, p0, Lcom/koushikdutta/async/b$2;->a:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lcom/koushikdutta/async/b$2;->b:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/koushikdutta/async/b$2;->c:Lcom/koushikdutta/async/b;

    iget-object v1, p0, Lcom/koushikdutta/async/b$2;->a:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/koushikdutta/async/b$2;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Lcom/koushikdutta/async/b;->send(Ljava/net/InetSocketAddress;Ljava/nio/ByteBuffer;)V

    return-void
.end method
