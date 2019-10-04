.class public final Li/a/Ea;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Li/a/X;
.implements Li/a/o;


# static fields
.field public static final a:Li/a/Ea;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li/a/Ea;

    invoke-direct {v0}, Li/a/Ea;-><init>()V

    sput-object v0, Li/a/Ea;->a:Li/a/Ea;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Z
    .locals 1

    const-string v0, "cause"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "NonDisposableHandle"

    return-object v0
.end method
