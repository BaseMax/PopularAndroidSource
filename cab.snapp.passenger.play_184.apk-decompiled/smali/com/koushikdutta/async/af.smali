.class public Lcom/koushikdutta/async/af;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static SUPRESS_DEBUG_EXCEPTIONS:Z

.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const-class v0, Lcom/koushikdutta/async/af;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/koushikdutta/async/af;->a:Z

    const/4 v0, 0x0

    .line 18
    sput-boolean v0, Lcom/koushikdutta/async/af;->SUPRESS_DEBUG_EXCEPTIONS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static emitAllData(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V
    .locals 4

    const/4 v0, 0x0

    .line 22
    :cond_0
    invoke-interface {p0}, Lcom/koushikdutta/async/n;->isPaused()Z

    move-result v1

    const-string v2, "handler: "

    if-nez v1, :cond_3

    invoke-interface {p0}, Lcom/koushikdutta/async/n;->getDataCallback()Lcom/koushikdutta/async/a/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v1

    if-lez v1, :cond_3

    .line 23
    invoke-interface {v0, p0, p1}, Lcom/koushikdutta/async/a/d;->onDataAvailable(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/l;)V

    .line 24
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v3

    if-ne v1, v3, :cond_0

    invoke-interface {p0}, Lcom/koushikdutta/async/n;->getDataCallback()Lcom/koushikdutta/async/a/d;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p0}, Lcom/koushikdutta/async/n;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->recycle()V

    .line 37
    sget-boolean p0, Lcom/koushikdutta/async/af;->SUPRESS_DEBUG_EXCEPTIONS:Z

    if-eqz p0, :cond_1

    return-void

    .line 39
    :cond_1
    sget-boolean p0, Lcom/koushikdutta/async/af;->a:Z

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 40
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "mDataHandler failed to consume data, yet remains the mDataHandler."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_3
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->remaining()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Lcom/koushikdutta/async/n;->isPaused()Z

    move-result v1

    if-nez v1, :cond_6

    .line 48
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 49
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "emitter: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p1}, Lcom/koushikdutta/async/l;->recycle()V

    .line 51
    sget-boolean p0, Lcom/koushikdutta/async/af;->SUPRESS_DEBUG_EXCEPTIONS:Z

    if-eqz p0, :cond_4

    return-void

    .line 53
    :cond_4
    sget-boolean p0, Lcom/koushikdutta/async/af;->a:Z

    if-nez p0, :cond_5

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 54
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Not all data was consumed by Util.emitAllData"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void
.end method

.method public static end(Lcom/koushikdutta/async/a/a;Ljava/lang/Exception;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 249
    invoke-interface {p0, p1}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public static end(Lcom/koushikdutta/async/n;Ljava/lang/Exception;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-interface {p0}, Lcom/koushikdutta/async/n;->getEndCallback()Lcom/koushikdutta/async/a/a;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/koushikdutta/async/af;->end(Lcom/koushikdutta/async/a/a;Ljava/lang/Exception;)V

    return-void
.end method

.method public static getWrappedDataEmitter(Lcom/koushikdutta/async/n;Ljava/lang/Class;)Lcom/koushikdutta/async/n;
    .locals 1

    .line 231
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 233
    :cond_0
    instance-of v0, p0, Lcom/koushikdutta/async/f/b;

    if-eqz v0, :cond_1

    .line 234
    check-cast p0, Lcom/koushikdutta/async/f/a;

    invoke-interface {p0}, Lcom/koushikdutta/async/f/a;->getSocket()Lcom/koushikdutta/async/j;

    move-result-object p0

    .line 235
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getWrappedSocket(Lcom/koushikdutta/async/j;Ljava/lang/Class;)Lcom/koushikdutta/async/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/koushikdutta/async/j;",
            ">(",
            "Lcom/koushikdutta/async/j;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 220
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 222
    :cond_0
    instance-of v0, p0, Lcom/koushikdutta/async/f/a;

    if-eqz v0, :cond_1

    .line 223
    check-cast p0, Lcom/koushikdutta/async/f/a;

    invoke-interface {p0}, Lcom/koushikdutta/async/f/a;->getSocket()Lcom/koushikdutta/async/j;

    move-result-object p0

    .line 224
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static pump(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 124
    new-instance v0, Lcom/koushikdutta/async/af$3;

    invoke-direct {v0, p1}, Lcom/koushikdutta/async/af$3;-><init>(Lcom/koushikdutta/async/q;)V

    .line 132
    invoke-interface {p0, v0}, Lcom/koushikdutta/async/n;->setDataCallback(Lcom/koushikdutta/async/a/d;)V

    .line 133
    new-instance v0, Lcom/koushikdutta/async/af$4;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/af$4;-><init>(Lcom/koushikdutta/async/n;)V

    invoke-interface {p1, v0}, Lcom/koushikdutta/async/q;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    .line 140
    new-instance v0, Lcom/koushikdutta/async/af$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/af$5;-><init>(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    .line 155
    invoke-interface {p0, v0}, Lcom/koushikdutta/async/n;->setEndCallback(Lcom/koushikdutta/async/a/a;)V

    .line 156
    new-instance p0, Lcom/koushikdutta/async/af$6;

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/af$6;-><init>(Lcom/koushikdutta/async/a/a;)V

    invoke-interface {p1, p0}, Lcom/koushikdutta/async/q;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public static pump(Ljava/io/File;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 178
    new-instance p0, Lcom/koushikdutta/async/af$7;

    invoke-direct {p0, v0, p2}, Lcom/koushikdutta/async/af$7;-><init>(Ljava/io/InputStream;Lcom/koushikdutta/async/a/a;)V

    invoke-static {v0, p1, p0}, Lcom/koushikdutta/async/af;->pump(Ljava/io/InputStream;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    return-void

    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 174
    invoke-interface {p2, p0}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 192
    invoke-interface {p2, p0}, Lcom/koushikdutta/async/a/a;->onCompleted(Ljava/lang/Exception;)V

    return-void
.end method

.method public static pump(Ljava/io/InputStream;JLcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 7

    .line 63
    new-instance v6, Lcom/koushikdutta/async/af$1;

    invoke-direct {v6, p4}, Lcom/koushikdutta/async/af$1;-><init>(Lcom/koushikdutta/async/a/a;)V

    .line 74
    new-instance p4, Lcom/koushikdutta/async/af$2;

    move-object v0, p4

    move-object v1, p3

    move-object v2, p0

    move-wide v3, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/koushikdutta/async/af$2;-><init>(Lcom/koushikdutta/async/q;Ljava/io/InputStream;JLcom/koushikdutta/async/a/a;)V

    .line 116
    invoke-interface {p3, p4}, Lcom/koushikdutta/async/q;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    .line 118
    invoke-interface {p3, v6}, Lcom/koushikdutta/async/q;->setClosedCallback(Lcom/koushikdutta/async/a/a;)V

    .line 120
    invoke-interface {p4}, Lcom/koushikdutta/async/a/g;->onWriteable()V

    return-void
.end method

.method public static pump(Ljava/io/InputStream;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V
    .locals 2

    const-wide/32 v0, 0x7fffffff

    .line 59
    invoke-static {p0, v0, v1, p1, p2}, Lcom/koushikdutta/async/af;->pump(Ljava/io/InputStream;JLcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public static stream(Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/j;Lcom/koushikdutta/async/a/a;)V
    .locals 0

    .line 167
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/af;->pump(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    .line 168
    invoke-static {p1, p0, p2}, Lcom/koushikdutta/async/af;->pump(Lcom/koushikdutta/async/n;Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method

.method public static writable(Lcom/koushikdutta/async/a/g;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 260
    invoke-interface {p0}, Lcom/koushikdutta/async/a/g;->onWriteable()V

    :cond_0
    return-void
.end method

.method public static writable(Lcom/koushikdutta/async/q;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 255
    :cond_0
    invoke-interface {p0}, Lcom/koushikdutta/async/q;->getWriteableCallback()Lcom/koushikdutta/async/a/g;

    move-result-object p0

    invoke-static {p0}, Lcom/koushikdutta/async/af;->writable(Lcom/koushikdutta/async/a/g;)V

    return-void
.end method

.method public static writeAll(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/l;Lcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 198
    new-instance v0, Lcom/koushikdutta/async/af$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/koushikdutta/async/af$8;-><init>(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/l;Lcom/koushikdutta/async/a/a;)V

    invoke-interface {p0, v0}, Lcom/koushikdutta/async/q;->setWriteableCallback(Lcom/koushikdutta/async/a/g;)V

    .line 208
    invoke-interface {v0}, Lcom/koushikdutta/async/a/g;->onWriteable()V

    return-void
.end method

.method public static writeAll(Lcom/koushikdutta/async/q;[BLcom/koushikdutta/async/a/a;)V
    .locals 1

    .line 211
    array-length v0, p1

    invoke-static {v0}, Lcom/koushikdutta/async/l;->obtain(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 212
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 213
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 214
    new-instance p1, Lcom/koushikdutta/async/l;

    invoke-direct {p1}, Lcom/koushikdutta/async/l;-><init>()V

    .line 215
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/l;->add(Ljava/nio/ByteBuffer;)Lcom/koushikdutta/async/l;

    .line 216
    invoke-static {p0, p1, p2}, Lcom/koushikdutta/async/af;->writeAll(Lcom/koushikdutta/async/q;Lcom/koushikdutta/async/l;Lcom/koushikdutta/async/a/a;)V

    return-void
.end method
