.class public Lc/e/c/b/p$a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-common@@16.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/c/b/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Lc/e/c/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/c/b/e<",
            "*>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/e/c/b/p$a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/e/c/b/p$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lc/e/c/b/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/c/b/e<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/e/c/b/p$a;->b:Ljava/util/Set;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lc/e/c/b/p$a;->c:Ljava/util/Set;

    .line 4
    iput-object p1, p0, Lc/e/c/b/p$a;->a:Lc/e/c/b/e;

    return-void
.end method


# virtual methods
.method public a()Lc/e/c/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/e/c/b/e<",
            "*>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/c/b/p$a;->a:Lc/e/c/b/e;

    return-object v0
.end method

.method public a(Lc/e/c/b/p$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/c/b/p$a;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lc/e/c/b/p$a;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/c/b/p$a;->b:Ljava/util/Set;

    return-object v0
.end method

.method public b(Lc/e/c/b/p$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/c/b/p$a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Lc/e/c/b/p$a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/c/b/p$a;->c:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lc/e/c/b/p$a;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/c/b/p$a;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method
