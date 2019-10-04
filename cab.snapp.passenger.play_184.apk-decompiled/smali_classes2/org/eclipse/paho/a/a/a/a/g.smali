.class public Lorg/eclipse/paho/a/a/a/a/g;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lorg/eclipse/paho/a/a/b/b;

.field private c:Lorg/eclipse/paho/a/a/a/b;

.field private d:Ljava/io/BufferedOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lorg/eclipse/paho/a/a/a/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/a/a/a/a/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/a/a/a/b;Ljava/io/OutputStream;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 34
    sget-object v0, Lorg/eclipse/paho/a/a/a/a/g;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lorg/eclipse/paho/a/a/b/c;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/a/a/b/b;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/a/g;->b:Lorg/eclipse/paho/a/a/b/b;

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lorg/eclipse/paho/a/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/b;

    .line 40
    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/b;

    .line 41
    new-instance p1, Ljava/io/BufferedOutputStream;

    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object p1, p0, Lorg/eclipse/paho/a/a/a/a/g;->d:Ljava/io/BufferedOutputStream;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/g;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/g;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/g;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public write(Lorg/eclipse/paho/a/a/a/a/u;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/a/a/p;
        }
    .end annotation

    .line 74
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getHeader()[B

    move-result-object v0

    .line 75
    invoke-virtual {p1}, Lorg/eclipse/paho/a/a/a/a/u;->getPayload()[B

    move-result-object v1

    .line 78
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a/g;->d:Ljava/io/BufferedOutputStream;

    array-length v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 79
    iget-object v2, p0, Lorg/eclipse/paho/a/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/b;

    array-length v0, v0

    invoke-virtual {v2, v0}, Lorg/eclipse/paho/a/a/a/b;->notifySentBytes(I)V

    const/4 v0, 0x0

    .line 83
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 91
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/g;->b:Lorg/eclipse/paho/a/a/b/b;

    sget-object v1, Lorg/eclipse/paho/a/a/a/a/g;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v4

    const-string p1, "write"

    const-string v3, "529"

    invoke-interface {v0, v1, p1, v3, v2}, Lorg/eclipse/paho/a/a/b/b;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 84
    :cond_0
    array-length v2, v1

    sub-int/2addr v2, v0

    const/16 v3, 0x400

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 85
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/g;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v3, v1, v0, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    add-int/lit16 v0, v0, 0x400

    .line 87
    iget-object v3, p0, Lorg/eclipse/paho/a/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {v3, v2}, Lorg/eclipse/paho/a/a/a/b;->notifySentBytes(I)V

    goto :goto_0
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/g;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 54
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/b;

    array-length p1, p1

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/a/a/a/b;->notifySentBytes(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lorg/eclipse/paho/a/a/a/a/g;->d:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 59
    iget-object p1, p0, Lorg/eclipse/paho/a/a/a/a/g;->c:Lorg/eclipse/paho/a/a/a/b;

    invoke-virtual {p1, p3}, Lorg/eclipse/paho/a/a/a/b;->notifySentBytes(I)V

    return-void
.end method
