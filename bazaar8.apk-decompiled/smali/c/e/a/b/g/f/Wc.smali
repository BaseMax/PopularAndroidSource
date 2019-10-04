.class public abstract Lc/e/a/b/g/f/Wc;
.super Ljava/lang/Object;


# instance fields
.field public volatile a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lc/e/a/b/g/f/Wc;->a:I

    return-void
.end method

.method public static final a(Lc/e/a/b/g/f/Wc;[B)Lc/e/a/b/g/f/Wc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc/e/a/b/g/f/Wc;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lc/e/a/b/g/f/Wc;->a(Lc/e/a/b/g/f/Wc;[BII)Lc/e/a/b/g/f/Wc;

    return-object p0
.end method

.method public static final a(Lc/e/a/b/g/f/Wc;[BII)Lc/e/a/b/g/f/Wc;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lc/e/a/b/g/f/Wc;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    const/4 p2, 0x0

    .line 8
    :try_start_0
    invoke-static {p1, p2, p3}, Lc/e/a/b/g/f/Pc;->a([BII)Lc/e/a/b/g/f/Pc;

    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lc/e/a/b/g/f/Wc;->a(Lc/e/a/b/g/f/Pc;)Lc/e/a/b/g/f/Wc;

    .line 10
    invoke-virtual {p1, p2}, Lc/e/a/b/g/f/Pc;->b(I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/measurement/zziu; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 12
    throw p0
.end method

.method public static final a(Lc/e/a/b/g/f/Wc;)[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Wc;->b()I

    move-result v0

    new-array v0, v0, [B

    .line 2
    array-length v1, v0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    invoke-static {v0, v2, v1}, Lc/e/a/b/g/f/Qc;->a([BII)Lc/e/a/b/g/f/Qc;

    move-result-object v1

    .line 4
    invoke-virtual {p0, v1}, Lc/e/a/b/g/f/Wc;->a(Lc/e/a/b/g/f/Qc;)V

    .line 5
    invoke-virtual {v1}, Lc/e/a/b/g/f/Qc;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract a(Lc/e/a/b/g/f/Pc;)Lc/e/a/b/g/f/Wc;
.end method

.method public a(Lc/e/a/b/g/f/Qc;)V
    .locals 0

    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Wc;->a()I

    move-result v0

    .line 2
    iput v0, p0, Lc/e/a/b/g/f/Wc;->a:I

    return v0
.end method

.method public c()Lc/e/a/b/g/f/Wc;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/e/a/b/g/f/Wc;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/e/a/b/g/f/Wc;->c()Lc/e/a/b/g/f/Wc;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lc/e/a/b/g/f/Xc;->a(Lc/e/a/b/g/f/Wc;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
