.class public final Li/a/ra$b;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Lh/c/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/ra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh/c/e$c<",
        "Li/a/ra;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic a:Li/a/ra$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/ra$b;

    invoke-direct {v0}, Li/a/ra$b;-><init>()V

    sput-object v0, Li/a/ra$b;->a:Li/a/ra$b;

    .line 2
    sget-object v0, Lkotlinx/coroutines/CoroutineExceptionHandler;->c:Lkotlinx/coroutines/CoroutineExceptionHandler$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
