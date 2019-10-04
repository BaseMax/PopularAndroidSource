.class public final Lcom/getkeepsafe/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/getkeepsafe/a/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/getkeepsafe/a/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 194
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    .line 198
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-wide v1
.end method

.method private static a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/a/d;)Lcom/getkeepsafe/a/a$a;
    .locals 16

    move-object/from16 v0, p1

    .line 1037
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1039
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/16 v5, 0x15

    if-lt v2, v5, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 1042
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v2, v4

    new-array v2, v2, [Ljava/lang/String;

    .line 1043
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 1044
    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    array-length v1, v1

    invoke-static {v5, v3, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-array v2, v4, [Ljava/lang/String;

    .line 1047
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    aput-object v1, v2, v3

    .line 67
    :goto_0
    array-length v1, v2

    const/4 v5, 0x0

    move-object v7, v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_6

    aget-object v8, v2, v6

    const/4 v9, 0x0

    :goto_2
    add-int/lit8 v10, v9, 0x1

    const/4 v11, 0x5

    if-ge v9, v11, :cond_1

    .line 71
    :try_start_0
    new-instance v9, Ljava/util/zip/ZipFile;

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v12, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v9

    goto :goto_3

    :catch_0
    move v9, v10

    goto :goto_2

    :cond_1
    :goto_3
    if-eqz v7, :cond_5

    const/4 v9, 0x0

    :goto_4
    add-int/lit8 v10, v9, 0x1

    if-ge v9, v11, :cond_4

    .line 86
    array-length v9, v0

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v9, :cond_3

    aget-object v13, v0, v12

    .line 87
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "lib"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-char v15, Ljava/io/File;->separatorChar:C

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v13, Ljava/io/File;->separatorChar:C

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v13, p2

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v14, v15, v3

    aput-object v8, v15, v4

    const-string v3, "Looking for %s in APK %s..."

    move-object/from16 v4, p3

    .line 90
    invoke-virtual {v4, v3, v15}, Lcom/getkeepsafe/a/d;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-virtual {v7, v14}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 95
    new-instance v0, Lcom/getkeepsafe/a/a$a;

    invoke-direct {v0, v7, v3}, Lcom/getkeepsafe/a/a$a;-><init>(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)V

    return-object v0

    :cond_2
    add-int/lit8 v12, v12, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_5

    :cond_3
    move-object/from16 v13, p2

    move-object/from16 v4, p3

    move v9, v10

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    move-object/from16 v13, p2

    move-object/from16 v4, p3

    .line 101
    :try_start_1
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :cond_5
    move-object/from16 v13, p2

    move-object/from16 v4, p3

    :catch_1
    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    return-object v5
.end method

.method private static a(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 212
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_0
    return-void
.end method


# virtual methods
.method public final installLibrary(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/getkeepsafe/a/d;)V
    .locals 10

    const/4 v0, 0x0

    .line 125
    :try_start_0
    invoke-static {p1, p2, p3, p5}, Lcom/getkeepsafe/a/a;->a(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lcom/getkeepsafe/a/d;)Lcom/getkeepsafe/a/a$a;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x5

    if-ge v1, v3, :cond_3

    :try_start_1
    const-string v1, "Found %s! Extracting..."

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p3, v4, p2

    .line 133
    invoke-virtual {p5, v1, v4}, Lcom/getkeepsafe/a/d;->log(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 135
    :try_start_2
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p4}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 146
    :cond_0
    :try_start_3
    iget-object v1, p1, Lcom/getkeepsafe/a/a$a;->zipFile:Ljava/util/zip/ZipFile;

    iget-object v4, p1, Lcom/getkeepsafe/a/a$a;->zipEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 147
    :try_start_4
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    :try_start_5
    invoke-static {v1, v4}, Lcom/getkeepsafe/a/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v5

    .line 149
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileDescriptor;->sync()V

    .line 150
    invoke-virtual {p4}, Ljava/io/File;->length()J

    move-result-wide v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    cmp-long v9, v5, v7

    if-eqz v9, :cond_1

    .line 161
    :try_start_6
    invoke-static {v1}, Lcom/getkeepsafe/a/a;->a(Ljava/io/Closeable;)V

    .line 162
    :goto_1
    invoke-static {v4}, Lcom/getkeepsafe/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_5

    .line 161
    :cond_1
    invoke-static {v1}, Lcom/getkeepsafe/a/a;->a(Ljava/io/Closeable;)V

    .line 162
    invoke-static {v4}, Lcom/getkeepsafe/a/a;->a(Ljava/io/Closeable;)V

    .line 166
    invoke-virtual {p4, v3, p2}, Ljava/io/File;->setReadable(ZZ)Z

    .line 167
    invoke-virtual {p4, v3, p2}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 168
    invoke-virtual {p4, v3}, Ljava/io/File;->setWritable(Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz p1, :cond_2

    .line 175
    :try_start_7
    iget-object p2, p1, Lcom/getkeepsafe/a/a$a;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p2, :cond_2

    .line 176
    iget-object p1, p1, Lcom/getkeepsafe/a/a$a;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    nop

    :catch_0
    :cond_2
    return-void

    :catchall_0
    move-exception p2

    move-object v0, v4

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_2

    :catch_1
    move-object v4, v0

    goto :goto_3

    :catch_2
    move-object v4, v0

    goto :goto_4

    :catchall_2
    move-exception p2

    move-object v1, v0

    .line 161
    :goto_2
    :try_start_8
    invoke-static {v1}, Lcom/getkeepsafe/a/a;->a(Ljava/io/Closeable;)V

    .line 162
    invoke-static {v0}, Lcom/getkeepsafe/a/a;->a(Ljava/io/Closeable;)V

    throw p2

    :catch_3
    move-object v1, v0

    move-object v4, v1

    .line 161
    :catch_4
    :goto_3
    invoke-static {v1}, Lcom/getkeepsafe/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_5
    move-object v1, v0

    move-object v4, v1

    :catch_6
    :goto_4
    invoke-static {v1}, Lcom/getkeepsafe/a/a;->a(Ljava/io/Closeable;)V

    goto :goto_1

    :catch_7
    :goto_5
    move v1, v2

    goto :goto_0

    :cond_3
    const-string p2, "FATAL! Couldn\'t extract the library from the APK!"

    .line 172
    invoke-virtual {p5, p2}, Lcom/getkeepsafe/a/d;->log(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz p1, :cond_4

    .line 175
    :try_start_9
    iget-object p2, p1, Lcom/getkeepsafe/a/a$a;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p2, :cond_4

    .line 176
    iget-object p1, p1, Lcom/getkeepsafe/a/a$a;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    nop

    :catch_8
    :cond_4
    return-void

    .line 128
    :cond_5
    :try_start_a
    new-instance p2, Lcom/getkeepsafe/a/b;

    invoke-direct {p2, p3}, Lcom/getkeepsafe/a/b;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception p2

    goto :goto_6

    :catchall_4
    move-exception p2

    move-object p1, v0

    :goto_6
    if-eqz p1, :cond_6

    .line 175
    :try_start_b
    iget-object p3, p1, Lcom/getkeepsafe/a/a$a;->zipFile:Ljava/util/zip/ZipFile;

    if-eqz p3, :cond_6

    .line 176
    iget-object p1, p1, Lcom/getkeepsafe/a/a$a;->zipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 178
    :catch_9
    :cond_6
    goto :goto_8

    :goto_7
    throw p2

    :goto_8
    goto :goto_7
.end method
