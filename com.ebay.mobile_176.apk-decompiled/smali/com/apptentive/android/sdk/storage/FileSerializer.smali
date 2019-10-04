.class public Lcom/apptentive/android/sdk/storage/FileSerializer;
.super Ljava/lang/Object;
.source "FileSerializer.java"

# interfaces
.implements Lcom/apptentive/android/sdk/storage/Serializer;


# instance fields
.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 28
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/FileSerializer;->file:Ljava/io/File;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "\'file\' is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public deserialize()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/storage/SerializerException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/FileSerializer;->file:Ljava/io/File;

    invoke-virtual {p0, v0}, Lcom/apptentive/android/sdk/storage/FileSerializer;->deserialize(Ljava/io/File;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected deserialize(Ljava/io/File;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/storage/SerializerException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 69
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 70
    :try_start_1
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 71
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    .line 76
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v3, v1

    move-object v1, p1

    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v3, v1

    move-object v1, p1

    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v3, v1

    move-object v1, v0

    :goto_0
    move-object v0, v3

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v3, v1

    move-object v1, v0

    :goto_1
    move-object v0, v3

    goto :goto_2

    :catchall_2
    move-exception p1

    move-object v1, v0

    goto :goto_3

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 73
    :goto_2
    :try_start_3
    new-instance v2, Lcom/apptentive/android/sdk/storage/SerializerException;

    invoke-direct {v2, p1}, Lcom/apptentive/android/sdk/storage/SerializerException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    .line 75
    :goto_3
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    .line 76
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    throw p1
.end method

.method protected serialize(Ljava/io/FileOutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 56
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 57
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 58
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-static {v2}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    throw p1
.end method

.method public serialize(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/storage/SerializerException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/FileSerializer;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 35
    new-instance v0, Landroidx/core/util/AtomicFile;

    iget-object v1, p0, Lcom/apptentive/android/sdk/storage/FileSerializer;->file:Ljava/io/File;

    invoke-direct {v0, v1}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 38
    :try_start_0
    invoke-virtual {v0}, Landroidx/core/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/apptentive/android/sdk/storage/FileSerializer;->serialize(Ljava/io/FileOutputStream;Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v0, v1}, Landroidx/core/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 v1, 0x0

    .line 42
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 43
    new-instance v0, Lcom/apptentive/android/sdk/storage/SerializerException;

    invoke-direct {v0, p1}, Lcom/apptentive/android/sdk/storage/SerializerException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
