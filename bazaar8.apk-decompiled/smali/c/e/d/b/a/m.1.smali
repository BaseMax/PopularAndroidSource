.class public final Lc/e/d/b/a/m;
.super Lc/e/d/x;
.source "TypeAdapterRuntimeTypeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lc/e/d/x<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/e/d/j;

.field public final b:Lc/e/d/x;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lc/e/d/j;Lc/e/d/x;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/j;",
            "Lc/e/d/x<",
            "TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lc/e/d/x;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/d/b/a/m;->a:Lc/e/d/j;

    .line 3
    iput-object p2, p0, Lc/e/d/b/a/m;->b:Lc/e/d/x;

    .line 4
    iput-object p3, p0, Lc/e/d/b/a/m;->c:Ljava/lang/reflect/Type;

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/d/b;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/b;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/d/b/a/m;->b:Lc/e/d/x;

    invoke-virtual {v0, p1}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p2, :cond_1

    .line 9
    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 10
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public a(Lc/e/d/d/c;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/c;",
            "TT;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/d/b/a/m;->b:Lc/e/d/x;

    .line 3
    iget-object v1, p0, Lc/e/d/b/a/m;->c:Ljava/lang/reflect/Type;

    invoke-virtual {p0, v1, p2}, Lc/e/d/b/a/m;->a(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lc/e/d/b/a/m;->c:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_1

    .line 5
    iget-object v0, p0, Lc/e/d/b/a/m;->a:Lc/e/d/j;

    invoke-static {v1}, Lc/e/d/c/a;->a(Ljava/lang/reflect/Type;)Lc/e/d/c/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc/e/d/j;->a(Lc/e/d/c/a;)Lc/e/d/x;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$a;

    if-nez v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lc/e/d/b/a/m;->b:Lc/e/d/x;

    instance-of v2, v1, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$a;

    if-nez v2, :cond_1

    move-object v0, v1

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    return-void
.end method
