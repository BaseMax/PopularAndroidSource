.class public final Lc/c/a/e/d/b/B;
.super Ljava/lang/Object;
.source "PaymentSharedDataSource_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/b/A;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Landroid/content/Context;",
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
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/b/B;->a:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;)Lc/c/a/e/d/b/B;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lc/c/a/e/d/b/B;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/b/B;

    invoke-direct {v0, p0}, Lc/c/a/e/d/b/B;-><init>(Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;)Lc/c/a/e/d/b/A;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lc/c/a/e/d/b/A;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/b/A;

    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-direct {v0, p0}, Lc/c/a/e/d/b/A;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/b/A;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/b/B;->a:Lg/a/a;

    invoke-static {v0}, Lc/c/a/e/d/b/B;->b(Lg/a/a;)Lc/c/a/e/d/b/A;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/b/B;->get()Lc/c/a/e/d/b/A;

    move-result-object v0

    return-object v0
.end method
