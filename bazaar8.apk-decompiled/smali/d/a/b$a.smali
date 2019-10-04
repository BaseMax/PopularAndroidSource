.class public abstract Ld/a/b$a;
.super Ljava/lang/Object;
.source "AndroidInjector.java"

# interfaces
.implements Ld/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld/a/b$b<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ld/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ld/a/b<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;)Ld/a/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ld/a/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ld/a/b$a;->b(Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Ld/a/b$a;->a()Ld/a/b;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
