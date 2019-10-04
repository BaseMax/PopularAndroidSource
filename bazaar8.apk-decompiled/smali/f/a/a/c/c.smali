.class public final Lf/a/a/c/c;
.super Ljava/lang/Object;
.source "InlineNetwork_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lf/a/a/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/k/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/k/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf/a/a/c/c;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lf/a/a/c/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/k/c;",
            ">;)",
            "Lf/a/a/c/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/a/a/c/c;

    invoke-direct {v0, p0}, Lf/a/a/c/c;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lf/a/a/c/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/k/c;",
            ">;)",
            "Lf/a/a/c/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Lf/a/a/c/a;

    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/k/c;

    invoke-direct {v0, p0}, Lf/a/a/c/a;-><init>(Lc/c/a/e/d/k/c;)V

    return-object v0
.end method


# virtual methods
.method public get()Lf/a/a/c/a;
    .locals 1

    .line 2
    iget-object v0, p0, Lf/a/a/c/c;->a:Lg/a/a;

    invoke-static {v0}, Lf/a/a/c/c;->b(Lg/a/a;)Lf/a/a/c/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lf/a/a/c/c;->get()Lf/a/a/c/a;

    move-result-object v0

    return-object v0
.end method
