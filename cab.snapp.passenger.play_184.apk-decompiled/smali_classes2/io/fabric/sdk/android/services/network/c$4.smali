.class final Lio/fabric/sdk/android/services/network/c$4;
.super Lio/fabric/sdk/android/services/network/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/network/c;->receive(Ljava/lang/Appendable;)Lio/fabric/sdk/android/services/network/c;
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
.field final synthetic a:Ljava/io/BufferedReader;

.field final synthetic b:Ljava/lang/Appendable;

.field final synthetic c:Lio/fabric/sdk/android/services/network/c;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/network/c;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/lang/Appendable;)V
    .locals 0

    .line 1764
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/c$4;->c:Lio/fabric/sdk/android/services/network/c;

    iput-object p4, p0, Lio/fabric/sdk/android/services/network/c$4;->a:Ljava/io/BufferedReader;

    iput-object p5, p0, Lio/fabric/sdk/android/services/network/c$4;->b:Ljava/lang/Appendable;

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

    .line 1768
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/c$4;->c:Lio/fabric/sdk/android/services/network/c;

    invoke-static {v0}, Lio/fabric/sdk/android/services/network/c;->a(Lio/fabric/sdk/android/services/network/c;)I

    move-result v0

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 1770
    :goto_0
    iget-object v1, p0, Lio/fabric/sdk/android/services/network/c$4;->a:Ljava/io/BufferedReader;

    invoke-virtual {v1, v0}, Ljava/io/BufferedReader;->read(Ljava/nio/CharBuffer;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1771
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 1772
    iget-object v2, p0, Lio/fabric/sdk/android/services/network/c$4;->b:Ljava/lang/Appendable;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 1773
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 1775
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/c$4;->c:Lio/fabric/sdk/android/services/network/c;

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

    .line 1764
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/c$4;->run()Lio/fabric/sdk/android/services/network/c;

    move-result-object v0

    return-object v0
.end method