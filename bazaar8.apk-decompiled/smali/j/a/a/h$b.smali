.class public final Lj/a/a/h$b;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj/a/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[J

.field public final c:[Ljava/io/File;

.field public final d:[Ljava/io/File;

.field public e:Z

.field public f:Lj/a/a/h$a;

.field public g:J

.field public final synthetic h:Lj/a/a/h;


# direct methods
.method public constructor <init>(Lj/a/a/h;Ljava/lang/String;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lj/a/a/h$b;->h:Lj/a/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lj/a/a/h$b;->a:Ljava/lang/String;

    .line 3
    iget v0, p1, Lj/a/a/h;->i:I

    new-array v1, v0, [J

    iput-object v1, p0, Lj/a/a/h$b;->b:[J

    .line 4
    new-array v1, v0, [Ljava/io/File;

    iput-object v1, p0, Lj/a/a/h$b;->c:[Ljava/io/File;

    .line 5
    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lj/a/a/h$b;->d:[Ljava/io/File;

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p2, 0x2e

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    const/4 v1, 0x0

    .line 8
    :goto_0
    iget v2, p1, Lj/a/a/h;->i:I

    if-ge v1, v2, :cond_0

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    iget-object v2, p0, Lj/a/a/h$b;->c:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lj/a/a/h;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    const-string v2, ".tmp"

    .line 11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-object v2, p0, Lj/a/a/h$b;->d:[Ljava/io/File;

    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lj/a/a/h;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v3, v2, v1

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lj/a/a/h$c;
    .locals 10

    .line 4
    iget-object v0, p0, Lj/a/a/h$b;->h:Lj/a/a/h;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lj/a/a/h$b;->h:Lj/a/a/h;

    iget v0, v0, Lj/a/a/h;->i:I

    new-array v0, v0, [Lk/z;

    .line 6
    iget-object v1, p0, Lj/a/a/h$b;->b:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [J

    const/4 v8, 0x0

    const/4 v1, 0x0

    .line 7
    :goto_0
    :try_start_0
    iget-object v2, p0, Lj/a/a/h$b;->h:Lj/a/a/h;

    iget v2, v2, Lj/a/a/h;->i:I

    if-ge v1, v2, :cond_0

    .line 8
    iget-object v2, p0, Lj/a/a/h$b;->h:Lj/a/a/h;

    iget-object v2, v2, Lj/a/a/h;->b:Lj/a/f/b;

    iget-object v3, p0, Lj/a/a/h$b;->c:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lj/a/f/b;->a(Ljava/io/File;)Lk/z;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v9, Lj/a/a/h$c;

    iget-object v2, p0, Lj/a/a/h$b;->h:Lj/a/a/h;

    iget-object v3, p0, Lj/a/a/h$b;->a:Ljava/lang/String;

    iget-wide v4, p0, Lj/a/a/h$b;->g:J

    move-object v1, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v7}, Lj/a/a/h$c;-><init>(Lj/a/a/h;Ljava/lang/String;J[Lk/z;[J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 10
    :catch_0
    :goto_1
    iget-object v1, p0, Lj/a/a/h$b;->h:Lj/a/a/h;

    iget v1, v1, Lj/a/a/h;->i:I

    if-ge v8, v1, :cond_1

    .line 11
    aget-object v1, v0, v8

    if-eqz v1, :cond_1

    .line 12
    aget-object v1, v0, v8

    invoke-static {v1}, Lj/a/e;->a(Ljava/io/Closeable;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 13
    :cond_1
    :try_start_1
    iget-object v0, p0, Lj/a/a/h$b;->h:Lj/a/a/h;

    invoke-virtual {v0, p0}, Lj/a/a/h;->a(Lj/a/a/h$b;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    return-object v0

    .line 14
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final a([Ljava/lang/String;)Ljava/io/IOException;
    .locals 3

    .line 3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lk/h;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lj/a/a/h$b;->b:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    const/16 v5, 0x20

    .line 2
    invoke-interface {p1, v5}, Lk/h;->writeByte(I)Lk/h;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lk/h;->g(J)Lk/h;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b([Ljava/lang/String;)V
    .locals 5

    .line 1
    array-length v0, p1

    iget-object v1, p0, Lj/a/a/h$b;->h:Lj/a/a/h;

    iget v1, v1, Lj/a/a/h;->i:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lj/a/a/h$b;->b:[J

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 4
    :catch_0
    invoke-virtual {p0, p1}, Lj/a/a/h$b;->a([Ljava/lang/String;)Ljava/io/IOException;

    throw v2

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lj/a/a/h$b;->a([Ljava/lang/String;)Ljava/io/IOException;

    goto :goto_2

    :goto_1
    throw v2

    :goto_2
    goto :goto_1
.end method
