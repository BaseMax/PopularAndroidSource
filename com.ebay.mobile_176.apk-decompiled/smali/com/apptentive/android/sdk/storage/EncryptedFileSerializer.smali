.class public Lcom/apptentive/android/sdk/storage/EncryptedFileSerializer;
.super Lcom/apptentive/android/sdk/storage/FileSerializer;
.source "EncryptedFileSerializer.java"


# instance fields
.field private final encryption:Lcom/apptentive/android/sdk/Encryption;


# direct methods
.method public constructor <init>(Ljava/io/File;Lcom/apptentive/android/sdk/Encryption;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/apptentive/android/sdk/storage/FileSerializer;-><init>(Ljava/io/File;)V

    if-eqz p2, :cond_0

    .line 29
    iput-object p2, p0, Lcom/apptentive/android/sdk/storage/EncryptedFileSerializer;->encryption:Lcom/apptentive/android/sdk/Encryption;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Encryption is null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected deserialize(Ljava/io/File;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/storage/SerializerException;
        }
    .end annotation

    .line 52
    :try_start_0
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->readBytes(Ljava/io/File;)[B

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EncryptedFileSerializer;->encryption:Lcom/apptentive/android/sdk/Encryption;

    invoke-interface {v0, p1}, Lcom/apptentive/android/sdk/Encryption;->decrypt([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v0, 0x0

    .line 58
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 59
    :try_start_2
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 60
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 64
    :try_start_4
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    .line 65
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

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

    .line 62
    :goto_2
    :try_start_5
    new-instance v2, Lcom/apptentive/android/sdk/storage/SerializerException;

    invoke-direct {v2, p1}, Lcom/apptentive/android/sdk/storage/SerializerException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    .line 64
    :goto_3
    :try_start_6
    invoke-static {v0}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    .line 65
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    throw p1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception p1

    .line 68
    new-instance v0, Lcom/apptentive/android/sdk/storage/SerializerException;

    invoke-direct {v0, p1}, Lcom/apptentive/android/sdk/storage/SerializerException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected serialize(Ljava/io/FileOutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 38
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    :try_start_2
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 40
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 41
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/EncryptedFileSerializer;->encryption:Lcom/apptentive/android/sdk/Encryption;

    invoke-interface {v0, p2}, Lcom/apptentive/android/sdk/Encryption;->encrypt([B)[B

    move-result-object p2

    .line 42
    invoke-virtual {p1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    .line 45
    invoke-static {v2}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    move-object v2, v0

    goto :goto_0

    :catchall_2
    move-exception p1

    move-object v1, v0

    move-object v2, v1

    .line 44
    :goto_0
    invoke-static {v1}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    .line 45
    invoke-static {v2}, Lcom/apptentive/android/sdk/util/Util;->ensureClosed(Ljava/io/Closeable;)V

    throw p1
.end method
