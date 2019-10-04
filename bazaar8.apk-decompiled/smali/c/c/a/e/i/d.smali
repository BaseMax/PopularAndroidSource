.class public final Lc/c/a/e/i/d;
.super Ljava/lang/Object;
.source "PlaceRepository_Factory.java"

# interfaces
.implements Ld/b/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/b/c<",
        "Lc/c/a/e/i/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/e/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/e/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Lc/c/a/e/i/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lg/a/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/a/a<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/e/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/e/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/i/a;",
            ">;",
            "Lg/a/a<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/c/a/e/i/d;->a:Lg/a/a;

    .line 3
    iput-object p2, p0, Lc/c/a/e/i/d;->b:Lg/a/a;

    .line 4
    iput-object p3, p0, Lc/c/a/e/i/d;->c:Lg/a/a;

    .line 5
    iput-object p4, p0, Lc/c/a/e/i/d;->d:Lg/a/a;

    return-void
.end method

.method public static a(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/e/i/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/e/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/e/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/i/a;",
            ">;",
            "Lg/a/a<",
            "Ljava/lang/Long;",
            ">;)",
            "Lc/c/a/e/i/d;"
        }
    .end annotation

    .line 1
    new-instance v0, Lc/c/a/e/i/d;

    invoke-direct {v0, p0, p1, p2, p3}, Lc/c/a/e/i/d;-><init>(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)V

    return-object v0
.end method

.method public static b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/e/i/c;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/a/a<",
            "Lc/c/a/e/e/c;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/e/a;",
            ">;",
            "Lg/a/a<",
            "Lc/c/a/e/i/a;",
            ">;",
            "Lg/a/a<",
            "Ljava/lang/Long;",
            ">;)",
            "Lc/c/a/e/i/c;"
        }
    .end annotation

    .line 1
    new-instance v6, Lc/c/a/e/i/c;

    .line 2
    invoke-interface {p0}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lc/c/a/e/e/c;

    .line 3
    invoke-interface {p1}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lc/c/a/e/e/a;

    .line 4
    invoke-interface {p2}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v3, p0

    check-cast v3, Lc/c/a/e/i/a;

    .line 5
    invoke-interface {p3}, Lg/a/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/c/a/e/i/c;-><init>(Lc/c/a/e/e/c;Lc/c/a/e/e/a;Lc/c/a/e/i/a;J)V

    return-object v6
.end method


# virtual methods
.method public get()Lc/c/a/e/i/c;
    .locals 4

    .line 2
    iget-object v0, p0, Lc/c/a/e/i/d;->a:Lg/a/a;

    iget-object v1, p0, Lc/c/a/e/i/d;->b:Lg/a/a;

    iget-object v2, p0, Lc/c/a/e/i/d;->c:Lg/a/a;

    iget-object v3, p0, Lc/c/a/e/i/d;->d:Lg/a/a;

    invoke-static {v0, v1, v2, v3}, Lc/c/a/e/i/d;->b(Lg/a/a;Lg/a/a;Lg/a/a;Lg/a/a;)Lc/c/a/e/i/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/c/a/e/i/d;->get()Lc/c/a/e/i/c;

    move-result-object v0

    return-object v0
.end method
