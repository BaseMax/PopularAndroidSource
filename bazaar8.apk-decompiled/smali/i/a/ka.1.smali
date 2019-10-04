.class public final Li/a/ka;
.super Ljava/lang/Object;
.source "CoroutineScope.kt"

# interfaces
.implements Li/a/H;


# static fields
.field public static final a:Li/a/ka;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/ka;

    invoke-direct {v0}, Li/a/ka;-><init>()V

    sput-object v0, Li/a/ka;->a:Li/a/ka;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lh/c/e;
    .locals 1

    .line 1
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    return-object v0
.end method
