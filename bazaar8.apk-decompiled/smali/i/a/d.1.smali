.class public final Li/a/d;
.super Li/a/ba;
.source "EventLoop.kt"


# instance fields
.field public final f:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 1

    const-string v0, "thread"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Li/a/ba;-><init>()V

    iput-object p1, p0, Li/a/d;->f:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public D()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d;->f:Ljava/lang/Thread;

    return-object v0
.end method
