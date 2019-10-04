.class public final Lc/b/a/i/a/d$b;
.super Ljava/lang/Object;
.source "FactoryPools.java"

# interfaces
.implements Lb/i/j/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/i/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lb/i/j/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/b/a/i/a/d$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/i/a/d$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final b:Lc/b/a/i/a/d$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/i/a/d$d<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Lb/i/j/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/i/j/e<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/i/j/e;Lc/b/a/i/a/d$a;Lc/b/a/i/a/d$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/i/j/e<",
            "TT;>;",
            "Lc/b/a/i/a/d$a<",
            "TT;>;",
            "Lc/b/a/i/a/d$d<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/i/a/d$b;->c:Lb/i/j/e;

    .line 3
    iput-object p2, p0, Lc/b/a/i/a/d$b;->a:Lc/b/a/i/a/d$a;

    .line 4
    iput-object p3, p0, Lc/b/a/i/a/d$b;->b:Lc/b/a/i/a/d$d;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/i/a/d$b;->c:Lb/i/j/e;

    invoke-interface {v0}, Lb/i/j/e;->a()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/b/a/i/a/d$b;->a:Lc/b/a/i/a/d$a;

    invoke-interface {v0}, Lc/b/a/i/a/d$a;->a()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "FactoryPools"

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created new "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    :cond_0
    instance-of v1, v0, Lc/b/a/i/a/d$c;

    if-eqz v1, :cond_1

    .line 6
    move-object v1, v0

    check-cast v1, Lc/b/a/i/a/d$c;

    invoke-interface {v1}, Lc/b/a/i/a/d$c;->f()Lc/b/a/i/a/g;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lc/b/a/i/a/g;->a(Z)V

    :cond_1
    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 7
    instance-of v0, p1, Lc/b/a/i/a/d$c;

    if-eqz v0, :cond_0

    .line 8
    move-object v0, p1

    check-cast v0, Lc/b/a/i/a/d$c;

    invoke-interface {v0}, Lc/b/a/i/a/d$c;->f()Lc/b/a/i/a/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/b/a/i/a/g;->a(Z)V

    .line 9
    :cond_0
    iget-object v0, p0, Lc/b/a/i/a/d$b;->b:Lc/b/a/i/a/d$d;

    invoke-interface {v0, p1}, Lc/b/a/i/a/d$d;->a(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lc/b/a/i/a/d$b;->c:Lb/i/j/e;

    invoke-interface {v0, p1}, Lb/i/j/e;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
