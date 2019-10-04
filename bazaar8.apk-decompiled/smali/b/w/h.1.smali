.class public final Lb/w/h;
.super Ljava/lang/Object;
.source "NavBackStackEntry.java"

# interfaces
.implements Lb/r/I;


# instance fields
.field public final a:Lb/w/o;

.field public final b:Landroid/os/Bundle;

.field public final c:Ljava/util/UUID;

.field public d:Lb/w/l;


# direct methods
.method public constructor <init>(Lb/w/o;Landroid/os/Bundle;Lb/w/l;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lb/w/h;-><init>(Ljava/util/UUID;Lb/w/o;Landroid/os/Bundle;Lb/w/l;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Lb/w/o;Landroid/os/Bundle;Lb/w/l;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lb/w/h;->c:Ljava/util/UUID;

    .line 4
    iput-object p2, p0, Lb/w/h;->a:Lb/w/o;

    .line 5
    iput-object p3, p0, Lb/w/h;->b:Landroid/os/Bundle;

    .line 6
    iput-object p4, p0, Lb/w/h;->d:Lb/w/l;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/h;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public a(Lb/w/l;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lb/w/h;->d:Lb/w/l;

    return-void
.end method

.method public b()Lb/w/o;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/h;->a:Lb/w/o;

    return-object v0
.end method

.method public e()Lb/r/H;
    .locals 2

    .line 1
    iget-object v0, p0, Lb/w/h;->d:Lb/w/l;

    iget-object v1, p0, Lb/w/h;->c:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Lb/w/l;->b(Ljava/util/UUID;)Lb/r/H;

    move-result-object v0

    return-object v0
.end method
