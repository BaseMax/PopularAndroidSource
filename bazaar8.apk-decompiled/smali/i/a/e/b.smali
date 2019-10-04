.class public final Li/a/e/b;
.super Li/a/e/c;
.source "Dispatcher.kt"


# static fields
.field public static final f:Li/a/C;

.field public static final g:Li/a/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Li/a/e/b;

    invoke-direct {v0}, Li/a/e/b;-><init>()V

    sput-object v0, Li/a/e/b;->g:Li/a/e/b;

    .line 2
    invoke-static {}, Li/a/c/w;->a()I

    move-result v1

    const/16 v2, 0x40

    invoke-static {v2, v1}, Lh/h/g;->a(II)I

    move-result v4

    const-string v3, "kotlinx.coroutines.io.parallelism"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Li/a/c/w;->a(Ljava/lang/String;IIIILjava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Li/a/e/c;->b(I)Li/a/C;

    move-result-object v0

    sput-object v0, Li/a/e/b;->f:Li/a/C;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Li/a/e/c;-><init>(IILjava/lang/String;ILh/f/b/f;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DefaultDispatcher cannot be closed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "DefaultDispatcher"

    return-object v0
.end method

.method public final z()Li/a/C;
    .locals 1

    .line 1
    sget-object v0, Li/a/e/b;->f:Li/a/C;

    return-object v0
.end method
