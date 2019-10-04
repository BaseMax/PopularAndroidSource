.class public final Lc/e/a/b/g/e/i;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/b/g/e/h;

    invoke-direct {v0}, Lc/e/a/b/g/e/h;-><init>()V

    sput-object v0, Lc/e/a/b/g/e/i;->a:Ljava/io/OutputStream;

    return-void
.end method

.method public static a(Ljava/io/InputStream;J)Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance p1, Lc/e/a/b/g/e/k;

    const-wide/32 v0, 0x100000

    invoke-direct {p1, p0, v0, v1}, Lc/e/a/b/g/e/k;-><init>(Ljava/io/InputStream;J)V

    return-object p1
.end method
