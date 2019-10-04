.class public final Li/a/c/j;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;

.field public static final c:Ljava/lang/Object;

.field public static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/a/c/v;

    const-string v1, "CONDITION_FALSE"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/c/j;->a:Ljava/lang/Object;

    .line 2
    new-instance v0, Li/a/c/v;

    const-string v1, "ALREADY_REMOVED"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/c/j;->b:Ljava/lang/Object;

    .line 3
    new-instance v0, Li/a/c/v;

    const-string v1, "LIST_EMPTY"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/c/j;->c:Ljava/lang/Object;

    .line 4
    new-instance v0, Li/a/c/v;

    const-string v1, "REMOVE_PREPARED"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/c/j;->d:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Li/a/c/k;
    .locals 1

    const-string v0, "$this$unwrap"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p0, Li/a/c/r;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Li/a/c/r;

    if-eqz v0, :cond_1

    iget-object v0, v0, Li/a/c/r;->a:Li/a/c/k;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p0

    check-cast v0, Li/a/c/k;

    :goto_1
    return-object v0
.end method

.method public static final a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Li/a/c/j;->a:Ljava/lang/Object;

    return-object v0
.end method
