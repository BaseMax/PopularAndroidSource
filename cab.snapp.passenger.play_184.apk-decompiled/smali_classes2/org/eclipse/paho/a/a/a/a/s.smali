.class public final Lorg/eclipse/paho/a/a/a/a/s;
.super Lorg/eclipse/paho/a/a/a/a/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p1, 0xb

    .line 31
    invoke-direct {p0, p1}, Lorg/eclipse/paho/a/a/a/a/b;-><init>(B)V

    .line 32
    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 33
    new-instance p2, Ljava/io/DataInputStream;

    invoke-direct {p2, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    invoke-virtual {p2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result p1

    iput p1, p0, Lorg/eclipse/paho/a/a/a/a/s;->b:I

    .line 35
    invoke-virtual {p2}, Ljava/io/DataInputStream;->close()V

    return-void
.end method


# virtual methods
.method protected final b()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method
