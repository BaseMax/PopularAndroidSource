.class public final Lb/w/e;
.super Ljava/lang/Object;
.source "NavAction.java"


# instance fields
.field public final a:I

.field public b:Lb/w/w;

.field public c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lb/w/e;-><init>(ILb/w/w;)V

    return-void
.end method

.method public constructor <init>(ILb/w/w;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lb/w/e;-><init>(ILb/w/w;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILb/w/w;Landroid/os/Bundle;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lb/w/e;->a:I

    .line 5
    iput-object p2, p0, Lb/w/e;->b:Lb/w/w;

    .line 6
    iput-object p3, p0, Lb/w/e;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Landroid/os/Bundle;
    .locals 1

    .line 2
    iget-object v0, p0, Lb/w/e;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lb/w/e;->c:Landroid/os/Bundle;

    return-void
.end method

.method public a(Lb/w/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/w/e;->b:Lb/w/w;

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lb/w/e;->a:I

    return v0
.end method

.method public c()Lb/w/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/e;->b:Lb/w/w;

    return-object v0
.end method
