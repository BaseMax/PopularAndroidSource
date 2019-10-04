.class public final Lc/e/a/b/g/e/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lc/e/a/b/g/e/b;

.field public static volatile b:Lc/e/a/b/g/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/e/a/b/g/e/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/e/a/b/g/e/c;-><init>(Lc/e/a/b/g/e/d;)V

    .line 2
    sput-object v0, Lc/e/a/b/g/e/a;->a:Lc/e/a/b/g/e/b;

    sput-object v0, Lc/e/a/b/g/e/a;->b:Lc/e/a/b/g/e/b;

    return-void
.end method

.method public static a()Lc/e/a/b/g/e/b;
    .locals 1

    .line 1
    sget-object v0, Lc/e/a/b/g/e/a;->b:Lc/e/a/b/g/e/b;

    return-object v0
.end method
