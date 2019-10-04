.class public final Lc/c/a/n/h/d;
.super Ljava/lang/Object;
.source "CategoryViewModel_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/n/h/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/g/a;",
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
            "Lc/c/a/e/d/g/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/n/h/d;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/n/h/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/g/a;",
            ">;)",
            "Lc/c/a/n/h/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/h/d;

    invoke-direct {v0, p0}, Lc/c/a/n/h/d;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/n/h/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/g/a;",
            ">;)",
            "Lc/c/a/n/h/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/h/c;

    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/g/a;

    invoke-direct {v0, p0}, Lc/c/a/n/h/c;-><init>(Lc/c/a/e/d/g/a;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/n/h/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/n/h/d;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/n/h/d;->b(Lg/a/a;)Lc/c/a/n/h/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/h/d;->get()Lc/c/a/n/h/c;

    move-result-object v0

    return-object v0
.end method
