.class public final Lb/H/g$a;
.super Lb/H/n$a;
.source "OneTimeWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/H/n$a<",
        "Lb/H/g$a;",
        "Lb/H/g;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lb/H/n$a;-><init>(Ljava/lang/Class;)V

    .line 2
    iget-object p1, p0, Lb/H/n$a;->c:Lb/H/a/c/o;

    const-class v0, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lb/H/a/c/o;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(JLjava/util/concurrent/TimeUnit;)Lb/H/g$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/n$a;->c:Lb/H/a/c/o;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, v0, Lb/H/a/c/o;->i:J

    return-object p0
.end method

.method public b()Lb/H/g;
    .locals 2

    .line 2
    iget-boolean v0, p0, Lb/H/n$a;->a:Z

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lb/H/n$a;->c:Lb/H/a/c/o;

    iget-object v0, v0, Lb/H/a/c/o;->l:Lb/H/b;

    .line 3
    invoke-virtual {v0}, Lb/H/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set backoff criteria on an idle mode job"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    :goto_0
    new-instance v0, Lb/H/g;

    invoke-direct {v0, p0}, Lb/H/g;-><init>(Lb/H/g$a;)V

    return-object v0
.end method

.method public bridge synthetic b()Lb/H/n;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb/H/g$a;->b()Lb/H/g;

    move-result-object v0

    return-object v0
.end method

.method public c()Lb/H/g$a;
    .locals 0

    return-object p0
.end method

.method public bridge synthetic c()Lb/H/n$a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lb/H/g$a;->c()Lb/H/g$a;

    return-object p0
.end method
