.class final Lcom/koushikdutta/async/h$b;
.super Lcom/koushikdutta/async/b/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/b/i<",
        "Lcom/koushikdutta/async/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/nio/channels/SocketChannel;

.field b:Lcom/koushikdutta/async/a/b;

.field final synthetic c:Lcom/koushikdutta/async/h;


# direct methods
.method private constructor <init>(Lcom/koushikdutta/async/h;)V
    .locals 0

    .line 346
    iput-object p1, p0, Lcom/koushikdutta/async/h$b;->c:Lcom/koushikdutta/async/h;

    invoke-direct {p0}, Lcom/koushikdutta/async/b/i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/koushikdutta/async/h;B)V
    .locals 0

    .line 346
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/h$b;-><init>(Lcom/koushikdutta/async/h;)V

    return-void
.end method


# virtual methods
.method public final cancelCleanup()V
    .locals 1

    .line 349
    invoke-super {p0}, Lcom/koushikdutta/async/b/i;->cancelCleanup()V

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/h$b;->a:Ljava/nio/channels/SocketChannel;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/koushikdutta/async/h$b;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
