.class final Lio/fabric/sdk/android/services/network/c$5;
.super Lio/fabric/sdk/android/services/network/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/network/c;->receive(Ljava/io/Writer;)Lio/fabric/sdk/android/services/network/c;
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

.field final synthetic b:Ljava/io/Writer;

.field final synthetic c:Lio/fabric/sdk/android/services/network/c;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/network/c;Ljava/io/Closeable;ZLjava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 0

    .line 1789
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/c$5;->c:Lio/fabric/sdk/android/services/network/c;

    iput-object p4, p0, Lio/fabric/sdk/android/services/network/c$5;->a:Ljava/io/BufferedReader;

    iput-object p5, p0, Lio/fabric/sdk/android/services/network/c$5;->b:Ljava/io/Writer;

    invoke-direct {p0, p2, p3}, Lio/fabric/sdk/android/services/network/c$b;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public final run()Lio/fabric/sdk/android/services/network/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1793
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/c$5;->c:Lio/fabric/sdk/android/services/network/c;

    iget-object v1, p0, Lio/fabric/sdk/android/services/network/c$5;->a:Ljava/io/BufferedReader;

    iget-object v2, p0, Lio/fabric/sdk/android/services/network/c$5;->b:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/c;->a(Ljava/io/Reader;Ljava/io/Writer;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v0

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

    .line 1789
    invoke-virtual {p0}, Lio/fabric/sdk/android/services/network/c$5;->run()Lio/fabric/sdk/android/services/network/c;

    move-result-object v0

    return-object v0
.end method
