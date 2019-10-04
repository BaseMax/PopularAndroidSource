.class public Lb/H/a/b;
.super Ljava/lang/Object;
.source "OperationImpl.java"

# interfaces
.implements Lb/H/i;


# instance fields
.field public final a:Lb/r/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/r/t<",
            "Lb/H/i$a;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lb/H/a/d/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/H/a/d/a/c<",
            "Lb/H/i$a$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lb/r/t;

    invoke-direct {v0}, Lb/r/t;-><init>()V

    iput-object v0, p0, Lb/H/a/b;->a:Lb/r/t;

    .line 3
    invoke-static {}, Lb/H/a/d/a/c;->e()Lb/H/a/d/a/c;

    move-result-object v0

    iput-object v0, p0, Lb/H/a/b;->b:Lb/H/a/d/a/c;

    .line 4
    sget-object v0, Lb/H/i;->b:Lb/H/i$a$b;

    invoke-virtual {p0, v0}, Lb/H/a/b;->a(Lb/H/i$a;)V

    return-void
.end method


# virtual methods
.method public a(Lb/H/i$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/H/a/b;->a:Lb/r/t;

    invoke-virtual {v0, p1}, Lb/r/t;->a(Ljava/lang/Object;)V

    .line 2
    instance-of v0, p1, Lb/H/i$a$c;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lb/H/a/b;->b:Lb/H/a/d/a/c;

    check-cast p1, Lb/H/i$a$c;

    invoke-virtual {v0, p1}, Lb/H/a/d/a/c;->c(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_0
    instance-of v0, p1, Lb/H/i$a$a;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lb/H/i$a$a;

    .line 6
    iget-object v0, p0, Lb/H/a/b;->b:Lb/H/a/d/a/c;

    invoke-virtual {p1}, Lb/H/i$a$a;->a()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lb/H/a/d/a/c;->a(Ljava/lang/Throwable;)Z

    :cond_1
    :goto_0
    return-void
.end method
