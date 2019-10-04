.class public final Li/a/ia;
.super Li/a/ha;
.source "Executors.kt"


# instance fields
.field public final b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    const-string v0, "executor"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Li/a/ha;-><init>()V

    iput-object p1, p0, Li/a/ia;->b:Ljava/util/concurrent/Executor;

    .line 2
    invoke-virtual {p0}, Li/a/ha;->y()V

    return-void
.end method


# virtual methods
.method public x()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/ia;->b:Ljava/util/concurrent/Executor;

    return-object v0
.end method
