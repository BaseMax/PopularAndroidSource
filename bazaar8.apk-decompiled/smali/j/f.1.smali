.class public final Lj/f;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/f$b;,
        Lj/f$c;,
        Lj/f$a;
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

    invoke-direct {p0, p1, p2, p3, v0}, Lj/f;-><init>(Ljava/io/File;JLj/a/f/b;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;JLj/a/f/b;)V
    .locals 7

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lj/d;

    invoke-direct {v0, p0}, Lj/d;-><init>(Lj/f;)V

    iput-object v0, p0, Lj/f;->a:Lj/a/a/j;

    const v3, 0x31191

    const/4 v4, 0x2

    move-object v1, p4

    move-object v2, p1

    move-wide v5, p2

    .line 4
    invoke-static/range {v1 .. v6}, Lj/a/a/h;->a(Lj/a/f/b;Ljava/io/File;IIJ)Lj/a/a/h;

    move-result-object p1

    iput-object p1, p0, Lj/f;->b:Lj/a/a/h;

    return-void
.end method

.method public static a(Lk/i;)I
    .locals 5

    .line 32
    :try_start_0
    invoke-interface {p0}, Lk/i;->f()J

    move-result-wide v0

    .line 33
    invoke-interface {p0}, Lk/i;->g()Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    long-to-int p0, v0

    return p0

    .line 35
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

    .line 36
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Lj/D;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lj/D;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lokio/ByteString;->d(Ljava/lang/String;)Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->h()Lokio/ByteString;

    move-result-object p0

    invoke-virtual {p0}, Lokio/ByteString;->g()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lj/L;)Lj/P;
    .locals 4

    .line 2
    invoke-virtual {p1}, Lj/L;->g()Lj/D;

    move-result-object v0

    invoke-static {v0}, Lj/f;->a(Lj/D;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lj/f;->b:Lj/a/a/h;

    invoke-virtual {v2, v0}, Lj/a/a/h;->f(Ljava/lang/String;)Lj/a/a/h$c;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    :try_start_1
    new-instance v2, Lj/f$c;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lj/a/a/h$c;->b(I)Lk/z;

    move-result-object v3

    invoke-direct {v2, v3}, Lj/f$c;-><init>(Lk/z;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5
    invoke-virtual {v2, v0}, Lj/f$c;->a(Lj/a/a/h$c;)Lj/P;

    move-result-object v0

    .line 6
    invoke-virtual {v2, p1, v0}, Lj/f$c;->a(Lj/L;Lj/P;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    invoke-virtual {v0}, Lj/P;->s()Lj/S;

    move-result-object p1

    invoke-static {p1}, Lj/a/e;->a(Ljava/io/Closeable;)V

    return-object v1

    :cond_1
    return-object v0

    .line 8
    :catch_0
    invoke-static {v0}, Lj/a/e;->a(Ljava/io/Closeable;)V

    :catch_1
    return-object v1
.end method

.method public a(Lj/P;)Lj/a/a/c;
    .locals 3

    .line 9
    invoke-virtual {p1}, Lj/P;->F()Lj/L;

    move-result-object v0

    invoke-virtual {v0}, Lj/L;->e()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lj/P;->F()Lj/L;

    move-result-object v1

    invoke-virtual {v1}, Lj/L;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lj/a/c/g;->a(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 11
    :try_start_0
    invoke-virtual {p1}, Lj/P;->F()Lj/L;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj/f;->b(Lj/L;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v2

    :cond_0
    const-string v1, "GET"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v2

    .line 13
    :cond_1
    invoke-static {p1}, Lj/a/c/f;->c(Lj/P;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v2

    .line 14
    :cond_2
    new-instance v0, Lj/f$c;

    invoke-direct {v0, p1}, Lj/f$c;-><init>(Lj/P;)V

    .line 15
    :try_start_1
    iget-object v1, p0, Lj/f;->b:Lj/a/a/h;

    invoke-virtual {p1}, Lj/P;->F()Lj/L;

    move-result-object p1

    invoke-virtual {p1}, Lj/L;->g()Lj/D;

    move-result-object p1

    invoke-static {p1}, Lj/f;->a(Lj/D;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lj/a/a/h;->e(Ljava/lang/String;)Lj/a/a/h$a;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p1, :cond_3

    return-object v2

    .line 16
    :cond_3
    :try_start_2
    invoke-virtual {v0, p1}, Lj/f$c;->a(Lj/a/a/h$a;)V

    .line 17
    new-instance v0, Lj/f$a;

    invoke-direct {v0, p0, p1}, Lj/f$a;-><init>(Lj/f;Lj/a/a/h$a;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    :catch_1
    move-object p1, v2

    .line 18
    :catch_2
    invoke-virtual {p0, p1}, Lj/f;->a(Lj/a/a/h$a;)V

    return-object v2
.end method

.method public a(Lj/P;Lj/P;)V
    .locals 1

    .line 19
    new-instance v0, Lj/f$c;

    invoke-direct {v0, p2}, Lj/f$c;-><init>(Lj/P;)V

    .line 20
    invoke-virtual {p1}, Lj/P;->s()Lj/S;

    move-result-object p1

    check-cast p1, Lj/f$b;

    iget-object p1, p1, Lj/f$b;->b:Lj/a/a/h$c;

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lj/a/a/h$c;->s()Lj/a/a/h$a;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    .line 22
    :try_start_1
    invoke-virtual {v0, p1}, Lj/f$c;->a(Lj/a/a/h$a;)V

    .line 23
    invoke-virtual {p1}, Lj/a/a/h$a;->b()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 24
    :catch_1
    invoke-virtual {p0, p1}, Lj/f;->a(Lj/a/a/h$a;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized a(Lj/a/a/d;)V
    .locals 1

    monitor-enter p0

    .line 26
    :try_start_0
    iget v0, p0, Lj/f;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj/f;->g:I

    .line 27
    iget-object v0, p1, Lj/a/a/d;->a:Lj/L;

    if-eqz v0, :cond_0

    .line 28
    iget p1, p0, Lj/f;->e:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lj/f;->e:I

    goto :goto_0

    .line 29
    :cond_0
    iget-object p1, p1, Lj/a/a/d;->b:Lj/P;

    if-eqz p1, :cond_1

    .line 30
    iget p1, p0, Lj/f;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lj/f;->f:I
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

.method public b(Lj/L;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/f;->b:Lj/a/a/h;

    invoke-virtual {p1}, Lj/L;->g()Lj/D;

    move-result-object p1

    invoke-static {p1}, Lj/f;->a(Lj/D;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj/a/a/h;->h(Ljava/lang/String;)Z

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/f;->b:Lj/a/a/h;

    invoke-virtual {v0}, Lj/a/a/h;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/f;->b:Lj/a/a/h;

    invoke-virtual {v0}, Lj/a/a/h;->flush()V

    return-void
.end method

.method public declared-synchronized s()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget v0, p0, Lj/f;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj/f;->f:I
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
