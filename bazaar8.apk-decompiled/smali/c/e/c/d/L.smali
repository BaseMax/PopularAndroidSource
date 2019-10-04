.class public final synthetic Lc/e/c/d/L;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final a:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/e/c/d/L;

    invoke-direct {v0}, Lc/e/c/d/L;-><init>()V

    sput-object v0, Lc/e/c/d/L;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lc/e/c/d/J;->b(Ljava/lang/Runnable;)V

    return-void
.end method
