.class public final Lc/c/a/e/h/a/c;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/e/h/a/c$b;,
        Lc/c/a/e/h/a/c$c;,
        Lc/c/a/e/h/a/c$a;
    }
.end annotation


# instance fields
.field public final a:Lj/a/a/j;

.field public final b:Lj/a/a/h;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 1

    .line 1
    sget-object v0, Lj/a/f/b;->a:Lj/a/f/b;

    invoke-direct {p0, p1, p2, p3, v0}, Lc/c/a/e/h/a/c;-><init>(Ljava/io/File;JLj/a/f/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JLj/a/f/b;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lc/c/a/e/h/a/a;

    invoke-direct {v0, p0}, Lc/c/a/e/h/a/a;-><init>(Lc/c/a/e/h/a/c;)V

    iput-object v0, p0, Lc/c/a/e/h/a/c;->a:Lj/a/a/j;

    const v3, 0x31191

    const/4 v4, 0x2

    move-object v1, p4

    move-object v2, p1

    move-wide v5, p2

    .line 4
    invoke-static/range {v1 .. v6}, Lj/a/a/h;->a(Lj/a/f/b;Ljava/io/File;IIJ)Lj/a/a/h;

    move-result-object p1

    iput-object p1, p0, Lc/c/a/e/h/a/c;->b:Lj/a/a/h;

    return-void
.end method

.method public static synthetic a(Lc/c/a/e/h/a/c;)I
    .locals 2

    .line 4
    iget v0, p0, Lc/c/a/e/h/a/c;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc/c/a/e/h/a/c;->c:I

    return v0
.end method

.method public static synthetic a(Lk/i;)I
    .locals 0

    .line 5
    invoke-static {p0}, Lc/c/a/e/h/a/c;->b(Lk/i;)I

    move-result p0

    return p0
.end method

.method public static synthetic a(Lc/c/a/e/h/a/c;Lj/L;)Lj/P;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/e/h/a/c;->a(Lj/L;)Lj/P;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/e/h/a/c;Lj/P;)Lj/a/a/c;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/e/h/a/c;->a(Lj/P;)Lj/a/a/c;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lc/c/a/e/h/a/c;Lj/P;Lj/P;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lc/c/a/e/h/a/c;->a(Lj/P;Lj/P;)V

    return-void
.end method

.method public static synthetic b(Lc/c/a/e/h/a/c;)I
    .locals 2

    .line 2
    iget v0, p0, Lc/c/a/e/h/a/c;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lc/c/a/e/h/a/c;->d:I

    return v0
.end method

.method public static b(Lk/i;)I
    .locals 5

    .line 9
    :try_start_0
    invoke-interface {p0}, Lk/i;->f()J

    move-result-wide v0

    .line 10
    invoke-interface {p0}, Lk/i;->g()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    long-to-int p0, v0

    return p0

    .line 12
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expected an int but was \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lj/L;)Ljava/lang/String;
    .locals 1

    .line 3
    new-instance v0, Lk/g;

    invoke-direct {v0}, Lk/g;-><init>()V

    .line 4
    invoke-virtual {p0}, Lj/L;->a()Lj/O;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {p0, v0}, Lj/O;->a(Lk/h;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lk/g;->t()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-virtual {v0}, Lk/g;->close()V

    return-object p0
.end method

.method public static synthetic b(Lc/c/a/e/h/a/c;Lj/L;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc/c/a/e/h/a/c;->d(Lj/L;)V

    return-void
.end method

.method public static c(Lj/L;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lj/L;->g()Lj/D;

    move-result-object v0

    invoke-virtual {v0}, Lj/D;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokio/ByteString;->d(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->h()Lokio/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lokio/ByteString;->g()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lj/L;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lc/c/a/e/h/a/c;->b(Lj/L;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/c/a/e/h/a/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, "MD5"

    .line 2
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 9
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 11
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    :cond_2
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public final a(Lj/L;)Lj/P;
    .locals 4

    .line 6
    invoke-static {p1}, Lc/c/a/e/h/a/c;->c(Lj/L;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    iget-object v2, p0, Lc/c/a/e/h/a/c;->b:Lj/a/a/h;

    invoke-virtual {v2, v0}, Lj/a/a/h;->f(Ljava/lang/String;)Lj/a/a/h$c;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    return-object v1

    .line 8
    :cond_0
    :try_start_1
    new-instance v2, Lc/c/a/e/h/a/c$c;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lj/a/a/h$c;->b(I)Lk/z;

    move-result-object v3

    invoke-direct {v2, v3}, Lc/c/a/e/h/a/c$c;-><init>(Lk/z;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    invoke-virtual {v2, v0}, Lc/c/a/e/h/a/c$c;->a(Lj/a/a/h$c;)Lj/P;

    move-result-object v0

    .line 10
    invoke-virtual {v2, p1, v0}, Lc/c/a/e/h/a/c$c;->a(Lj/L;Lj/P;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 11
    invoke-virtual {v0}, Lj/P;->s()Lj/S;

    move-result-object p1

    invoke-static {p1}, Lj/a/e;->a(Ljava/io/Closeable;)V

    return-object v1

    :cond_1
    return-object v0

    .line 12
    :catch_0
    invoke-static {v0}, Lj/a/e;->a(Ljava/io/Closeable;)V

    :catch_1
    return-object v1
.end method

.method public final a(Lj/P;)Lj/a/a/c;
    .locals 3

    .line 13
    invoke-static {p1}, Lj/a/c/f;->c(Lj/P;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 14
    :cond_0
    new-instance v0, Lc/c/a/e/h/a/c$c;

    invoke-direct {v0, p1}, Lc/c/a/e/h/a/c$c;-><init>(Lj/P;)V

    .line 15
    :try_start_0
    iget-object v2, p0, Lc/c/a/e/h/a/c;->b:Lj/a/a/h;

    invoke-virtual {p1}, Lj/P;->F()Lj/L;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/e/h/a/c;->c(Lj/L;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lj/a/a/h;->e(Ljava/lang/String;)Lj/a/a/h$a;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return-object v1

    .line 16
    :cond_1
    :try_start_1
    invoke-virtual {v0, p1}, Lc/c/a/e/h/a/c$c;->a(Lj/a/a/h$a;)V

    .line 17
    new-instance v0, Lc/c/a/e/h/a/c$a;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/h/a/c$a;-><init>(Lc/c/a/e/h/a/c;Lj/a/a/h$a;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-object p1, v1

    .line 18
    :catch_1
    invoke-virtual {p0, p1}, Lc/c/a/e/h/a/c;->a(Lj/a/a/h$a;)V

    return-object v1
.end method

.method public final a(Lj/P;Lj/P;)V
    .locals 2

    .line 19
    new-instance v0, Lc/c/a/e/h/a/c$c;

    invoke-direct {v0, p2}, Lc/c/a/e/h/a/c$c;-><init>(Lj/P;)V

    .line 20
    invoke-virtual {p1}, Lj/P;->s()Lj/S;

    move-result-object p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lj/P;->s()Lj/S;

    move-result-object p1

    check-cast p1, Lc/c/a/e/h/a/c$b;

    iget-object p1, p1, Lc/c/a/e/h/a/c$b;->b:Lj/a/a/h$c;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lj/a/a/h$c;->s()Lj/a/a/h$a;

    move-result-object p1

    move-object v1, p1

    :cond_1
    if-eqz v1, :cond_2

    .line 22
    invoke-virtual {v0, v1}, Lc/c/a/e/h/a/c$c;->a(Lj/a/a/h$a;)V

    .line 23
    invoke-virtual {v1}, Lj/a/a/h$a;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 24
    :catch_0
    invoke-virtual {p0, v1}, Lc/c/a/e/h/a/c;->a(Lj/a/a/h$a;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized a(Lj/a/a/d;)V
    .locals 1

    monitor-enter p0

    .line 26
    :try_start_0
    iget v0, p0, Lc/c/a/e/h/a/c;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/c/a/e/h/a/c;->g:I

    .line 27
    iget-object v0, p1, Lj/a/a/d;->a:Lj/L;

    if-eqz v0, :cond_0

    .line 28
    iget p1, p0, Lc/c/a/e/h/a/c;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/c/a/e/h/a/c;->e:I

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p1, Lj/a/a/d;->b:Lj/P;

    if-eqz p1, :cond_1

    .line 30
    iget p1, p0, Lc/c/a/e/h/a/c;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lc/c/a/e/h/a/c;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Lj/a/a/h$a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 25
    :try_start_0
    invoke-virtual {p1}, Lj/a/a/h$a;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/h/a/c;->b:Lj/a/a/h;

    invoke-virtual {v0}, Lj/a/a/h;->close()V

    return-void
.end method

.method public final d(Lj/L;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/h/a/c;->b:Lj/a/a/h;

    invoke-static {p1}, Lc/c/a/e/h/a/c;->c(Lj/L;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj/a/a/h;->h(Ljava/lang/String;)Z

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/h/a/c;->b:Lj/a/a/h;

    invoke-virtual {v0}, Lj/a/a/h;->flush()V

    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/h/a/c;->b:Lj/a/a/h;

    invoke-virtual {v0}, Lj/a/a/h;->u()V

    return-void
.end method

.method public declared-synchronized t()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lc/c/a/e/h/a/c;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lc/c/a/e/h/a/c;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
