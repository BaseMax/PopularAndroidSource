.class public final Lc/c/a/n/i/i;
.super Ljava/lang/Object;
.source "ReleaseNoteViewModel_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/n/i/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/o/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/o/c;",
            ">;",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/n/i/i;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/n/i/i;->b:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;)Lc/c/a/n/i/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/o/c;",
            ">;",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lc/c/a/n/i/i;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/i/i;

    invoke-direct {v0, p0, p1}, Lc/c/a/n/i/i;-><init>(Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;)Lc/c/a/n/i/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/o/c;",
            ">;",
            "Lg/a/a<",
            "Landroid/content/Context;",
            ">;)",
            "Lc/c/a/n/i/h;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/i/h;

    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/o/c;

    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lc/c/a/n/i/h;-><init>(Lc/c/a/e/d/o/c;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/n/i/h;
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/n/i/i;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/n/i/i;->b:Lg/a/a;

    invoke-static {v0, v1}, Lc/c/a/n/i/i;->b(Lg/a/a;Lg/a/a;)Lc/c/a/n/i/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/i/i;->get()Lc/c/a/n/i/h;

    move-result-object v0

    return-object v0
.end method