.class public abstract Lj/S;
.super Ljava/lang/Object;
.source "ResponseBody.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj/S$a;
    }
.end annotation


# instance fields
.field public a:Ljava/io/Reader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lj/F;JLk/i;)Lj/S;
    .locals 1

    if-eqz p3, :cond_0

    .line 3
    new-instance v0, Lj/Q;

    invoke-direct {v0, p0, p1, p2, p3}, Lj/Q;-><init>(Lj/F;JLk/i;)V

    return-object v0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lj/F;[B)Lj/S;
    .locals 3

    .line 1
    new-instance v0, Lk/g;

    invoke-direct {v0}, Lk/g;-><init>()V

    invoke-virtual {v0, p1}, Lk/g;->write([B)Lk/g;

    .line 2
    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lj/S;->a(Lj/F;JLk/i;)Lj/S;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lj/S;->w()Lk/i;

    move-result-object v0

    invoke-static {v0}, Lj/a/e;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public final s()Ljava/io/Reader;
    .locals 3

    .line 1
    iget-object v0, p0, Lj/S;->a:Ljava/io/Reader;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lj/S$a;

    invoke-virtual {p0}, Lj/S;->w()Lk/i;

    move-result-object v1

    invoke-virtual {p0}, Lj/S;->t()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lj/S$a;-><init>(Lk/i;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lj/S;->a:Ljava/io/Reader;

    :goto_0
    return-object v0
.end method

.method public final t()Ljava/nio/charset/Charset;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lj/S;->v()Lj/F;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lj/a/e;->j:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lj/F;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lj/a/e;->j:Ljava/nio/charset/Charset;

    :goto_0
    return-object v0
.end method

.method public abstract u()J
.end method

.method public abstract v()Lj/F;
.end method

.method public abstract w()Lk/i;
.end method

.method public final x()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lj/S;->w()Lk/i;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lj/S;->t()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lj/a/e;->a(Lk/i;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 3
    invoke-interface {v0, v1}, Lk/i;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-static {v0}, Lj/a/e;->a(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lj/a/e;->a(Ljava/io/Closeable;)V

    throw v1
.end method
