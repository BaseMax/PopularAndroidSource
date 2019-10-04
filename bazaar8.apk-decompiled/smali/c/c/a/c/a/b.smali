.class public final Lc/c/a/c/a/b;
.super Ljava/lang/Object;
.source "GlobalDispatchers.kt"


# static fields
.field public static final a:Lh/c/e;

.field public static final b:Lh/c/e;

.field public static final c:Lc/c/a/c/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/c/a/c/a/b;

    invoke-direct {v0}, Lc/c/a/c/a/b;-><init>()V

    sput-object v0, Lc/c/a/c/a/b;->c:Lc/c/a/c/a/b;

    .line 2
    invoke-static {}, Li/a/W;->c()Li/a/Ca;

    move-result-object v0

    sput-object v0, Lc/c/a/c/a/b;->a:Lh/c/e;

    .line 3
    invoke-static {}, Li/a/W;->b()Li/a/C;

    move-result-object v0

    sput-object v0, Lc/c/a/c/a/b;->b:Lh/c/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lh/c/e;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/c/a/b;->b:Lh/c/e;

    return-object v0
.end method

.method public final b()Lh/c/e;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/c/a/b;->a:Lh/c/e;

    return-object v0
.end method
