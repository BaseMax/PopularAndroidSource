.class public final Li/a/c/b;
.super Ljava/lang/Object;
.source "Atomic.kt"


# static fields
.field public static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/a/c/v;

    const-string v1, "NO_DECISION"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/c/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Li/a/c/b;->a:Ljava/lang/Object;

    return-object v0
.end method
