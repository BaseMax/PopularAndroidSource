.class public final Lc/e/a/b/g/f/qb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Ljava/nio/charset/Charset;

.field public static final c:[B

.field public static final d:Ljava/nio/ByteBuffer;

.field public static final e:Lc/e/a/b/g/f/Ua;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "UTF-8"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lc/e/a/b/g/f/qb;->a:Ljava/nio/charset/Charset;

    const-string v0, "ISO-8859-1"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lc/e/a/b/g/f/qb;->b:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    .line 3
    new-array v1, v0, [B

    .line 4
    sput-object v1, Lc/e/a/b/g/f/qb;->c:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    sput-object v1, Lc/e/a/b/g/f/qb;->d:Ljava/nio/ByteBuffer;

    .line 5
    sget-object v1, Lc/e/a/b/g/f/qb;->c:[B

    .line 6
    array-length v2, v1

    .line 7
    invoke-static {v1, v0, v2, v0}, Lc/e/a/b/g/f/Ua;->a([BIIZ)Lc/e/a/b/g/f/Ua;

    move-result-object v0

    .line 8
    sput-object v0, Lc/e/a/b/g/f/qb;->e:Lc/e/a/b/g/f/Ua;

    return-void
.end method

.method public static a(I[BII)I
    .locals 2

    move v0, p0

    move p0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge p0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    aget-byte v1, p1, p0

    add-int/2addr v0, v1

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a(J)I
    .locals 2

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p1, p0

    return p1
.end method

.method public static a(Z)I
    .locals 0

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    return p0

    :cond_0
    const/16 p0, 0x4d5

    return p0
.end method

.method public static a([B)I
    .locals 2

    .line 3
    array-length v0, p0

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p0, v1, v0}, Lc/e/a/b/g/f/qb;->a(I[BII)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    :cond_0
    return p0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    check-cast p0, Lc/e/a/b/g/f/Sb;

    invoke-interface {p0}, Lc/e/a/b/g/f/Sb;->e()Lc/e/a/b/g/f/Tb;

    move-result-object p0

    check-cast p1, Lc/e/a/b/g/f/Sb;

    invoke-interface {p0, p1}, Lc/e/a/b/g/f/Tb;->a(Lc/e/a/b/g/f/Sb;)Lc/e/a/b/g/f/Tb;

    invoke-interface {p0}, Lc/e/a/b/g/f/Tb;->n()Lc/e/a/b/g/f/Sb;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lc/e/a/b/g/f/Sb;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static b([B)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lc/e/a/b/g/f/Hc;->a([B)Z

    move-result p0

    return p0
.end method

.method public static c([B)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lc/e/a/b/g/f/qb;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method
