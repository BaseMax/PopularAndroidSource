.class public final Li/a/W;
.super Ljava/lang/Object;
.source "Dispatchers.kt"


# static fields
.field public static final a:Li/a/C;

.field public static final b:Li/a/C;

.field public static final c:Li/a/C;

.field public static final d:Li/a/W;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/W;

    invoke-direct {v0}, Li/a/W;-><init>()V

    sput-object v0, Li/a/W;->d:Li/a/W;

    .line 2
    invoke-static {}, Li/a/B;->a()Li/a/C;

    move-result-object v0

    sput-object v0, Li/a/W;->a:Li/a/C;

    .line 3
    sget-object v0, Li/a/Pa;->a:Li/a/Pa;

    sput-object v0, Li/a/W;->b:Li/a/C;

    .line 4
    sget-object v0, Li/a/e/b;->g:Li/a/e/b;

    invoke-virtual {v0}, Li/a/e/b;->z()Li/a/C;

    move-result-object v0

    sput-object v0, Li/a/W;->c:Li/a/C;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Li/a/C;
    .locals 1

    .line 1
    sget-object v0, Li/a/W;->a:Li/a/C;

    return-object v0
.end method

.method public static final b()Li/a/C;
    .locals 1

    .line 1
    sget-object v0, Li/a/W;->c:Li/a/C;

    return-object v0
.end method

.method public static final c()Li/a/Ca;
    .locals 1

    .line 1
    sget-object v0, Li/a/c/n;->b:Li/a/Ca;

    return-object v0
.end method
