.class public final Lc/c/a/n/p/B;
.super Ljava/lang/Object;
.source "VerifyOtpViewModel_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/n/p/A;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/d/m/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/m/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/n/p/B;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/n/p/B;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/n/p/B;->c:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/p/B;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/m/d;",
            ">;)",
            "Lc/c/a/n/p/B;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/p/B;

    invoke-direct {v0, p0, p1, p2}, Lc/c/a/n/p/B;-><init>(Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/p/A;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/d/c/b;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/p/I;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/d/m/d;",
            ">;)",
            "Lc/c/a/n/p/A;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/n/p/A;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc/c/a/d/c/b;

    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/p/I;

    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/e/d/m/d;

    invoke-direct {v0, p0, p1, p2}, Lc/c/a/n/p/A;-><init>(Lc/c/a/d/c/b;Lc/c/a/p/I;Lc/c/a/e/d/m/d;)V

    return-object v0
.end method


# virtual methods
.method public get()Lc/c/a/n/p/A;
    .locals 3

    .line 2
    iget-object v0, p0, Lc/c/a/n/p/B;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/n/p/B;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/n/p/B;->c:Lg/a/a;

    invoke-static {v0, v1, v2}, Lc/c/a/n/p/B;->b(Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/n/p/A;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/n/p/B;->get()Lc/c/a/n/p/A;

    move-result-object v0

    return-object v0
.end method
