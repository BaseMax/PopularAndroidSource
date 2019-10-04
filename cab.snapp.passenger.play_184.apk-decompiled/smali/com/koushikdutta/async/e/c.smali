.class public final Lcom/koushikdutta/async/e/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/koushikdutta/async/e/c$b;,
        Lcom/koushikdutta/async/e/c$a;
    }
.end annotation


# static fields
.field static a:Ljava/security/MessageDigest; = null

.field private static j:Ljava/lang/String; = "MD5"


# instance fields
.field b:Z

.field c:Ljava/util/Random;

.field d:J

.field e:Lcom/koushikdutta/async/e/c$b;

.field f:Ljava/io/File;

.field g:J

.field h:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    :try_start_0
    sget-object v0, Lcom/koushikdutta/async/e/c;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sput-object v0, Lcom/koushikdutta/async/e/c;->a:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    invoke-static {}, Lcom/koushikdutta/async/e/c;->b()Ljava/security/MessageDigest;

    move-result-object v1

    .line 71
    sput-object v1, Lcom/koushikdutta/async/e/c;->a:Ljava/security/MessageDigest;

    if-eqz v1, :cond_0

    .line 75
    :goto_0
    :try_start_1
    sget-object v0, Lcom/koushikdutta/async/e/c;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    sput-object v0, Lcom/koushikdutta/async/e/c;->a:Ljava/security/MessageDigest;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void

    .line 72
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/File;JZ)V
    .locals 2

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/koushikdutta/async/e/c;->c:Ljava/util/Random;

    const-wide/16 v0, 0x1000

    .line 198
    iput-wide v0, p0, Lcom/koushikdutta/async/e/c;->d:J

    .line 228
    new-instance v0, Lcom/koushikdutta/async/e/c$1;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/e/c$1;-><init>(Lcom/koushikdutta/async/e/c;)V

    iput-object v0, p0, Lcom/koushikdutta/async/e/c;->h:Ljava/util/Comparator;

    .line 279
    iput-object p1, p0, Lcom/koushikdutta/async/e/c;->f:Ljava/io/File;

    .line 280
    iput-wide p2, p0, Lcom/koushikdutta/async/e/c;->g:J

    .line 281
    iput-boolean p4, p0, Lcom/koushikdutta/async/e/c;->b:Z

    .line 282
    new-instance p2, Lcom/koushikdutta/async/e/c$b;

    invoke-direct {p2, p0}, Lcom/koushikdutta/async/e/c$b;-><init>(Lcom/koushikdutta/async/e/c;)V

    iput-object p2, p0, Lcom/koushikdutta/async/e/c;->e:Lcom/koushikdutta/async/e/c$b;

    .line 284
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 285
    invoke-direct {p0}, Lcom/koushikdutta/async/e/c;->c()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 188
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/e/c;->b(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;I)Ljava/io/File;
    .locals 2

    .line 195
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/async/e/c;->f:Ljava/io/File;

    invoke-static {p1, p2}, Lcom/koushikdutta/async/e/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static b()Ljava/security/MessageDigest;
    .locals 5

    .line 49
    sget-object v0, Lcom/koushikdutta/async/e/c;->j:Ljava/lang/String;

    const-string v1, "MD5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 51
    invoke-virtual {v3}, Ljava/security/Provider;->getServices()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/Provider$Service;

    .line 52
    invoke-virtual {v4}, Ljava/security/Provider$Service;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/koushikdutta/async/e/c;->j:Ljava/lang/String;

    .line 54
    :try_start_0
    sget-object v4, Lcom/koushikdutta/async/e/c;->j:Ljava/lang/String;

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return-object v4

    :catch_0
    nop

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private c()V
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/koushikdutta/async/e/c;->b:Z

    if-eqz v0, :cond_0

    .line 266
    new-instance v0, Lcom/koushikdutta/async/e/c$2;

    invoke-direct {v0, p0}, Lcom/koushikdutta/async/e/c$2;-><init>(Lcom/koushikdutta/async/e/c;)V

    .line 271
    invoke-virtual {v0}, Lcom/koushikdutta/async/e/c$2;->start()V

    return-void

    .line 274
    :cond_0
    invoke-virtual {p0}, Lcom/koushikdutta/async/e/c;->a()V

    return-void
.end method

.method public static varargs removeFiles([Ljava/io/File;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 109
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 110
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static varargs declared-synchronized toKeyString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/koushikdutta/async/e/c;

    monitor-enter v0

    .line 82
    :try_start_0
    sget-object v1, Lcom/koushikdutta/async/e/c;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 83
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 84
    sget-object v4, Lcom/koushikdutta/async/e/c;->a:Ljava/security/MessageDigest;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    :cond_0
    sget-object p0, Lcom/koushikdutta/async/e/c;->a:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    .line 87
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 p0, 0x10

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method


# virtual methods
.method final a()V
    .locals 5

    const/4 v0, 0x1

    .line 243
    iput-boolean v0, p0, Lcom/koushikdutta/async/e/c;->i:Z

    const/4 v0, 0x0

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/koushikdutta/async/e/c;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 260
    iput-boolean v0, p0, Lcom/koushikdutta/async/e/c;->i:Z

    return-void

    .line 248
    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 250
    iget-object v1, p0, Lcom/koushikdutta/async/e/c;->h:Ljava/util/Comparator;

    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 252
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 253
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 254
    new-instance v4, Lcom/koushikdutta/async/e/c$a;

    invoke-direct {v4, p0, v2}, Lcom/koushikdutta/async/e/c$a;-><init>(Lcom/koushikdutta/async/e/c;Ljava/io/File;)V

    .line 255
    iget-object v2, p0, Lcom/koushikdutta/async/e/c;->e:Lcom/koushikdutta/async/e/c$b;

    invoke-virtual {v2, v3, v4}, Lcom/koushikdutta/async/e/c$b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v2, p0, Lcom/koushikdutta/async/e/c;->e:Lcom/koushikdutta/async/e/c$b;

    invoke-virtual {v2, v3}, Lcom/koushikdutta/async/e/c$b;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 260
    :cond_1
    iput-boolean v0, p0, Lcom/koushikdutta/async/e/c;->i:Z

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/koushikdutta/async/e/c;->i:Z

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final clear()V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/koushikdutta/async/e/c;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/koushikdutta/async/e/c;->removeFiles([Ljava/io/File;)V

    .line 294
    iget-object v0, p0, Lcom/koushikdutta/async/e/c;->e:Lcom/koushikdutta/async/e/c$b;

    invoke-virtual {v0}, Lcom/koushikdutta/async/e/c$b;->evictAll()V

    return-void
.end method

.method public final varargs commitTempFiles(Ljava/lang/String;[Ljava/io/File;)V
    .locals 5

    .line 168
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/e/c;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 171
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 172
    aget-object v1, p2, v0

    .line 173
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/e/c;->b(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 176
    invoke-static {p2}, Lcom/koushikdutta/async/e/c;->removeFiles([Ljava/io/File;)V

    .line 177
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/e/c;->remove(Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/koushikdutta/async/e/c;->remove(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/koushikdutta/async/e/c;->e:Lcom/koushikdutta/async/e/c$b;

    invoke-static {p1, v0}, Lcom/koushikdutta/async/e/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/koushikdutta/async/e/c$a;

    invoke-direct {v4, p0, v2}, Lcom/koushikdutta/async/e/c$a;-><init>(Lcom/koushikdutta/async/e/c;Ljava/io/File;)V

    invoke-virtual {v1, v3, v4}, Lcom/koushikdutta/async/e/c$b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final exists(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/e/c;->b(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public final exists(Ljava/lang/String;I)Z
    .locals 0

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/koushikdutta/async/e/c;->b(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method public final get(Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/io/FileInputStream;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/koushikdutta/async/e/c;->b(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/e/c;->touch(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final get(Ljava/lang/String;I)[Ljava/io/FileInputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    new-array v0, p2, [Ljava/io/FileInputStream;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_1

    .line 148
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {p0, p1, v2}, Lcom/koushikdutta/async/e/c;->b(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/koushikdutta/async/e/c;->touch(Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, p2, :cond_0

    .line 153
    aget-object v4, v0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/io/Closeable;

    aput-object v4, v5, v1

    .line 154
    invoke-static {v5}, Lcom/koushikdutta/async/e/g;->closeQuietly([Ljava/io/Closeable;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 156
    :cond_0
    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/e/c;->remove(Ljava/lang/String;)V

    .line 157
    throw v2

    :cond_1
    return-object v0
.end method

.method public final getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    const/4 v0, 0x0

    .line 141
    invoke-direct {p0, p1, v0}, Lcom/koushikdutta/async/e/c;->b(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/e/c;->touch(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public final getTempFile()Ljava/io/File;
    .locals 5

    .line 94
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/koushikdutta/async/e/c;->f:Ljava/io/File;

    new-instance v2, Ljava/math/BigInteger;

    const/16 v3, 0x80

    iget-object v4, p0, Lcom/koushikdutta/async/e/c;->c:Ljava/util/Random;

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public final getTempFiles(I)[Ljava/io/File;
    .locals 3

    .line 99
    new-array v0, p1, [Ljava/io/File;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/koushikdutta/async/e/c;->getTempFile()Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 299
    iget-object v1, p0, Lcom/koushikdutta/async/e/c;->f:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    .line 302
    :cond_0
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 303
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x2e

    .line 304
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 306
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final remove(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Lcom/koushikdutta/async/e/c;->e:Lcom/koushikdutta/async/e/c$b;

    invoke-static {p1, v0}, Lcom/koushikdutta/async/e/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/koushikdutta/async/e/c$b;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-direct {p0, p1}, Lcom/koushikdutta/async/e/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final setBlockSize(J)V
    .locals 0

    .line 200
    iput-wide p1, p0, Lcom/koushikdutta/async/e/c;->d:J

    return-void
.end method

.method public final setMaxSize(J)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/koushikdutta/async/e/c;->e:Lcom/koushikdutta/async/e/c$b;

    invoke-virtual {v0, p1, p2}, Lcom/koushikdutta/async/e/c$b;->setMaxSize(J)V

    .line 313
    invoke-direct {p0}, Lcom/koushikdutta/async/e/c;->c()V

    return-void
.end method

.method public final size()J
    .locals 2

    .line 289
    iget-object v0, p0, Lcom/koushikdutta/async/e/c;->e:Lcom/koushikdutta/async/e/c$b;

    invoke-virtual {v0}, Lcom/koushikdutta/async/e/c$b;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public final touch(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/koushikdutta/async/e/c;->e:Lcom/koushikdutta/async/e/c$b;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/koushikdutta/async/e/c$b;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/io/File;->setLastModified(J)Z

    return-object p1
.end method
