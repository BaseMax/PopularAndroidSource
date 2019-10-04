.class public final Li/a/g/e;
.super Ljava/lang/Object;
.source "Mutex.kt"


# static fields
.field public static final a:Li/a/c/v;

.field public static final b:Li/a/c/v;

.field public static final c:Li/a/c/v;

.field public static final d:Li/a/c/v;

.field public static final e:Li/a/c/v;

.field public static final f:Li/a/c/v;

.field public static final g:Li/a/g/a;

.field public static final h:Li/a/g/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/a/c/v;

    const-string v1, "LOCK_FAIL"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/g/e;->a:Li/a/c/v;

    .line 2
    new-instance v0, Li/a/c/v;

    const-string v1, "ENQUEUE_FAIL"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/g/e;->b:Li/a/c/v;

    .line 3
    new-instance v0, Li/a/c/v;

    const-string v1, "UNLOCK_FAIL"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/g/e;->c:Li/a/c/v;

    .line 4
    new-instance v0, Li/a/c/v;

    const-string v1, "SELECT_SUCCESS"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/g/e;->d:Li/a/c/v;

    .line 5
    new-instance v0, Li/a/c/v;

    const-string v1, "LOCKED"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/g/e;->e:Li/a/c/v;

    .line 6
    new-instance v0, Li/a/c/v;

    const-string v1, "UNLOCKED"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/g/e;->f:Li/a/c/v;

    .line 7
    new-instance v0, Li/a/g/a;

    sget-object v1, Li/a/g/e;->e:Li/a/c/v;

    invoke-direct {v0, v1}, Li/a/g/a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Li/a/g/e;->g:Li/a/g/a;

    .line 8
    new-instance v0, Li/a/g/a;

    sget-object v1, Li/a/g/e;->f:Li/a/c/v;

    invoke-direct {v0, v1}, Li/a/g/a;-><init>(Ljava/lang/Object;)V

    sput-object v0, Li/a/g/e;->h:Li/a/g/a;

    return-void
.end method

.method public static final synthetic a()Li/a/g/a;
    .locals 1

    .line 1
    sget-object v0, Li/a/g/e;->g:Li/a/g/a;

    return-object v0
.end method

.method public static final a(Z)Li/a/g/b;
    .locals 1

    .line 3
    new-instance v0, Li/a/g/c;

    invoke-direct {v0, p0}, Li/a/g/c;-><init>(Z)V

    return-object v0
.end method

.method public static synthetic a(ZILjava/lang/Object;)Li/a/g/b;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 2
    :cond_0
    invoke-static {p0}, Li/a/g/e;->a(Z)Li/a/g/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()Li/a/g/a;
    .locals 1

    .line 1
    sget-object v0, Li/a/g/e;->h:Li/a/g/a;

    return-object v0
.end method

.method public static final synthetic c()Li/a/c/v;
    .locals 1

    .line 1
    sget-object v0, Li/a/g/e;->e:Li/a/c/v;

    return-object v0
.end method

.method public static final synthetic d()Li/a/c/v;
    .locals 1

    .line 1
    sget-object v0, Li/a/g/e;->f:Li/a/c/v;

    return-object v0
.end method

.method public static final synthetic e()Li/a/c/v;
    .locals 1

    .line 1
    sget-object v0, Li/a/g/e;->c:Li/a/c/v;

    return-object v0
.end method
