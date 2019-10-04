.class public final Lc/e/a/b/g/f/pc;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/b/g/f/qc;

    invoke-direct {v0}, Lc/e/a/b/g/f/qc;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/pc;->a:Ljava/util/Iterator;

    .line 2
    new-instance v0, Lc/e/a/b/g/f/rc;

    invoke-direct {v0}, Lc/e/a/b/g/f/rc;-><init>()V

    sput-object v0, Lc/e/a/b/g/f/pc;->b:Ljava/lang/Iterable;

    return-void
.end method

.method public static a()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/e/a/b/g/f/pc;->b:Ljava/lang/Iterable;

    return-object v0
.end method

.method public static synthetic b()Ljava/util/Iterator;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/f/pc;->a:Ljava/util/Iterator;

    return-object v0
.end method
