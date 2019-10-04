.class final Lio/fabric/sdk/android/services/network/c$8;
.super Lio/fabric/sdk/android/services/network/c$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/network/c;->send(Ljava/io/Reader;)Lio/fabric/sdk/android/services/network/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/services/network/c$d<",
        "Lio/fabric/sdk/android/services/network/c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/Reader;

.field final synthetic b:Ljava/io/Writer;

.field final synthetic c:Lio/fabric/sdk/android/services/network/c;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/network/c;Ljava/io/Flushable;Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 0

    .line 2739
    iput-object p1, p0, Lio/fabric/sdk/android/services/network/c$8;->c:Lio/fabric/sdk/android/services/network/c;

    iput-object p3, p0, Lio/fabric/sdk/android/services/network/c$8;->a:Ljava/io/Reader;

    iput-object p4, p0, Lio/fabric/sdk/android/services/network/c$8;->b:Ljava/io/Writer;

    invoke-direct {p0, p2}, Lio/fabric/sdk/android/services/network/c$d;-><init>(Ljava/io/Flushable;)V

    return-void
.end method


# virtual methods
.method protected final synthetic run()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/fabric/sdk/android/services/network/c$e;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3743
    iget-object v0, p0, Lio/fabric/sdk/android/services/network/c$8;->c:Lio/fabric/sdk/android/services/network/c;

    iget-object v1, p0, Lio/fabric/sdk/android/services/network/c$8;->a:Ljava/io/Reader;

    iget-object v2, p0, Lio/fabric/sdk/android/services/network/c$8;->b:Ljava/io/Writer;

    invoke-virtual {v0, v1, v2}, Lio/fabric/sdk/android/services/network/c;->a(Ljava/io/Reader;Ljava/io/Writer;)Lio/fabric/sdk/android/services/network/c;

    move-result-object v0

    return-object v0
.end method
