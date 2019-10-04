.class public abstract Lir/cafebazaar/inline/ui/inflaters/PageInflater;
.super Ljava/lang/Object;
.source "PageInflater.java"

# interfaces
.implements Lf/a/a/e/b/Y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/e/b/n;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lf/a/a/e/b/Q;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

.field public d:Z

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;->center:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->c:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->d:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->c:Lir/cafebazaar/inline/ui/inflaters/PageInflater$PageGravity;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->e:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/a/a/e/b/n;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->a:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->d:Z

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lf/a/a/e/b/Q;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->b:Ljava/util/List;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lir/cafebazaar/inline/ui/inflaters/PageInflater;->d:Z

    return v0
.end method
