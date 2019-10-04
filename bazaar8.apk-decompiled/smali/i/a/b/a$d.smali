.class public final Li/a/b/a$d;
.super Li/a/h;
.source "AbstractChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field public final a:Li/a/b/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Li/a/b/s<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic b:Li/a/b/a;


# direct methods
.method public constructor <init>(Li/a/b/a;Li/a/b/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/a/b/s<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "receive"

    invoke-static {p2, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Li/a/b/a$d;->b:Li/a/b/a;

    invoke-direct {p0}, Li/a/h;-><init>()V

    iput-object p2, p0, Li/a/b/a$d;->a:Li/a/b/s;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Li/a/b/a$d;->a(Ljava/lang/Throwable;)V

    sget-object p1, Lh/h;->a:Lh/h;

    return-object p1
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    iget-object p1, p0, Li/a/b/a$d;->a:Li/a/b/s;

    invoke-virtual {p1}, Li/a/c/k;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Li/a/b/a$d;->b:Li/a/b/a;

    invoke-virtual {p1}, Li/a/b/a;->q()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoveReceiveOnCancel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Li/a/b/a$d;->a:Li/a/b/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
