.class public Lc/e/d/b/a/J;
.super Lc/e/d/x;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters$35;->a(Lc/e/d/j;Lc/e/d/c/a;)Lc/e/d/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/d/x<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Lcom/google/gson/internal/bind/TypeAdapters$35;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/bind/TypeAdapters$35;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/d/b/a/J;->b:Lcom/google/gson/internal/bind/TypeAdapters$35;

    iput-object p2, p0, Lc/e/d/b/a/J;->a:Ljava/lang/Class;

    invoke-direct {p0}, Lc/e/d/x;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/d/b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/b;",
            ")TT1;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lc/e/d/b/a/J;->b:Lcom/google/gson/internal/bind/TypeAdapters$35;

    iget-object v0, v0, Lcom/google/gson/internal/bind/TypeAdapters$35;->b:Lc/e/d/x;

    invoke-virtual {v0, p1}, Lc/e/d/x;->a(Lc/e/d/d/b;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lc/e/d/b/a/J;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/gson/JsonSyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lc/e/d/b/a/J;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public a(Lc/e/d/d/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/e/d/d/c;",
            "TT1;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/d/b/a/J;->b:Lcom/google/gson/internal/bind/TypeAdapters$35;

    iget-object v0, v0, Lcom/google/gson/internal/bind/TypeAdapters$35;->b:Lc/e/d/x;

    invoke-virtual {v0, p1, p2}, Lc/e/d/x;->a(Lc/e/d/d/c;Ljava/lang/Object;)V

    return-void
.end method
