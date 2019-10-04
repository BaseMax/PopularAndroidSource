.class public final Li/a/Ma;
.super Ljava/lang/Object;
.source "EventLoop.common.kt"


# static fields
.field public static final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Li/a/aa;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Li/a/Ma;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/Ma;

    invoke-direct {v0}, Li/a/Ma;-><init>()V

    sput-object v0, Li/a/Ma;->b:Li/a/Ma;

    .line 2
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Li/a/Ma;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Li/a/aa;
    .locals 1

    .line 1
    sget-object v0, Li/a/Ma;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/aa;

    return-object v0
.end method

.method public final a(Li/a/aa;)V
    .locals 1

    const-string v0, "eventLoop"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Li/a/Ma;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final b()Li/a/aa;
    .locals 2

    .line 1
    sget-object v0, Li/a/Ma;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Li/a/aa;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Li/a/da;->a()Li/a/aa;

    move-result-object v0

    sget-object v1, Li/a/Ma;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final c()V
    .locals 2

    .line 1
    sget-object v0, Li/a/Ma;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
