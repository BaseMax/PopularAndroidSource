.class public final Lc/c/a/e/d/h/e/a/d;
.super Ljava/lang/Object;
.source "VideoDownloadedRepository_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/d/h/e/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/k;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/n;",
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
            "Lc/c/a/e/d/h/e/a/a/k;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/d/h/e/a/d;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/e/d/h/e/a/d;->b:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;)Lc/c/a/e/d/h/e/a/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/k;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/n;",
            ">;)",
            "Lc/c/a/e/d/h/e/a/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/h/e/a/d;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/h/e/a/d;-><init>(Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;)Lc/c/a/e/d/h/e/a/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/k;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/h/e/a/a/n;",
            ">;)",
            "Lc/c/a/e/d/h/e/a/c;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/d/h/e/a/c;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/e/d/h/e/a/a/k;

    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/e/d/h/e/a/a/n;

    invoke-direct {v0, p0, p1}, Lc/c/a/e/d/h/e/a/c;-><init>(Lc/c/a/e/d/h/e/a/a/k;Lc/c/a/e/d/h/e/a/a/n;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/e/d/h/e/a/c;
    .locals 2

    .line 2
    iget-object v0, p0, Lc/c/a/e/d/h/e/a/d;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/e/d/h/e/a/d;->b:Lg/a/a;

    invoke-static {v0, v1}, Lc/c/a/e/d/h/e/a/d;->b(Lg/a/a;Lg/a/a;)Lc/c/a/e/d/h/e/a/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/d/h/e/a/d;->get()Lc/c/a/e/d/h/e/a/c;

    move-result-object v0

    return-object v0
.end method
