.class public Lcom/apptentive/android/sdk/util/CountingOutputStream;
.super Ljava/io/BufferedOutputStream;
.source "CountingOutputStream.java"


# instance fields
.field private bytesWritten:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/apptentive/android/sdk/util/CountingOutputStream;->bytesWritten:I

    return-void
.end method


# virtual methods
.method public getBytesWritten()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/apptentive/android/sdk/util/CountingOutputStream;->bytesWritten:I

    return v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget v0, p0, Lcom/apptentive/android/sdk/util/CountingOutputStream;->bytesWritten:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/apptentive/android/sdk/util/CountingOutputStream;->bytesWritten:I

    .line 29
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    iget v0, p0, Lcom/apptentive/android/sdk/util/CountingOutputStream;->bytesWritten:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/apptentive/android/sdk/util/CountingOutputStream;->bytesWritten:I

    .line 35
    invoke-super {p0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    iget v0, p0, Lcom/apptentive/android/sdk/util/CountingOutputStream;->bytesWritten:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/apptentive/android/sdk/util/CountingOutputStream;->bytesWritten:I

    .line 41
    invoke-super {p0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    return-void
.end method
