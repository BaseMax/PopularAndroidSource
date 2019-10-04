.class final Lcom/koushikdutta/async/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/koushikdutta/async/u;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/u;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    iget-object v0, v0, Lcom/koushikdutta/async/u;->h:Ljava/nio/channels/FileChannel;

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    iget-object v2, v2, Lcom/koushikdutta/async/u;->d:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iput-object v1, v0, Lcom/koushikdutta/async/u;->h:Ljava/nio/channels/FileChannel;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    iget-object v0, v0, Lcom/koushikdutta/async/u;->g:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    iget-object v1, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    iget-object v1, v1, Lcom/koushikdutta/async/u;->g:Lcom/koushikdutta/async/l;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/af;->emitAllData(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 70
    iget-object v0, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    iget-object v0, v0, Lcom/koushikdutta/async/u;->g:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x2000

    .line 75
    invoke-static {v0}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    .line 76
    iget-object v2, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    iget-object v2, v2, Lcom/koushikdutta/async/u;->h:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 77
    iget-object v0, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/u;->report(Ljava/lang/Exception;)V

    return-void

    .line 80
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 81
    iget-object v1, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    iget-object v1, v1, Lcom/koushikdutta/async/u;->g:Lcom/koushikdutta/async/l;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 82
    iget-object v0, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    iget-object v1, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    iget-object v1, v1, Lcom/koushikdutta/async/u;->g:Lcom/koushikdutta/async/l;

    invoke-static {v0, v1}, Lcom/koushikdutta/async/af;->emitAllData(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 84
    iget-object v0, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    iget-object v0, v0, Lcom/koushikdutta/async/u;->g:Lcom/koushikdutta/async/l;

    invoke-virtual {v0}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    invoke-virtual {v0}, Lcom/koushikdutta/async/u;->isPaused()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 87
    iget-object v1, p0, Lcom/koushikdutta/async/u$1;->a:Lcom/koushikdutta/async/u;

    invoke-virtual {v1, v0}, Lcom/koushikdutta/async/u;->report(Ljava/lang/Exception;)V

    return-void
.end method
