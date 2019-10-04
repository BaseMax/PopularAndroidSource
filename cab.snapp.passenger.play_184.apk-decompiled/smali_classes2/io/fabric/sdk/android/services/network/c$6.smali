.class final Lio/fabric/sdk/android/services/network/c$6;
.super Lio/fabric/sdk/android/services/network/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/network/c;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)Lio/fabric/sdk/android/services/network/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/network/c$b<",
        "Lio/fabric/sdk/android/services/network/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Lio/fabric/sdk/android/services/network/c;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/network/c;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .line 2365
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/c$6;->c:Lio/fabric/sdk/android/services/network/c;

    iput-object p4, p0, Lio/fabric/sdk/android/services/network/c$6;->a:Ljava/io/InputStream;

    iput-object p5, p0, Lio/fabric/sdk/android/services/network/c$6;->b:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lio/fabric/sdk/android/services/network/c$b;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public final run()Lio/fabric/sdk/android/services/network/c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2369
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/c$6;->c:Lio/fabric/sdk/android/services/network/c;

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/c;->a(Lio/fabric/sdk/android/services/network/c;)I

    move-result v0

    new-array v0, v0, [B

    .line 2371
    :goto_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/c$6;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2372
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/c$6;->b:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2373
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/c$6;->c:Lio/fabric/sdk/android/services/network/c;

    return-object v0
.end method

.method public final bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/c$e;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2365
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/c$6;->run()Lio/fabric/sdk/android/services/network/c;

    move-result-object v0

    return-object v0
.end method
