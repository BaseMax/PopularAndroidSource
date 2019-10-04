.class public final Lc/e/a/b/d/g/g;
.super Ljava/lang/Object;


# static fields
.field public static final a:[Ljava/lang/String;

.field public static b:Landroid/os/DropBoxManager;

.field public static c:Z

.field public static d:I

.field public static e:I

.field public static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android."

    aput-object v2, v0, v1

    const/4 v2, 0x1

    const-string v3, "com.android."

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "dalvik."

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "java."

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "javax."

    aput-object v3, v0, v2

    sput-object v0, Lc/e/a/b/d/g/g;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    sput-object v0, Lc/e/a/b/d/g/g;->b:Landroid/os/DropBoxManager;

    .line 3
    sput-boolean v1, Lc/e/a/b/d/g/g;->c:Z

    const/4 v0, -0x1

    .line 4
    sput v0, Lc/e/a/b/d/g/g;->d:I

    .line 5
    sput v1, Lc/e/a/b/d/g/g;->e:I

    .line 6
    sput v1, Lc/e/a/b/d/g/g;->f:I

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Throwable;)Z
    .locals 1

    const/high16 v0, 0x20000000

    .line 1
    invoke-static {p0, p1, v0}, Lc/e/a/b/d/g/g;->a(Landroid/content/Context;Ljava/lang/Throwable;I)Z

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Throwable;I)Z
    .locals 1

    const/4 p2, 0x0

    .line 2
    :try_start_0
    invoke-static {p0}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p0

    const-string p1, "CrashUtils"

    const-string v0, "Error adding exception to DropBox!"

    .line 4
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p2
.end method
