.class public Lc/e/d/b/a/i;
.super Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$b;
.source "ReflectiveTypeAdapterFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;->a(Lc/e/d/j;Ljava/lang/reflect/Field;Ljava/lang/String;Lc/e/d/c/a;ZZ)Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic d:Ljava/lang/reflect/Field;

.field public final synthetic e:Z

.field public final synthetic f:Lc/e/d/x;

.field public final synthetic g:Lc/e/d/j;

.field public final synthetic h:Lc/e/d/c/a;

.field public final synthetic i:Z

.field public final synthetic j:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLc/e/d/x;Lc/e/d/j;Lc/e/d/c/a;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/d/b/a/i;->j:Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iput-object p5, p0, Lc/e/d/b/a/i;->d:Ljava/lang/reflect/Field;

    iput-boolean p6, p0, Lc/e/d/b/a/i;->e:Z

    iput-object p7, p0, Lc/e/d/b/a/i;->f:Lc/e/d/x;

    iput-object p8, p0, Lc/e/d/b/a/i;->g:Lc/e/d/j;

    iput-object p9, p0, Lc/e/d/b/a/i;->h:Lc/e/d/c/a;

    iput-boolean p10, p0, Lc/e/d/b/a/i;->i:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$b;-><init>(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/d/b;Ljava/lang/Object;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lc/e/d/b/a/i;->f:Lc/e/d/x;

    invoke-virtual {v0, p1}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6
    iget-boolean v0, p0, Lc/e/d/b/a/i;->i:Z

    if-nez v0, :cond_1

    .line 7
    :cond_0
    iget-object v0, p0, Lc/e/d/b/a/i;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Lc/e/d/d/c;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/e/d/b/a/i;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Lc/e/d/b/a/i;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/e/d/b/a/i;->f:Lc/e/d/x;

    goto :goto_0

    :cond_0
    new-instance v0, Lc/e/d/b/a/m;

    iget-object v1, p0, Lc/e/d/b/a/i;->g:Lc/e/d/j;

    iget-object v2, p0, Lc/e/d/b/a/i;->f:Lc/e/d/x;

    iget-object v3, p0, Lc/e/d/b/a/i;->h:Lc/e/d/c/a;

    .line 3
    invoke-virtual {v3}, Lc/e/d/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lc/e/d/b/a/m;-><init>(Lc/e/d/j;Lc/e/d/x;Ljava/lang/reflect/Type;)V

    .line 4
    :goto_0
    invoke-virtual {v0, p1, p2}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2

    .line 8
    iget-boolean v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$b;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 9
    :cond_0
    iget-object v0, p0, Lc/e/d/b/a/i;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
