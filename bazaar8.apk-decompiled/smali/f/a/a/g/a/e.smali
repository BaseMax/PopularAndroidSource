.class public Lf/a/a/g/a/e;
.super Ljava/lang/Object;
.source "AddressPopup.java"

# interfaces
.implements Lf/a/a/g/a/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/g/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/g/a/n;


# direct methods
.method public constructor <init>(Lf/a/a/g/a/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/g/a/e;->a:Lf/a/a/g/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf/a/a/g/a/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/a/a/g/a/e;->a:Lf/a/a/g/a/n;

    invoke-static {v0}, Lf/a/a/g/a/n;->b(Lf/a/a/g/a/n;)Lf/a/a/g/a/o;

    move-result-object v0

    iget-object v1, p0, Lf/a/a/g/a/e;->a:Lf/a/a/g/a/n;

    invoke-static {v1}, Lf/a/a/g/a/n;->a(Lf/a/a/g/a/n;)Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lf/a/a/g/a/o;->a(Lf/a/a/g/a/a;Lir/cafebazaar/inline/ui/inflaters/inputs/AddressInputInflater$AddressType;)V

    return-void
.end method

.method public b(Lf/a/a/g/a/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/g/a/e;->a:Lf/a/a/g/a/n;

    invoke-static {v0}, Lf/a/a/g/a/n;->b(Lf/a/a/g/a/n;)Lf/a/a/g/a/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lf/a/a/g/a/o;->b(Lf/a/a/g/a/a;)V

    return-void
.end method
