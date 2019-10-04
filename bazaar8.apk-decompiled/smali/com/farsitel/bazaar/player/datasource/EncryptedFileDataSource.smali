.class public Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;
.super Ljava/lang/Object;
.source "EncryptedFileDataSource.java"

# interfaces
.implements Lc/e/a/a/n/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;,
        Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$EncryptedFileDataSourceException;
    }
.end annotation


# instance fields
.field public a:Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;

.field public b:Landroid/net/Uri;

.field public c:J

.field public d:Z

.field public e:Ljavax/crypto/Cipher;

.field public f:Ljavax/crypto/spec/SecretKeySpec;

.field public g:Ljavax/crypto/spec/IvParameterSpec;


# direct methods
.method public constructor <init>(Lc/c/a/c/e/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lc/c/a/c/e/a;->c()Ljavax/crypto/Cipher;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->e:Ljavax/crypto/Cipher;

    .line 3
    invoke-virtual {p1}, Lc/c/a/c/e/a;->e()Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v0

    iput-object v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->f:Ljavax/crypto/spec/SecretKeySpec;

    .line 4
    invoke-virtual {p1}, Lc/c/a/c/e/a;->f()Ljavax/crypto/spec/IvParameterSpec;

    move-result-object p1

    iput-object p1, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->g:Ljavax/crypto/spec/IvParameterSpec;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 5

    .line 10
    iget-wide v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->c:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return p1

    :cond_0
    int-to-long v2, p1

    .line 11
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p1, v0

    return p1
.end method

.method public a(Lc/e/a/a/n/l;)J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->c:J

    return-wide v0

    .line 3
    :cond_0
    iget-object v0, p1, Lc/e/a/a/n/l;->a:Landroid/net/Uri;

    iput-object v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->b:Landroid/net/Uri;

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->b()V

    .line 5
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->c(Lc/e/a/a/n/l;)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->b(Lc/e/a/a/n/l;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->d:Z

    .line 8
    iget-wide v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->c:J

    return-wide v0

    :catch_0
    move-exception p1

    .line 9
    new-instance v0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$EncryptedFileDataSourceException;

    invoke-direct {v0, p1}, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$EncryptedFileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v0
.end method

.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 12
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public a(Lc/e/a/a/n/A;)V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->b:Landroid/net/Uri;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 4
    new-instance v0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;

    iget-object v2, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->e:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->f:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->g:Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;Ljavax/crypto/spec/SecretKeySpec;Ljavax/crypto/spec/IvParameterSpec;)V

    iput-object v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->a:Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;

    :cond_1
    :goto_0
    return-void
.end method

.method public final b(Lc/e/a/a/n/l;)V
    .locals 6

    .line 5
    iget-wide v0, p1, Lc/e/a/a/n/l;->g:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 6
    iput-wide v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->c:J

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->a:Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;

    invoke-virtual {p1}, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;->available()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->c:J

    .line 8
    iget-wide v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->c:J

    const-wide/32 v4, 0x7fffffff

    cmp-long p1, v0, v4

    if-nez p1, :cond_1

    .line 9
    iput-wide v2, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->c:J

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(Lc/e/a/a/n/l;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->a:Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;

    iget-wide v1, p1, Lc/e/a/a/n/l;->f:J

    invoke-virtual {v0, v1, v2}, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;->h(J)J

    return-void
.end method

.method public close()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->a:Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->a:Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;

    invoke-virtual {v2}, Ljavax/crypto/CipherInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    iput-object v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->a:Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;

    .line 5
    iget-boolean v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->d:Z

    if-eqz v0, :cond_1

    .line 6
    iput-boolean v1, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->d:Z

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 7
    :try_start_1
    new-instance v3, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$EncryptedFileDataSourceException;

    invoke-direct {v3, v2}, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$EncryptedFileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    :goto_0
    iput-object v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->a:Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;

    .line 9
    iget-boolean v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->d:Z

    if-eqz v0, :cond_2

    .line 10
    iput-boolean v1, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->d:Z

    .line 11
    :cond_2
    throw v2
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public read([BII)I
    .locals 6

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-wide v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->c:J

    const-wide/16 v2, 0x0

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-nez v5, :cond_1

    return v4

    .line 2
    :cond_1
    invoke-virtual {p0, p3}, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->a(I)I

    move-result p3

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->a:Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$a;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 p2, -0x1

    if-ne p1, v4, :cond_3

    .line 4
    iget-wide v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->c:J

    cmp-long p1, v0, p2

    if-nez p1, :cond_2

    return v4

    .line 5
    :cond_2
    new-instance p1, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$EncryptedFileDataSourceException;

    new-instance p2, Ljava/io/EOFException;

    invoke-direct {p2}, Ljava/io/EOFException;-><init>()V

    invoke-direct {p1, p2}, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$EncryptedFileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p1

    .line 6
    :cond_3
    iget-wide v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->c:J

    cmp-long v2, v0, p2

    if-eqz v2, :cond_4

    int-to-long p2, p1

    sub-long/2addr v0, p2

    .line 7
    iput-wide v0, p0, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource;->c:J

    :cond_4
    return p1

    :catch_0
    move-exception p1

    .line 8
    new-instance p2, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$EncryptedFileDataSourceException;

    invoke-direct {p2, p1}, Lcom/farsitel/bazaar/player/datasource/EncryptedFileDataSource$EncryptedFileDataSourceException;-><init>(Ljava/io/IOException;)V

    throw p2
.end method
