.class public abstract Lj/O;
.super Ljava/lang/Object;
.source "RequestBody.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lj/F;Ljava/lang/String;)Lj/O;
    .locals 2

    .line 1
    sget-object v0, Lj/a/e;->j:Ljava/nio/charset/Charset;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Lj/F;->a()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lj/a/e;->j:Ljava/nio/charset/Charset;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; charset=utf-8"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lj/F;->b(Ljava/lang/String;)Lj/F;

    move-result-object p0

    .line 5
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    .line 6
    invoke-static {p0, p1}, Lj/O;->a(Lj/F;[B)Lj/O;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lj/F;Lokio/ByteString;)Lj/O;
    .locals 1

    .line 7
    new-instance v0, Lj/M;

    invoke-direct {v0, p0, p1}, Lj/M;-><init>(Lj/F;Lokio/ByteString;)V

    return-object v0
.end method

.method public static a(Lj/F;[B)Lj/O;
    .locals 2

    .line 8
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lj/O;->a(Lj/F;[BII)Lj/O;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lj/F;[BII)Lj/O;
    .locals 7

    if-eqz p1, :cond_0

    .line 9
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lj/a/e;->a(JJJ)V

    .line 10
    new-instance v0, Lj/N;

    invoke-direct {v0, p0, p3, p1, p2}, Lj/N;-><init>(Lj/F;I[BI)V

    return-object v0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "content == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract a(Lk/h;)V
.end method

.method public abstract b()Lj/F;
.end method
