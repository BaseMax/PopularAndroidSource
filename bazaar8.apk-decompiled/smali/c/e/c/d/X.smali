.class public final Lc/e/c/d/X;
.super Ljava/lang/Object;

# interfaces
.implements Lc/e/a/b/j/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/e/a/b/j/a<",
        "Landroid/os/Bundle;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/e/c/d/T;


# direct methods
.method public constructor <init>(Lc/e/c/d/T;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/c/d/X;->a:Lc/e/c/d/T;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lc/e/a/b/j/g;)Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Ljava/io/IOException;

    invoke-virtual {p1, v0}, Lc/e/a/b/j/g;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    .line 2
    iget-object v0, p0, Lc/e/c/d/X;->a:Lc/e/c/d/T;

    invoke-static {v0, p1}, Lc/e/c/d/T;->a(Lc/e/c/d/T;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
