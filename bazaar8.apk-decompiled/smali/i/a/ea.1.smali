.class public final Li/a/ea;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"


# static fields
.field public static final a:Li/a/c/v;

.field public static final b:Li/a/c/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/a/c/v;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/ea;->a:Li/a/c/v;

    .line 2
    new-instance v0, Li/a/c/v;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/ea;->b:Li/a/c/v;

    return-void
.end method

.method public static final synthetic a()Li/a/c/v;
    .locals 1

    .line 1
    sget-object v0, Li/a/ea;->b:Li/a/c/v;

    return-object v0
.end method

.method public static final synthetic b()Li/a/c/v;
    .locals 1

    .line 1
    sget-object v0, Li/a/ea;->a:Li/a/c/v;

    return-object v0
.end method
