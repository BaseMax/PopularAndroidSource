.class public final Lc/e/a/b/d/n;
.super Lc/e/a/b/d/m;


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x19

    .line 1
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lc/e/a/b/d/m;-><init>([B)V

    .line 2
    iput-object p1, p0, Lc/e/a/b/d/n;->b:[B

    return-void
.end method


# virtual methods
.method public final A()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/n;->b:[B

    return-object v0
.end method
