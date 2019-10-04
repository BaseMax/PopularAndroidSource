.class public final Li/a/e/g;
.super Ljava/lang/Object;
.source "Tasks.kt"

# interfaces
.implements Li/a/e/i;


# static fields
.field public static final a:Lkotlinx/coroutines/scheduling/TaskMode;

.field public static final b:Li/a/e/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/e/g;

    invoke-direct {v0}, Li/a/e/g;-><init>()V

    sput-object v0, Li/a/e/g;->b:Li/a/e/g;

    .line 2
    sget-object v0, Lkotlinx/coroutines/scheduling/TaskMode;->NON_BLOCKING:Lkotlinx/coroutines/scheduling/TaskMode;

    sput-object v0, Li/a/e/g;->a:Lkotlinx/coroutines/scheduling/TaskMode;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public v()V
    .locals 0

    return-void
.end method

.method public w()Lkotlinx/coroutines/scheduling/TaskMode;
    .locals 1

    .line 1
    sget-object v0, Li/a/e/g;->a:Lkotlinx/coroutines/scheduling/TaskMode;

    return-object v0
.end method
