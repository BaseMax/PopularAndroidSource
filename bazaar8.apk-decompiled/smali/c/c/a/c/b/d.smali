.class public final Lc/c/a/c/b/d;
.super Ljava/lang/Object;
.source "FileExt.kt"


# direct methods
.method public static final a(Ljava/io/File;)V
    .locals 1

    const-string v0, "$this$createParentFileIfNeeded"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 23
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p0}, Lc/c/a/c/c/a;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final a(Ljava/io/File;Ljava/io/File;)Z
    .locals 4

    const-string v0, "$this$copyTo"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 11
    :cond_0
    invoke-static {p1}, Lc/c/a/c/b/d;->a(Ljava/io/File;)V

    .line 12
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 13
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    .line 14
    new-array p1, p1, [B

    .line 15
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 16
    invoke-virtual {p0, p1, v0, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 17
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 19
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    .line 20
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static final a(Ljava/io/File;Ljava/math/BigInteger;)Z
    .locals 1

    const-string v0, "$this$hashIsSameWith"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1
    invoke-static {p0}, Lc/c/a/c/b/d;->b(Ljava/io/File;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p1, p0}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final a(Ljava/io/File;[B)[B
    .locals 3

    const-string v0, "SHA-1"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    :goto_0
    if-lez p0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, v1, p0}, Ljava/security/MessageDigest;->update([BII)V

    .line 6
    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 8
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string p1, "hash.digest()"

    invoke-static {p0, p1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_1

    .line 9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_1
    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method public static final b(Ljava/io/File;)Ljava/math/BigInteger;
    .locals 2

    const-string v0, "$this$hash"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x4000

    .line 1
    new-array v0, v0, [B

    .line 2
    :try_start_0
    invoke-static {p0, v0}, Lc/c/a/c/b/d;->a(Ljava/io/File;[B)[B

    move-result-object p0

    .line 3
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/math/BigInteger;-><init>(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static final b(Ljava/io/File;Ljava/io/File;)Z
    .locals 5

    const-string v0, "$this$moveTo"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "destination"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 5
    :cond_0
    invoke-static {p1}, Lc/c/a/c/b/d;->a(Ljava/io/File;)V

    .line 6
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 7
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x400

    .line 8
    new-array p1, p1, [B

    .line 9
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    :goto_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 10
    invoke-virtual {v2, p1, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 11
    invoke-virtual {v1, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 13
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 14
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method
