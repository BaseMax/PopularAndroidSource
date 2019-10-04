.class public Lb/H/a/b/a/e;
.super Lb/H/a/b/a/c;
.source "NetworkMeteredController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/H/a/b/a/c<",
        "Lb/H/a/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "NetworkMeteredCtrlr"

    .line 1
    invoke-static {v0}, Lb/H/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lb/H/a/b/a/e;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lb/H/a/b/b/h;->a(Landroid/content/Context;)Lb/H/a/b/b/h;

    move-result-object p1

    invoke-virtual {p1}, Lb/H/a/b/b/h;->c()Lb/H/a/b/b/f;

    move-result-object p1

    invoke-direct {p0, p1}, Lb/H/a/b/a/c;-><init>(Lb/H/a/b/b/e;)V

    return-void
.end method


# virtual methods
.method public a(Lb/H/a/b/b;)Z
    .locals 5

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_0

    .line 3
    invoke-static {}, Lb/H/f;->a()Lb/H/f;

    move-result-object v0

    sget-object v3, Lb/H/a/b/a/e;->e:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v4, "Metered network constraint is not supported before API 26, only checking for connected state."

    invoke-virtual {v0, v3, v4, v2}, Lb/H/f;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 4
    invoke-virtual {p1}, Lb/H/a/b/b;->a()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lb/H/a/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lb/H/a/b/b;->b()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public a(Lb/H/a/c/o;)Z
    .locals 1

    .line 1
    iget-object p1, p1, Lb/H/a/c/o;->l:Lb/H/b;

    invoke-virtual {p1}, Lb/H/b;->b()Landroidx/work/NetworkType;

    move-result-object p1

    sget-object v0, Landroidx/work/NetworkType;->METERED:Landroidx/work/NetworkType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lb/H/a/b/b;

    invoke-virtual {p0, p1}, Lb/H/a/b/a/e;->a(Lb/H/a/b/b;)Z

    move-result p1

    return p1
.end method
