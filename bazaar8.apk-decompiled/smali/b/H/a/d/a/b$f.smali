.class public final Lb/H/a/d/a/b$f;
.super Ljava/lang/Object;
.source "AbstractFuture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/a/d/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final a:Lb/H/a/d/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/H/a/d/a/b<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final b:Lc/e/b/a/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/b/a/a/a<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lb/H/a/d/a/b;Lc/e/b/a/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/H/a/d/a/b<",
            "TV;>;",
            "Lc/e/b/a/a/a<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/H/a/d/a/b$f;->a:Lb/H/a/d/a/b;

    .line 3
    iput-object p2, p0, Lb/H/a/d/a/b$f;->b:Lc/e/b/a/a/a;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/H/a/d/a/b$f;->a:Lb/H/a/d/a/b;

    iget-object v0, v0, Lb/H/a/d/a/b;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lb/H/a/d/a/b$f;->b:Lc/e/b/a/a/a;

    invoke-static {v0}, Lb/H/a/d/a/b;->a(Lc/e/b/a/a/a;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lb/H/a/d/a/b;->c:Lb/H/a/d/a/b$a;

    iget-object v2, p0, Lb/H/a/d/a/b$f;->a:Lb/H/a/d/a/b;

    invoke-virtual {v1, v2, p0, v0}, Lb/H/a/d/a/b$a;->a(Lb/H/a/d/a/b;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lb/H/a/d/a/b$f;->a:Lb/H/a/d/a/b;

    invoke-static {v0}, Lb/H/a/d/a/b;->a(Lb/H/a/d/a/b;)V

    :cond_1
    return-void
.end method
