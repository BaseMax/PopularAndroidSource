.class public final Lcom/google/gson/internal/bind/TypeAdapters$26;
.super Ljava/lang/Object;
.source "TypeAdapters.java"

# interfaces
.implements Lc/e/d/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/d/b/a/T;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/e/d/j;Lc/e/d/c/a;)Lc/e/d/x;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lc/e/d/j;",
            "Lc/e/d/c/a<",
            "TT;>;)",
            "Lc/e/d/x<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lc/e/d/c/a;->a()Ljava/lang/Class;

    move-result-object p2

    const-class v0, Ljava/sql/Timestamp;

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    const-class p2, Ljava/util/Date;

    invoke-virtual {p1, p2}, Lc/e/d/j;->a(Ljava/lang/Class;)Lc/e/d/x;

    move-result-object p1

    .line 3
    new-instance p2, Lc/e/d/b/a/E;

    invoke-direct {p2, p0, p1}, Lc/e/d/b/a/E;-><init>(Lcom/google/gson/internal/bind/TypeAdapters$26;Lc/e/d/x;)V

    return-object p2
.end method
