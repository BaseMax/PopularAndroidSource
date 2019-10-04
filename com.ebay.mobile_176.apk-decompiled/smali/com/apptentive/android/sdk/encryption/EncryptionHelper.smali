.class public final Lcom/apptentive/android/sdk/encryption/EncryptionHelper;
.super Ljava/lang/Object;
.source "EncryptionHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decryptString(Lcom/apptentive/android/sdk/Encryption;[B)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/apptentive/android/sdk/Encryption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 26
    invoke-interface {p0, p1}, Lcom/apptentive/android/sdk/Encryption;->decrypt([B)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 27
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Encryption is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static encrypt(Lcom/apptentive/android/sdk/Encryption;Ljava/lang/String;)[B
    .locals 0
    .param p0    # Lcom/apptentive/android/sdk/Encryption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/apptentive/android/sdk/Encryption;->encrypt([B)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Encryption is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static readFromEncryptedFile(Lcom/apptentive/android/sdk/Encryption;Ljava/io/File;)[B
    .locals 0
    .param p0    # Lcom/apptentive/android/sdk/Encryption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation

    .line 51
    invoke-static {p1}, Lcom/apptentive/android/sdk/util/Util;->readBytes(Ljava/io/File;)[B

    move-result-object p1

    .line 52
    invoke-interface {p0, p1}, Lcom/apptentive/android/sdk/Encryption;->decrypt([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static writeToEncryptedFile(Lcom/apptentive/android/sdk/Encryption;Ljava/io/File;[B)V
    .locals 2
    .param p0    # Lcom/apptentive/android/sdk/Encryption;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/apptentive/android/sdk/encryption/EncryptionException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 35
    new-instance v0, Landroidx/core/util/AtomicFile;

    invoke-direct {v0, p1}, Landroidx/core/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 p1, 0x0

    .line 39
    :try_start_0
    invoke-virtual {v0}, Landroidx/core/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    invoke-interface {p0, p2}, Lcom/apptentive/android/sdk/Encryption;->encrypt([B)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/FileOutputStream;->write([B)V

    .line 41
    invoke-virtual {v0, v1}, Landroidx/core/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, p1

    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Landroidx/core/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    throw p0

    .line 32
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Encryption is null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
